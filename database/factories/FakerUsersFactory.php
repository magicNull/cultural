<?php

use Faker\Generator as Faker;

$factory->define(\App\Models\FakerUser::class, function (Faker $faker) {
    return [
        //
      'email' => $faker->safeEmail,
      'name' => $faker->name,
      'password' => $faker->password,// 数字在 8-80 之间随机
      'power' => $faker->numberBetween(0, 1),
      'status' => $faker->numberBetween(0, 1),
      'created_at' => $faker->dateTimeBetween('-3 year', '-1 year'),// 时间在 三年到一年 之间
      'updated_at' => $faker->dateTimeBetween('-1 year', '-5 month'),// 时间在 一年到五个月之间
    ];
});
