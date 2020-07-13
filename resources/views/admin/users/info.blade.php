@extends('admin')
@section('test','users')
@section('admin')
  <div>
    <link rel="stylesheet" href="{{asset('css/admin/info.css')}}">
    <form id="form">
      <div class="info">
        <div class="info-box rounded">
          <div class="img">
            <img src="
          @if ($data->portrait)
            {{asset($data->portrait)}}
            @else
            {{asset('img/logo3.png')}}
            @endif
              " alt="">
          </div>
          <div class="info-content">
            <div class="d-flex flex-row pl-2 pr-2 mt-2">
              <div class="mr-3">身份
                @if($data->power !=0 )
                  <strong class="text-primary"> 普通用户</strong>
                @else
                  <strong class="text-success"> 管理员</strong>
                @endif
              </div>
              <div>状态
                <span>
                @if($data->status !=0 )
                    <strong class="text-success">正常</strong>
                  @else
                    <strong class="text-danger">封禁中</strong>
                  @endif
              </span>
              </div>
            </div>
            <div class="d-flex flex-row">
              <div class="input-group m-2">
                <div class="input-group-prepend">
                  <span class="input-group-text bg-info" id="basic-addon1">用户名:</span>
                </div>
                <input type="text" class="form-control" placeholder="Username" aria-label="Username"
                       aria-describedby="basic-addon1" value="{{$data->name}}" id="name" required>
              </div>
              <div class="input-group m-2">
                <div class="input-group-prepend">
                  <span class="input-group-text bg-info" id="basic-addon2">邮箱:</span>
                </div>
                <input type="email" class="form-control" placeholder="Username" aria-label="Username"
                       aria-describedby="basic-addon2" value="{{$data->email}}" readonly id="email">
              </div>
            </div>
            <div class="pl-2 pr-2 mt-2">
              <div>性别：</div>
              <input type="hidden" name="id" value="{{$data->id}}">
              <div class="form-check form-check-inline">
                @if($data->gender==0)
                  <input class="form-check-input" type="radio" name="gender" id="inlineRadio1" value="0"
                         checked>
                @else
                  <input class="form-check-input" type="radio" name="gender" id="inlineRadio1" value="0">
                @endif

                <label class="form-check-label" for="inlineRadio1">男</label>
              </div>
              <div class="form-check form-check-inline">

                @if($data->gender==1)
                  <input class="form-check-input" type="radio" name="gender" id="inlineRadio2" value="1"
                         checked>
                @else
                  <input class="form-check-input" type="radio" name="gender" id="inlineRadio2" value="1">
                @endif
                <label class="form-check-label" for="inlineRadio2">女</label>
              </div>
            </div>
            <div class="pl-2 pr-2 mt-2">
              <div class="input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text bg-info">简介</span>
                </div>
                <textarea class="form-control" aria-label="With textarea" rows="3" required id="text">{{$data->introduction}}</textarea>
              </div>
            </div>
            @if (Session('userName')==$data->email)
              <div class="m-1">
                <label for="file" class="mr-3">上传头像</label>
                <input type="file" name="file" id="file" accept="image/png,image/jpg,image/gif,image/JPEG">
                <div class="imgH">

                  <div>  旧<img src="@if ($data->portrait)
                    {{asset($data->portrait)}}
                    @else
                    {{asset('img/logo3.png')}}
                    @endif
                      " alt=""></div>
                  <div>=></div>
                  <div>新<img src="{{asset('img/logo3.png')}}" alt=""></div>
                </div>
              </div>
              <div class="m-2">
                <button type="button" class="btn btn-info" id="userInfo">修改信息</button>
              </div>
              @else
              <div class="m-2">
                <button type="button" class="btn btn-info" disabled>修改信息</button>
              </div>
            @endif
            <div id="data"></div>
          </div>
        </div>

      </div>
    </form>
  </div>
  <script src="{{asset('js/admin/news.js')}}"></script>
@endsection
