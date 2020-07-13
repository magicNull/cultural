<?php

namespace App\Http\Controllers\Service;

use App\Models\News;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\FakerUser;
use App\Models\UserInfo;
use Intervention\Image\Image;
use File;

class UserController extends Controller
{
    //用户管理
  public function users(Request $request,$val='id'){
    $data = FakerUser::where('status',1)->orderBy($val, 'asc')->paginate(10);
    return view('admin.users.users', ['data' => $data]);
  }

  //用户权限设置
  public function sets(Request $request,$val,$id,$num=0){//num状态码
    $test=FakerUser::where('email',Session('userName'))->value('power');
    if($test!=0){
      return redirect('/')->with('message','你没有权限');
    }else{
      $data=FakerUser::find($id);
      $u=UserInfo::find($id);
      $data->$val=$num;
      $u->$val=$num;
      $data->save();
      $u->save();
//      dd($test);
      if($num == 0){
        return redirect('/admin/users')->with('message','操作成功');
      }else{
        return redirect('/admin/userProhibir')->with('message','操作成功');
      }

    }

  }
  public function prohibir(Request $request,$val='id'){
    $data = FakerUser::where('status',0)->orderBy($val, 'asc')->paginate(10);
    return view('admin.users.Prohibir',['data' => $data]);
  }
  public function info(Request $request,$id){
      $data=UserInfo::find($id);
      return view('admin.users.info',['data'=>$data]);
  }

  public function changeInfo(Request $request){
    $users=FakerUser::where('email',$request->get('email'))->first();
    $old=UserInfo::where('email',$request->get('email'))->first();
    $data=$old->update(['name'=>$request->get('name'),'introduction'=>$request->get('introduction'),'gender'=>$request->get('gender')]);
    $users->name=$request->get('name');
    $users->save();
    $save['error']=0;
    return response()->json($save);
  }
//用户头像
  public function changeInfoImg(Request $request){
    $data=$request->file('file');
    $email=$request->get('email');
    $old=UserInfo::where('email',$email);
    $mimeType=['image/png','image/jpeg','image/jpg','image/gif'];
    if($request->hasFile('file') && $request->file('file')->isValid()){
      if(!in_array($data->getMimeType(),$mimeType)){
        return response()->json('文件类型错误');
      }else{
        $dir='/uploads/portrait/'.date('yy/m/d');
        $fileName=time()+rand(1,999).'.'.$data->getClientOriginalExtension();
        $path = public_path().$dir;
        File::isDirectory($path) or File::makeDirectory($path, 0777, true, true);
        $request->file('file')->move('.'.$dir, $fileName);
        $old->update(['portrait'=>$dir.'/'.$fileName]);
        Session(['uImg'=>$dir.'/'.$fileName]);
        return response()->json('更换头像成功');
      }
    }else{
      return response()->json('文件上传失败');
    }
//    dd($email);
  }

}
