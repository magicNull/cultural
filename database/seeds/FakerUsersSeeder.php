<?php

use Illuminate\Database\Seeder;

class FakerUsersSeeder extends Seeder
{
  /**
   * Run the database seeds.
   *
   * @return void
   */
  public function run()
  {
    //
    /*$testDate = [
      ['name' => rand(1, 6),
        'email' => "110@qq.com",
        'password' => rand(1, 6),
        'power' => true
      ],
      ['name' => rand(1, 6),
        'email' => "110@qq.com",
        'password' => rand(1, 6),
        'power' => true
      ],
      ['name' => rand(1, 6),
        'email' => "110@qq.com",
        'password' => rand(1, 6),
        'power' => true
      ]
    ];
    DB::table('faker_users')->insert($testDate);*/
    factory(\App\Models\FakerUser::class)->times(100)->make()->each(function ($model) {
      // 数据入库
      $model->save();
    });

  }
}
