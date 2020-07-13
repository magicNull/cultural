<!doctype html>
<html lang="zh">
<head>
  <meta charset="UTF-8">
  <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <meta name="csrf-token" content="{{csrf_token()}}">
  <title>文化遗产管理页</title>
  <link href="/css/app.css" rel="stylesheet"/>
  <link rel="stylesheet" href="{{asset('css')}}/admin.css">
  <script src="/js/bootstrapApp.js"></script>
</head>
<body>
{{--{{session()->get('userName')}}--}}
@php
function testClass($name,$input,$code='func'){
  if($code=='class'){return $name==$input?'selectCss':'';}
return $name==$input?'show':'';
}
@endphp
<div id="box">
  <header class="bg-primary">
    <div class="row">
      <div class="col-xl-2 col-md-3 col-lg-2 col-sm-3">
        <a class="navbar-brand" href="/">Index</a>
      </div>
      <div class="col-xl-10 col-md-9 col-lg-10 col-sm-9">
        <nav class="navbar navbar-dark bg-primary">
          <form class="form-inline" action="/search">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name="search">
            <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
          </form>
          <div class="justify-content-end go">
            @if (Session('uImg'))
              <img src="{{session('uImg')}}" alt="头像">
              @else
              <img src="{{asset('img/logo3.png')}}" alt="头像">
            @endif

          </div>
          <ul class="userSelect" style="z-index:1;">
          <div></div>
            <li>
              <div class="user">
                <div>
                  @if (Session('uImg'))
                    <img src="{{session('uImg')}}" alt="头像">
                  @else
                    <img src="{{asset('img/logo3.png')}}" alt="头像">
                  @endif
                </div>
                <div>
                  <div>{{Session('userName')}}</div>
                  <!-- <div><span></span>管理员</div> -->
                </div>
              </div>
            </li>
            <li>
              <a href="/userInfo/{{Session('uid')}}">
                <svg class="icon" aria-hidden="true">
                  <use xlink:href="#icon-icon1"></use>
                </svg>
                个人信息
              </a>
            </li>
            <li>
              <a href="/admin/loginOut">
                <svg class="icon" aria-hidden="true">
                  <use xlink:href="#icon-zhuxiaologout10"></use>
                </svg>
                注销</a>
            </li>
          </ul>
        </nav>
      </div>
    </div>
  </header>
  <div class="row">
    <div class="left col-xl-2 col-md-3 col-lg-2 col-sm-3">
      <div class="user">
        <div>           @if (Session('uImg'))
            <img src="{{session('uImg')}}" alt="头像">
          @else
            <img src="{{asset('img/logo3.png')}}" alt="头像">
          @endif</div>
        <div>
          <div>{{Session('userName')}}</div>
          <div>管理员</div>
        </div>
      </div>
      <div class="accordion" id="accordionExample">
        <div class="card">
          <div class="card-header" id="headingOne">
            <h2 class="mb-0">
              <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne"
                      aria-expanded="true" aria-controls="collapseOne">
                用户管理
              </button>
            </h2>
          </div>

          <div id="collapseOne" class="collapse {{testClass($__env->yieldContent('test'),'users')}}" aria-labelledby="headingOne" data-parent="#accordionExample">
            <div class="card-body">
              <ul class="list-group list-group-flush">
                <li class="list-group-item {{testClass($__env->yieldContent('selectClass'),'users','class')}}"><a href="/admin/users">查看用户</a></li>
                <li class="list-group-item {{testClass($__env->yieldContent('selectClass'),'userProhibir','class')}}"><a href="/admin/userProhibir">封禁用户</a></li>
              </ul>
            </div>
          </div>
        </div>
        <div class="card">
          <div class="card-header" id="headingTwo">
            <h2 class="mb-0">
              <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo"
                      aria-expanded="false" aria-controls="collapseTwo">
                新闻管理
              </button>
            </h2>
          </div>
          <div id="collapseTwo" class="collapse {{testClass($__env->yieldContent('test'),'news')}}" aria-labelledby="headingTwo" data-parent="#accordionExample">
            <div class="card-body">
              <ul class="list-group list-group-flush">
                <li class="list-group-item {{testClass($__env->yieldContent('selectClass'),'new','class')}}"><a href="/admin/new">新闻发布</a></li>
                <li class="list-group-item {{testClass($__env->yieldContent('selectClass'),'newSelect','class')}}"><a href="/admin/newSelect">查看新闻</a></li>
                <li class="list-group-item {{testClass($__env->yieldContent('selectClass'),'newDelete','class')}}"><a href="/admin/newDelete">新闻回收站</a></li>
              </ul>
            </div>
          </div>
        </div>
        <div class="card">
          <div class="card-header" id="headingThree">
            <h2 class="mb-0">
              <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree"
                      aria-expanded="false" aria-controls="collapseThree">
                文化遗产
              </button>
            </h2>
          </div>
          <div id="collapseThree" class="collapse {{testClass($__env->yieldContent('test'),'culture')}}" aria-labelledby="headingThree" data-parent="#accordionExample">
            <div class="card-body">
              <ul class="list-group list-group-flush">
                <li class="list-group-item {{testClass($__env->yieldContent('selectClass'),'culture','class')}}"><a href="/admin/culture">文化遗产发布</a></li>
                <li class="list-group-item {{testClass($__env->yieldContent('selectClass'),'cultureSelect','class')}}"><a href="/admin/cultureSelect">查看文化遗产</a></li>
                <li class="list-group-item {{testClass($__env->yieldContent('selectClass'),'cultureDelete','class')}}"><a href="/admin/cultureDelete">文化遗产回收站</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="right col-xl-10 col-md-9 col-lg-10 col-sm-9">
      <div>@yield('admin')</div>
    </div>
  </div>

</div>
<script src="{{asset('js/iconfont.js')}}"></script>
<script src="{{asset('js/admin/admin.js')}}"></script>
</body>
</html>
