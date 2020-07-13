@extends('admin')
@section('admin')
      <div class="list-group d-flex flex-row mt-2" id="list-tab" role="tablist">
        <a class="list-group-item list-group-item-action active" id="list-home-list" data-toggle="list" href="#list-home" role="tab" aria-controls="home">新闻</a>
        <a class="list-group-item list-group-item-action" id="list-profile-list" data-toggle="list" href="#list-profile" role="tab" aria-controls="profile">用户</a>
        <a class="list-group-item list-group-item-action" id="list-messages-list" data-toggle="list" href="#list-messages" role="tab" aria-controls="messages">文化遗产</a>
      </div>
    <div>
      <div class="tab-content" id="nav-tabContent">
        <div class="tab-pane fade show active" id="list-home" role="tabpanel" aria-labelledby="list-home-list">
        @component('component.new',['data'=>$data['new'][0]])
        @endcomponent
        </div>
        <div class="tab-pane fade" id="list-profile" role="tabpanel" aria-labelledby="list-profile-list">
        @component('component.user',['data'=>$data['user'][0]])
        @endcomponent
        </div>
        <div class="tab-pane fade" id="list-messages" role="tabpanel" aria-labelledby="list-messages-list">
        @component('component.culture',['data'=>$data['culture'][0]])
        @endcomponent
        </div>
      </div>
    </div>
@endsection

