@extends('admin')
@section('test','users')
@section('selectClass','userProhibir')
@section('admin')
  <div>
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb">
        <li class="text-black-50 mr-3">当前位置:</li>
        <li class="breadcrumb-item"><a href="#">用户管理</a></li>
        <li class="breadcrumb-item active" aria-current="page">封禁用户</li>
      </ol>
    </nav>
    <table class="table table-striped">
      <thead>
      <tr>
        <th scope="col"><a href="/admin/users/id">#</a></th>
        <th scope="col"><a href="/admin/users/name">用户名</a></th>
        <th scope="col"><a href="/admin/users/email">邮箱</a></th>
        <th scope="col"><a href="/admin/users/power">用户权限</a></th>
        <th scope="col"><a href="/admin/users/created_at">创建时间</a></th>
        <th scope="col">操作</th>
      </tr>
      </thead>
      <tbody>
      @foreach($data as $item)
        <tr>
          <th scope="row">
            @php
            preg_match_all("/(?<=page=)\d+/i",$_SERVER["QUERY_STRING"],$matches); 

if($matches[0]){
echo $loop->iteration + (intval($matches[0][0])-1) * 10;
}else{
  echo $loop->iteration;
}

            
            @endphp
          </th>
          <td>{{$item->name}}</td>
          <td>{{$item->email}}</td>
          <td>
            @if ($item->power != 1)
              <strong>管理员</strong>
            @else
              <i>普通用户</i>
            @endif
          </td>
          <td>{{$item->created_at}}</td>
          <td>
            <div class="btn-group" role="group" aria-label="Basic example">
              @if ($item->power != 1)
                <button type="button" class="btn btn-info" disabled>权限控制</button>
              @else
                <a href="/admin/USets/power/{{$item->id}}" class="btn btn-info">权限控制</a>
              @endif
{{--              <button type="button" class="btn btn-success">用户信息</button>--}}
                <a href="/userInfo/{{$item->id}}" class="btn btn-success">用户信息</a>

              @if ($item->power != 1)
                <button type="button" class="btn btn-danger" disabled>恢复用户</button>
              @else
                <a class="btn btn-danger" href="/admin/USets/status/{{$item->id}}/1" onclick="return confirm('是否恢复该用户')">恢复用户</a>
              @endif
            </div>
          </td>
        </tr>
      @endforeach
      </tbody>
    </table>
    {{$data->links()}}
    @if(session('message'))
      <div class="alert alert-success" role="alert">
        {{session('message')}}
      </div>
    @endif
  </div>
@endsection
