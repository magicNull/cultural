<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUserInfosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('user_infos', function (Blueprint $table) {
          $table->bigIncrements('id')->comment('id字段主键');//id字段主键
          $table->string('name')->nullable()->default(date('Y-M-d'));//用户名字段
          $table->string('email')->comment('邮箱');
          $table->string('introduction')->comment('简介')->default('似乎没有什么东西');
          $table->string('power')->default('user')->comment('用户权限');
          $table->string('portrait')->nullable()->comment('用户头像');
          $table->boolean('status')->default(true)->comment('用户状态默认是正常');//用户状态
          $table->string('gender')->default('0')->comment('用户性别');
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
        Schema::dropIfExists('user_infos');
    }
}
