<!doctype html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="stylesheet" href="{{asset('css')}}/index.css">
    <script src="{{asset('js')}}/iconfont.js"></script>
    <title>文化遗产</title>
</head>
<body>
<div id="app"></div>
<div id="a">
    <transition name="el-fade-in-linear">
        <div class="top el-backtop" v-show="show" @click="gotTop">
            <i class="el-icon-caret-top"></i>
        </div>
    </transition>
</div>
<script src="{{mix('js/app.js')}}"></script>
</body>
<script src="{{asset('js')}}/index.js"></script>
</html>
