<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNewsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('news', function (Blueprint $table) {
          $table->bigIncrements('id')->comment('id字段主键');//id字段主键
          $table->string('uid')->comment('用户id');
          $table->string('email')->comment('发布者的邮箱');
          $table->string('title')->comment('标题');
          $table->text('Abbreviation')->comment('简称');
          $table->text('content')->comment('发布内容');
          $table->integer('deletes')->default(1)->comment('删除');
          $table->string('time')->comment('发布时间');
          $table->string('dirs')->comment('图片/视频路径');
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
        Schema::dropIfExists('news');
    }
}
