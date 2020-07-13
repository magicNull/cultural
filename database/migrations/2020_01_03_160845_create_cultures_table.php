<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCulturesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cultures', function (Blueprint $table) {
          $table->bigIncrements('id')->comment('id字段主键');//id字段主键
          $table->string('uid')->nullable()->default(1);//用户名字段
          $table->string('email')->comment('邮箱');
          $table->string('title')->comment('标题');
          $table->text('introduction')->comment('简介')->default('似乎没有什么东西');
          $table->text('intro')->nullable()->comment('没有标签的简介');
          $table->string('types')->comment('页面区块类型');
          $table->string('form')->comment('小类型');
          $table->text('portrait')->nullable()->comment('图片路径');
          $table->boolean('status')->default(true)->comment('状态默认是正常');
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
        Schema::dropIfExists('cultures');
    }
}
