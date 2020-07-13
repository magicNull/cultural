<!doctype html>
<html lang="zh">
<head>
  <meta charset="UTF-8">
  <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <meta name="csrf-token" content="{{csrf_token()}}">
  <title>文化遗产</title>
  <link rel="stylesheet" href="{{asset('css')}}/register.css">
  <script src="{{asset('js')}}/iconfont.js"></script>
</head>
<body>
<div class="login">
  <article>
    <section>
      <h1>重置密码</h1>
      <form action="/service/resetgo" method="post">
        <strong style="color:red;">{{Session('message')}}</strong>
        <p></p>
        <div><input type="hidden" name="token" value="{{$token}}"></div>
        <!-- <asida>{{$errors->login->first('email')}}</asida> -->
        <p><label for="password">密码</label></p>
        <div><input type="password" id="password" name="password" required class="input" placeholder="请输入密码"></div>
        <asida>{{$errors->login->first('password')}}</asida>
        <p><label for="password_confirmation">确认密码</label></p>
        <div><input type="password" required class="input" id="password_confirmation" name="password_confirmation" placeholder="请再次输入密码"></div>
        <asida>{{$errors->login->first('password_confirmation')}}</asida>
        <p><label for="code" required>验证码</label></p>
        <div>
          <input type="text" name="code" id="code" class="input" placeholder="验证码">
          <img src="{{captcha_src()}}" onclick="this.src='{{captcha_src()}}'+Math.random()" alt="验证码">
        </div>
        <asida>{{$errors->login->first('code')}}</asida>
        <div>
          <!-- <a href="/">首页</a> -->
        </div>
        <div>
          <button type="submit">确认</button>
        </div>

        <div><a href="/admin/login">已有账号？返回登录</a></div>
        @csrf
      </form>
    </section>

  </article>
</div>


</body>
</html>
