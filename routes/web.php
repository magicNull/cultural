<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('index');
})->middleware('login');

Route::get('/search','Service\ServiceController@search');

Route::any('/tweet/save','Test\TestController@add');
Route::any('/reset','Service\ServiceController@reset');

Route::group(['prefix' => 'admin'], function () {
  Route::get('/', function () {
    return view("admin.new");
  })->middleware('login','admin');

  //登录
  Route::any('/login',function (){
    if(session('userName')){
      return view('index');
    }
    return view('login');
  });

  //注册
  Route::any('/register',function (){
    if(session('userName')){
      return view('index');
    }
    return view('register');
  });

  //新闻管理
  Route::get('/loginOut', 'Service\ServiceController@loginOut');
  Route::get('/new', function () {
    return view('admin.new');
  })->middleware('login','admin');
  Route::any('/newSelect', 'Service\NewController@select');
  Route::get('/newDelete','Service\NewController@ViewDelete' );
  Route::get('/newDetails/{id}','Service\NewController@Details' );

  //用户管理
  Route::get('/users','Service\UserController@users')->middleware('login','admin');
  Route::get('/users/{val}','Service\UserController@users');

  Route::any('/USets/{val}/{id}','Service\UserController@sets');
  Route::any('/USets/{val}/{id}/{num}','Service\UserController@sets');
  //用户详情
  Route::get('/userProhibir','Service\UserController@prohibir');
  Route::post('/changeInfo','Service\UserController@changeInfo');
  Route::post('/changeInfoImg','Service\UserController@changeInfoImg');

  //文化遗产管理
  Route::get('/culture', function () {
    return view('admin.culture.culture');
  });
  Route::get('/cultureSelect', 'Service\CultureController@select');
  Route::get('/cultureDelete', 'Service\CultureController@deletes');
});
Route::get('/userInfo/{id}','Service\UserController@info');
//操作新闻的路由
Route::group(['prefix' => 'new'], function () {
  Route::post('/add', 'Service\NewController@add');
  Route::any('/delete/{id}', 'Service\NewController@deletes');
  Route::any('/delete/{id}/{delete}', 'Service\NewController@deletes');
  Route::post('/change','Service\NewController@change');
});

//操作文化的路由
Route::group(['prefix' => 'culture'], function () {
  Route::post('/add', 'Service\CultureController@add');
  Route::post('/add2', 'Service\CultureController@add2');
  Route::any('/delete/{id}', 'Service\CultureController@delete');
  Route::any('/delete/{id}/{delete}', 'Service\CultureController@delete');
  Route::get('/info/{id}','Service\CultureController@info');
  Route::post('/change','Service\CultureController@change');
});

//login reset register
Route::group(['prefix' => 'service'], function () {
  Route::post('login', 'Service\ServiceController@login');
  Route::post('register', 'Service\ServiceController@register');
  Route::post('reset', 'Service\ServiceController@resetFunc');
  Route::post('resetgo', 'Service\ServiceController@resetGo');
  Route::get('reset/{token}', 'Service\ServiceController@resetSuccess');
});

//前端页面的
Route::group(['prefix' => 'view'], function () {
  Route::get('userInfo/{email}', 'Service\ViewController@userInfo');
  Route::post('userInfo/{email}', 'Service\ViewController@userInfo');

  Route::get('newInfo/{tables}/{val}', 'Service\ViewController@newInfo');
  Route::get('newInfo/{tables}/{val}/{types}', 'Service\ViewController@newInfo');

  Route::get('/newInfo/all','Service\ViewController@newInfoAll');
  Route::get('/articles/{tables}/{id}','Service\ViewController@articles');
});


// Route::get('/test',function(){
//   Mail::send('emails.welcome', ['user'=>'hello'], function ($message) {
//     // $message->from('john@johndoe.com', 'John Doe');
//     $message->to('1207895752@qq.com', 'John Doe');

//     $message->subject('whilec com to you');
// });
// });
Route::group(['prefix' => 'server'], function () {
  Route::get('search/{val}', 'Service\ServiceController@webSearch');
});