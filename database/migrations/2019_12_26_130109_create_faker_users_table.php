<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateFakerUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('faker_users', function (Blueprint $table) {
          $table->bigIncrements('id')->comment('id字段主键');//id字段主键
          $table->string('name')->nullable()->default(md5(time()+rand(1,10)))->comment('用户名字段,默认值MD5的时间+1到10的随机数');//用户名字段
          $table->string('email')->comment('邮箱');
          $table->string('password')->comment('密码字段');//密码字段
          $table->string('power')->default('user')->comment('用户权限');
          $table->boolean('status')->default(true)->comment('用户状态默认是正常');//用户状态
          $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('faker_users');
    }
}
