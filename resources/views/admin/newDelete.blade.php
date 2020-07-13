@extends('admin')
@section('test',"news")
@section('selectClass','newDelete')
@section('admin')
  <div style="overflow: scroll; height: 900px" id="newSelect">
    <link rel="stylesheet" href="{{asset('css/admin/newSelect.css')}}">
    <div>
      @if(count($data))
      @if(Session('message'))
        {!! '<div class="alert alert-danger" role="alert">'.session('message').'</div>' !!}
      @endif
        <ul class="group">
        @foreach($data as $item)
          <li class="item d-flex flex-row shadow-sm p-2 mb-3 bg-white rounded border border-info rounded">
            <img class="mr-3" src="@php
              $str=$item->content;
              preg_match_all('/<img.*?src="(.*?)".*?>/is',$str,$array);
              if(count($array['1'])>0){
                echo$array['1'][0];
              }else{
                echo '/img/logo3.png';
              }
            @endphp" alt="gg img">
            <div class="item-content">
              <h5 class="item-title">{!! $item->title !!}</h5>
              {{str_limit($item->Abbreviation, 200, '....')}}
              <div>
                <span>作者:{{$item->email}} </span>
                <span> 时间:{{$item->time}} </span>
                <span> 分类:{{$item->dirs}} </span>
              </div>
              <div>
                <a href="/admin/newDetails/{{$item->id}}" class="btn btn-primary">预览</a>
                <a href="/new/delete/{{$item->id}}/1" class="btn btn-success" onclick="return confirm('是否恢复')">恢复文章</a>
                <a href="/new/delete/{{$item->id}}/2" class="btn btn-danger" onclick="return confirm('是否永久删除这条数据')">永久删除</a>
              </div>
            </div>
          </li>
        @endforeach
      </ul>
    </div>
    <div class="page">{{$data->links()}}</div>
  </div>
  @else
    <div class="alert alert-primary" role="alert">
      好像没有记录.....
    </div>
  @endif


@endsection
