<?php

namespace App\Http\Controllers\Service;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Culture;
use File;

class CultureController extends Controller
{
  //
  public function add(Request $request)
  {
    $data = $request->all();
    $data['uid'] = Session('uid');
    $save = Culture::create($data);
    $save['error'] = 0;
    return response()->json($save);
  }

  public function add2(Request $request)
  {
    $data = $request->file('file');
    $uid = Session('uid');
//文件
    $dir = '/uploads/VideoAudio/' . date('yy/m/d');
    $fileName = time() + rand(1, 999) . '.' . $data->getClientOriginalExtension();
    $path = public_path() . $dir;
    File::isDirectory($path) or File::makeDirectory($path, 0777, true, true);
    $request->file('file')->move('.' . $dir, $fileName);

    $old = Culture::create(['uid' => $uid, 'email' => $request->get('email'), 'title' => $request->get('title'), 'intro' => $request->get('intro'), 'types' => $request->get('types'), 'form' => $request->get('form'), 'portrait' => $dir . '/' . $fileName]);
    $old['error'] = 0;
    dd($old);
  }

  public function select(Request $request)
  {
    $data = Culture::where('status', 1)->paginate(3);
//    $data=1;
    return view('admin.culture.select', ['data' => $data]);
  }

  public function delete(Request $request, $id = 0,$deleteNum=0){
    $i = Culture::find($id);
    $delete = Culture::where('id', $id)->value('status');
    $uid = Culture::where('id', $id)->value('uid');
    $sUid = Session('uid');
    if ($uid == $sUid) {
      if (!empty($i)) {//简易判断 "移除&&$delete == 1判断是否删除"
        $i->status = $deleteNum;
        $i->save();
        if($deleteNum==0){
          return redirect('/admin/cultureSelect')->with('message', '成功删除');
        }else{
          return redirect('admin/cultureDelete')->with('message', '恢复成功');
        }
//        dd($i);
      } else {
        return redirect('/admin/cultureSelect')->with('message', '似乎没有这条数据,请稍后重试');
      }
    } else {
      return redirect('/admin/cultureSelect')->with('message', '您没有操作权限');
    }

  }

  //view delete
  public function deletes(Request $request)
  {
    $data = Culture::where('status', 0)->paginate(3);
//    $data=1;
    return view('admin.culture.delete', ['data' => $data]);
  }

  public function info(Request $request,$id=0){
    $data=Culture::find($id);
    return view('admin.culture.info',['data'=>$data]);
  }
  public function change(Request $request){
    $date=$request->all();
    $id=$request->get('id');
    $old=Culture::find($id);
    $old->update($date);
    $save['error']=0;
    return response()->json($save);
  }
}
