<?php

namespace App\Http\Controllers\Service;

use MongoDB\Driver\Session;
use Validator;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\FakerUser;
use Illuminate\Validation\Rule;
use App\Models\UserInfo;
use Cookie;
use App\Models\Culture;
use App\Models\News;
use App\Models\Reset;
use Mail;
use Hash;
use Carbon\Carbon;

class ServiceController extends Controller
{
  //
  public function login(Request $request)
  {
    $model = new FakerUser();
    $email = $request->get('email');
    $password = $request->get('password');
    /*    $this->validate($request,[
          'email'=>'required|email',
          'password'=>'required|min:10',
          'code'=>'required|captcha'
        ]);*/
    $messages = [
      'email.required' => 'exists:',
    ];
    $validator = Validator::make($request->all(), [
//      'email' => 'required|email',
      'email' => 'required|email|exists:faker_users,email',
//      'password' => 'required|min:6|max:12',
      'password' => [
        'required',
        'min:6',
        'max:12'],
      'code' => 'required|captcha'
    ]);

    if ($validator->fails()) {
      return redirect()->back()->withErrors($validator, 'login');
    }

    $flag = $model->where('email', $email)->where('password', $password)->exists();
    if ($flag) {
      session(['userName' => $model->where('email', $email)->value('email'),'userPower'=>$model->where('email', $email)->value('power'),'uid'=>$model->where('email', $email)->value('id'),'uImg'=>UserInfo::where('email',$email)->value('portrait')]);
      Cookie::queue('email', $email, $minutes = 99999999, $path = null, $domain = null, $secure = false, $httpOnly = false);
      return redirect('/');
    } else {
      $test=array('test'=>'邮箱或密码错误');
      return redirect()->back()->withErrors($test, 'test');
    }

//
//    dd($a);
  }

  public function register(Request $request)
  {
    $model = new FakerUser();
    $messages = [
      'email.required' => 'exists:',
    ];
    $validator = Validator::make($request->all(), [
//      'email' => 'required|email',
      'email' => 'required|email|unique:faker_users,email',
//      'password' => 'required|min:6|max:12',
      'password' => [
        'required',
        'min:6',
        'max:12','confirmed'],
      'password_confirmation'=>'required|min:6|max:12',
      'code' => 'required|captcha'
    ]);

    if ($validator->fails()) {
      return redirect()->back()->withErrors($validator, 'login');
    }
//    $flag = $model->where('email', $email)->where('password', $password)->exists();
//    if ($flag) {
//      return view('index');
//    } else {
//      return redirect()->back()->withErrors($validator, 'login');
//    }

    FakerUser::create(['email'=>$request->get('email'),'password'=>$request->get('password'),'power'=>1,'status'=>1]);
    $id=FakerUser::where('email',$request->get('email'))->value('id');
    UserInfo::create(['email'=>$request->get('email'),'power'=>1,'status'=>1,'uid'=>$id]);
    Mail::send('emails.welcome', ['user'=>$request->get('email')], function ($message) use ($request){
      // $message->from('john@johndoe.com', 'John Doe');
      $message->to($request->get('email'), $request->get('email'));
  
      $message->subject('whilec com to you');
  });

    return redirect('admin/login')->with('message', '创建账号成功并向您的邮箱进行投递');
//    dd($request->get('email'));
  }
  public function loginOut(){
    session()->flush();
    return redirect('admin/login')->with('message', '成功退出');
  }

  //搜索类
  public function tool($val){
    $user=array();
    array_push($user,json_decode(FakerUser::where('name','like',"%{$val}%")->get()));
    $new=array();
    array_push($new,json_decode(News::where('Abbreviation','like','%'.$val.'%')->get()));
    

    $culture=array();
    array_push($culture,json_decode(Culture::where('intro','like','%'.$val.'%')->get()));

    // array_push($arr,json_decode(News::where('Abbreviation','like','%'.$val.'%')->get()));
    return array(
      'new'=>$new,
      'user'=> $user,
      'culture' => $culture
    );
  }

  public function search(Request $request){
    $data=$request->get('search');
    // if(empty($data)){
    //   // dd('kong');
    //       return view('admin.search',['data'=>$this->tool($data)]);

    // }
    $val = explode(" ",$data);

    //搜索新闻表

    // dd(Culture::where('intro','like','%'.'入你'.'%')->get());
    // dd($this->tool($data));
    // foreach($val as $item){

    //   echo $item;

    // }


    return view('admin.search',['data'=>$this->tool($data)]);
  }
//重置密码
  public function reset(){
      return view('reset.reset');
  }
  public function resetFunc(Request $request){
    $code='hello';//干扰码
    $reset=3;//过期天数
    $messages = [
      'email.required' => 'exists:',
    ];
    $validator = Validator::make($request->all(), [
      'email' => 'required|email|exists:faker_users,email',
      'code' => 'required|captcha'
    ]);

    if ($validator->fails()) {
      return redirect()->back()->withErrors($validator, 'login');
    }
    $token=base64_encode(Hash::make($request->get('email').$code));
    Reset::create(['email'=>$request->get('email'),'token'=>$token,'expire'=>(Carbon::now()->addDay($reset)->toDateTimeString())]);
    $url='http://iammagic.cf/service/reset/'.$token;
    // dd(base64_encode(Hash::make($request->get('email').$code)));
    // $time=Carbon::now()->addDay(3)->toDateTimeString();
    // $time=Carbon::now()->addDay($reset);
    // $time2=Carbon::now();
    Mail::send('emails.reset', ['user'=>$request->get('email'),'url'=>$url], function ($message) use ($request){
      // $message->from('john@johndoe.com', 'John Doe');
      $message->to($request->get('email'), $request->get('email'));
  
      $message->subject('［文化遗产网站］：重置密码');
  });
  return redirect('admin/login')->with('message', '重置密码邮件已发送');
    }
    public function resetSuccess(Request $request,$token){
      if(!Reset::where('token',$token)->exists()){
        return redirect('admin/login')->with('message', '非法访问');
      }
      if((Carbon::now()->diffInDays(Carbon::parse(Reset::where('token',$token)->value('expire')),false))<0){
        return redirect('admin/login')->with('message', '已过期，请重新重置密码');
      }

      return view('reset.success')->with('token',$token);
    }
    public function resetGo(Request $request){
      $validator = Validator::make($request->all(), [
              'password' => [
                'required',
                'min:6',
                'max:12','confirmed'],
              'password_confirmation'=>'required|min:6|max:12',
              'code' => 'required|captcha'
            ]);
        
            if ($validator->fails()) {
              return redirect()->back()->withErrors($validator, 'login');
            }
      $email=Reset::where('token',$request->get('token'))->value('email');
      $url='http://iammagic.cf/admin/login';
      if( !FakerUser::where('email',$email)->update(['password'=>$request->get('password')])){
        return redirect('admin/login')->with('message', '修改失败');
      }
      Reset::where('token',$request->get('token'))->update(['token'=>'gg']);
      Mail::send('emails.gg', ['user'=>$email,'url'=>$url], function ($message) use ($email){
        // $message->from('john@johndoe.com', 'John Doe');
        $message->to($email, $email);
    
        $message->subject('［文化遗产网站］：重置密码成功');
    });
      return redirect('admin/login')->with('message', '修改成功');
    }
    public function webSearch($val){
      $new=array();
    array_push($new,json_decode(News::where('Abbreviation','like','%'.$val.'%')->get()));
    

    $culture=array();
    array_push($culture,json_decode(Culture::where('intro','like','%'.$val.'%')->get()));
    
    return response()->json(['new'=>$new,'culture'=>$culture]);
    }
}
