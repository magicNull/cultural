<?php

namespace App\Http\Controllers\Service;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\News;
use MongoDB\Driver\Session;

class NewController extends Controller
{
  //new
  public function add(Request $request)
  {
    //添加
    if ($request->isMethod('post')) {
      $model = new News();
      /*   create $fillable * ? :(
          $model->email='120@qq.com';
          $model->uid='1';
          $model->content='120@qq.com';
          $model->time='2012-10-20';
          $model->dirs='120@qq.com';
          $a=$model->save();*/

      $data = $request->all();
      $data['uid'] = session('uid');
      $save = $model->create($data);
//    $data=['email'=>'120@qq.com','uid'=>'1','content'=>'123','time'=>'11','dirs'=>'sdf'];
//    $model->create($data);
      $save['error'] = 0;
      return response()->json($save);
    } else {
      return view('admin.new');
    }

  }

  public function select(Request $request)
  {
    //查询
    //默认查询所有
    $data = News::where('uid', Session('uid'))->where('deletes',1)->orderBy('id', 'desc')->paginate(4);
    //获取图片
    return view('admin.newSelect', ['data' => $data]);//->with('data',$data)
  }

  public function deletes(Request $request, $id = 0,$deleteNum=0)
  {
    $i = News::find($id);
//    dd(!empty($i));
    $delete = News::where('id', $id)->value('deletes');
    $uid = News::where('id', $id)->value('uid');
    $sUid = Session('uid');
//    dd($uid.'+'.$sUid);
//dd($uid .'+'. $sUid);
    if ($uid == $sUid) {
      if (!empty($i)) {//简易判断 "&&$delete == 1移除判断是否删除"
        $i->deletes = $deleteNum;
        $i->save();
        if($deleteNum==0){
          return redirect('/admin/newSelect')->with('message', '成功删除');
        }else{
          return redirect('admin/newDelete')->with('message', '恢复成功');
        }
//        dd($i);
      } else {
        return redirect('/admin/newSelect')->with('message', '似乎没有这条数据,请稍后重试');
      }
    } else {
      return redirect('/admin/newSelect')->with('message', '您没有操作权限');
    }


  }
  public function ViewDelete(){
    $data = News::where('uid', Session('uid'))->where('deletes',0)->orderBy('id', 'desc')->paginate(4);
    //获取图片
    return view('admin.newDelete', ['data' => $data]);//->with('data',$data)
  }
  public function Details(Request $request,$id){
    $data = News::find($id);
    $uid=$data->uid;
//    dd($uid);
    if($uid==Session('uid')){
      return view('admin.newDetails', ['data' => $data]);
    }else{
      return redirect('admin/newDelete')->with('message','您无权如此');
    }

  }
  public function change(Request $request){
    $date=$request->all();
    $id=$request->get('id');
    $old=News::find($id);
    $old->update($date);
    $save['error']=0;
    return response()->json($save);
  }
}
