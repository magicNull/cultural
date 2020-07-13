<!doctype html>
<html lang="zh">
<head>
  <meta charset="UTF-8">
  <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <meta name="csrf-token" content="{{csrf_token()}}">
  <title>文化遗产</title>
  <link rel="stylesheet" href="{{asset('css')}}/login.css">
  <script src="{{asset('js')}}/iconfont.js"></script>
</head>
<body>
<div class="login">
  <article>
    <section>
      <h1>重置密码</h1>
      <form action="/service/reset" method="post">
        <strong style="color:red;">{{Session('message')}}</strong>
        <asida>{{$errors->test->first('test')}}</asida>
        <p><label for="email">邮箱</label></p>
        <div><input type="email" required id="email" class="input" placeholder="请输入邮箱" name="email"></div>
        <asida>{{$errors->login->first('email')}}</asida>
        <p></p>
        <div></div>
        <p><label for="code">验证码</label></p>
        <div>
          <input type="text" name="code" id="code" class="input" required placeholder="验证码">
          <img src="{{captcha_src()}}" onclick="this.src='{{captcha_src()}}'+Math.random()" alt="验证码">
        </div>
        <asida>{{$errors->login->first('code')}}</asida>
        <div>
        </div>
        <div>
          <button type="submit">登录</button>
        </div>

       
        <div><a href="/admin/register">还没有账号？点击立即注册</a></div>
        @csrf
      </form>
    </section>

  </article>
</div>


</body>
</html>
