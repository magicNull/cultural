@extends('admin')
@section('test',"news")
@section('selectClass','new')
@section('admin')
  <link rel="stylesheet" href="{{asset('css/admin/new.css')}}">
  <div class="new">
      <div>
{{--        <div class="form-group row">--}}
{{--          <label for="staticEmail" class="col-sm-2 col-form-label">提交者：</label>--}}
{{--          <div class="">--}}
{{--            <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="{{Session('userName')}}">--}}
{{--          </div>--}}
{{--        </div>--}}
{{--        <div class="form-group row">--}}
{{--          <label for="staticEmail" class="col-sm-2 col-form-label">提交时间：</label>--}}
{{--          <div class="">--}}
{{--            <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="{{date("Y-m-d")}}">--}}
{{--          </div>--}}
{{--        </div>--}}
        <div class="form-group">
          <label for="title">标题</label>
          <input type="text" class="form-control" id="title" name="title" placeholder="输入标题">
          {{csrf_field()}}
        </div>
        <div class="form-group">
          <label for="author">提交者</label>
          <input type="text" class="form-control" id="author" name="author" value="{{Session('userName')}}">
        </div>
        <div class="form-group">
          <label for="time">提交日期</label>
          <input type="date" class="form-control" id="time" name="time" value="{{date("Y-m-d")}}">
        </div>
        <div class="form-group">
          <label for="sort">分类</label>
          <select class="form-control" id="sort" name="sort">
            <option value="今日要闻">今日要闻</option>
            <option value="话题">话题</option>
            <option value="文化新闻">文化新闻</option>
            <option value="要闻">要闻</option>
          </select>
        </div>
      </div>
    {!! we_css() !!}
    {!! we_js() !!}
    {!! we_field('wangeditor', 'content', '<p>在这里输入你的内容</p>') !!}
    {!! we_config('wangeditor') !!}
{{--    <div id="wangeditor">--}}

{{--    </div>--}}
    <div>
      <button type="button" class="btn btn-primary" id="preview" data-toggle="modal" data-target=".bd-example-modal-lg">预览</button>
      <button type="submit" class="btn btn-success" id="submit">提交</button>
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
