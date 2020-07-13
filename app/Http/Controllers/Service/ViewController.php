<?php

namespace App\Http\Controllers\Service;

use App\Models\FakerUser;
use App\Models\UserInfo;
use Illuminate\Http\Request;
use App\Models\News;
use App\Http\Controllers\Controller;
use Intervention\Image\Image;
use File;
use App\Models\Culture;

class ViewController extends Controller
{
  //前端操作
  public function userInfo(Request $request, $email)
  {

    if ($request->method() == "GET") {
      $data = UserInfo::where('email', $email)->first();
      return response()->json($data);
    } else {
      $data = UserInfo::where('email', $email)->first();
      $file = $request->file('file');
      $old = FakerUser::where('email', $email)->first();
      $old->update(['name' => $request->get('name')]);
      $data->update($request->all());
      $mimeType = ['image/png', 'image/jpeg', 'image/jpg', 'image/gif'];
      if ($request->hasFile('file') && $request->file('file')->isValid()) {
        if (!in_array($file->getMimeType(), $mimeType)) {
          return response()->json('文件类型错误');
        } else {
          $dir = '/uploads/portrait/' . date('yy/m/d');
          $fileName = time() + rand(1, 999) . '.' . $file->getClientOriginalExtension();
          $path = public_path() . $dir;
          File::isDirectory($path) or File::makeDirectory($path, 0777, true, true);
          $request->file('file')->move('.' . $dir, $fileName);
          $data->update(['portrait' => $dir . '/' . $fileName]);
        }
//      $save=$data->update($request->all());

      }
      return response()->json('成功');
    }
  }

public function newInfoAll(Request $request){
  $data=News::all();
  return response()->json($data);                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
}

//展示标题的 tables表 val展示多少条 分类types
  public function newInfo(Request $request, $tables, $val, $types = 0)
  {

    if ($tables == 'News') {
      $data = News::where('deletes', 1)->orderby('id', 'desc')->paginate($val);

      if ($types == 'today') {
        $data = News::where('deletes', 1)->where('dirs','今日要闻')->orderby('id', 'desc')->paginate($val);
        return response()->json($data);
      }elseif ($types=='ht'){
        $data = News::where('deletes', 1)->where('dirs','话题')->orderby('id', 'desc')->paginate($val);
        return response()->json($data);
      }elseif ($types='whxw'){
        $data = News::where('deletes', 1)->where('dirs','文化新闻')->orderby('id', 'desc')->paginate($val);
        return response()->json($data);
      }elseif ($types=='yw'){
        $data = News::where('deletes', 1)->where('dirs','要闻')->orderby('id', 'desc')->paginate($val);
        return response()->json($data);
      }
      return response()->json($data);

    }elseif ($tables=='Culture'){
      $data = Culture::where('status', 1)->orderby('id', 'desc')->paginate($val);
      if($types=='zg'){
        $data = Culture::where('status', 1)->where('types','展柜')->orderby('id', 'desc')->paginate($val);
      }elseif ($types=='video') {
        $data = Culture::where('status', 1)->where('types','视频')->orderby('id', 'desc')->paginate($val);
      }elseif ($types=='audio') {
        $data = Culture::where('status', 1)->where('types','音频')->orderby('id', 'desc')->paginate($val);
      }elseif ($tables='image'){
        $data = Culture::where('status', 1)->where('types','图集')->orderby('id', 'desc')->paginate($val);
      }
      return response()->json($data);
    }
  }


  public function articles(Request $request,$tables,$id){
      if($tables=="news"||$tables=="News"){
        $data=News::find($id);
      }elseif($tables=="video"||$tables=="video"){
        $data=Culture::find($id);
      }
        return response()->json($data);
    // dd($request->all());
  }


}
