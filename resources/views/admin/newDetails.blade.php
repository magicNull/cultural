{{--{{我是新闻详情页}}--}}
@extends('admin')
@section('test',"news")
@section('admin')
  <style>
    img{
      margin-left: 0!important;
    }
  </style>
  <link rel="stylesheet" href="{{asset('css/admin/new.css')}}">
  <div class="new">
    <div>
      <div class="form-group">
        <label for="title">标题</label>
        <input type="text" class="form-control" id="title" name="title" placeholder="输入标题" value="{{$data->title}}">
        {{csrf_field()}}
      </div>
      <div class="form-group">
        <label for="author">提交者</label>
        <input type="text" class="form-control" id="author" name="author" value="{{$data->email}}">
      </div>
      <div class="form-group">
        <label for="time">提交日期</label>
        <input type="date" class="form-control" id="time" name="time" value="{{$data->time}}">
        <input type="hidden" name="id" value="{{$data->id}}">
      </div>
      <div class="form-group">
        <label for="sort">分类</label>
        <select class="form-control" id="sort" name="sort">
          <option value="今日要闻" @if ($data->dirs=="今日要闻") selected @endif>今日要闻</option>
          <option value="话题" @if ($data->dirs=="话题") selected @endif>话题</option>
          <option value="文化新闻" @if ($data->dirs=="文化新闻") selected @endif>文化新闻</option>
          <option value="要闻" @if ($data->dirs=="要闻") selected @endif>要闻</option>
        </select>
      </div>
    </div>
    {!! we_css() !!}
    {!! we_js() !!}
    {!! we_field('wangeditor', 'content', "{$data->content}") !!}
    {!! we_config('wangeditor') !!}
    <div>
      <button type="button" class="btn btn-primary" id="preview" data-toggle="modal" data-target=".bd-example-modal-lg" style="color: white">预览</button>
      @if ($data->deletes == 1)
        <button type="submit" class="btn btn-success" id="change">修改</button>
      @else
        <div class="alert alert-primary" role="alert">
          <div>文章当前状态: @if ($data->deletes !=1)
              <strong>已被删除</strong>
          @endif</div>
          恢复文章可进行修改！！！
        </div>
      @endif
    </div>

    <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg">
        <div class="modal-content">
          <div class="title">
            <h2>标题</h2>
            <div>
              <div>作者:<span></span></div>
              <div>时间:<span></span></div>
              <div>类别:<span></span> </div>
            </div>
          </div>
          <div class="content"></div>
        </div>
      </div>
    </div>
  </div>
  <script src="{{asset('js/admin/news.js')}}"></script>
@endsection
