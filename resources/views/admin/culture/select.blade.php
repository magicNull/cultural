@extends('admin')
@section('test',"culture")
@section('selectClass','cultureSelect')
@section('admin')
<div style="overflow: scroll; height: 900px" id="newSelect">
  <link rel="stylesheet" href="{{asset('css/admin/newSelect.css')}}">
  @if(count($data))
  <div>
    @if(Session('message'))
    {!! '<div class="alert alert-danger" role="alert">'.session('message').'</div>' !!}
    @endif
    <ul class="group">
      @foreach($data as $item)
      <li class="item d-flex flex-row shadow-sm p-2 mb-3 bg-white rounded border border-info rounded">
        <img class="mr-3" src="@php
              $str=$item->introduction;
              preg_match_all('/<img.*?src="(.*?)".*?>/is',$str,$array);
        if(count($array['1'])>0){
        echo $array['1'][0];
        }else{
        echo '/img/logo3.png';
        }
        @endphp" alt="gg img">
        <div class="item-content">
          <h5 class="item-title">{!! $item->title !!}</h5>
          <strong>简介：</strong>@if ($item->intro)
            {{str_limit($item->intro, 200, '....')}}
            @else
            暂无介绍
          @endif

          <div>
            <span>作者:{{$item->email}} </span>
            <span> 时间:{{$item->created_at}} </span>
            <span> 分类:{{$item->types}} </span>
            <span> 遗产分类:{{$item->form}} </span>
          </div>
          <div>
            <a href="/culture/info/{{$item->id}}" class="btn btn-primary">修改</a>
            <a href="/culture/delete/{{$item->id}}" class="btn btn-danger" onclick="return confirm('是否删除这条数据')">删除</a>
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
  <a href="/admin/culture">好像还没记录，快点击我发布你的文章吧!!!</a>
</div>
@endif
@endsection
