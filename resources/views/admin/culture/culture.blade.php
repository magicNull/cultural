@extends('admin')
@section('test',"culture")
@section('selectClass','culture')
@section('admin')
  <link rel="stylesheet" href="{{asset('css/admin/new.css')}}">
  <div class="new">
    <div>
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
        {{csrf_field()}}
        <input type="date" class="form-control" id="time" name="time" value="{{date("Y-m-d")}}">
      </div>
      <div class="form-group">
        <label for="sort">页面区块</label>
        <select class="form-control" id="sort" name="sort">
          <option value="展柜">展柜</option>
          <option value="视频">视频</option>
          <option value="音频">音频</option>
          <option value="图集">图集</option>
        </select>
      </div>
      <div class="form-group">
        <label for="sort2">所属分区</label>
        <select class="form-control" id="sort2" name="sort">
          <option value="非物质文化遗产">非物质文化遗产</option>
          <option value="物质文化遗产">物质文化遗产</option>
        </select>
      </div>
    </div>
    <div class="editor">
      {!! we_css() !!}
      {!! we_js() !!}
      {!! we_field('wangeditor', 'content', '<p>在这里输入你的内容</p>') !!}
      {!! we_config('wangeditor') !!}
    </div>
    <div class="video">
      <div class="m-3"><label for="file">上传文件</label>
        <input type="file" name="file" id="file" accept="audio/*,video/*"></div>
      <div class="input-group m-3">
        <div class="input-group-prepend">
          <span class="input-group-text">简单介绍(选填)</span>
        </div>
        <textarea class="form-control" aria-label="With textarea" id="textareas"></textarea>
      </div>
    </div>
    <div class="editor">
      <button type="button" class="btn btn-primary" id="preview" data-toggle="modal" data-target=".bd-example-modal-lg">预览</button>
      <button type="submit" class="btn btn-success" id="editorS">提交</button>
    </div>

    <div class="video">
      <button type="button" class="btn btn-primary" id="preview" data-toggle="modal" data-target=".bd-example-modal-lg">预览</button>
      <button type="submit" class="btn btn-success" id="videoS">提交</button>
      <div id="data"></div>
    </div>

    <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-lg">
        <div class="modal-content">
          <div class="title">
            <h2>标题</h2>
            <div>
              <div>作者:<span></span></div>
              <div>时间:<span></span></div>
              <div>页面区块:<span></span> </div>
              <div>分区:<span></span></div>
            </div>
          </div>
          <div class="content"></div>
          <div class="content2">
            {{--      videoV == video类的div里 渲染视频  --}}
            {{--      videoA == video类的div里 渲染音频  --}}
              <video id="videoV" width="100%" height="" controls>
                <source src="" type="video/mp4">
                您的浏览器不支持 HTML5 video 标签。
              </video>
              <audio controls id="videoA">
                您的浏览器不支持 audio 元素。
              </audio>
          </div>
        </div>
      </div>
    </div>
  </div>
  <script src="{{asset('js/admin/culture.js')}}"></script>
@endsection
