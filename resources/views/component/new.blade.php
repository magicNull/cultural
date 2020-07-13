<div style="overflow-y: scroll; height: calc(100vh - 117px)" id="newSelect">
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
                <a href="/admin/newDetails/{{$item->id}}" class="btn btn-primary">查看</a>
              </div>
            </div>
          </li>
      @endforeach
      </ul>
    </div>
    
    </div>
  @else
    <div class="alert alert-primary" role="alert">
      <a href="/admin/new">好像还没记录!!!</a>
    </div>
@endif