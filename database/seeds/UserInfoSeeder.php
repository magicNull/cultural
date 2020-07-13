<?php

use Illuminate\Database\Seeder;

class UserInfoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
      factory(\App\Models\UserInfo::class)->times(101)->make()->each(function ($model) {
        // 数据入库
        $model->save();
      });
    }
}
