<?php

use Faker\Generator as Faker;

$factory->define(\App\Models\UserInfo::class, function (Faker $faker) {
    return [
        //
      'email' => $faker->safeEmail,
      'name' => $faker->name,
      'introduction' => $faker->password,// 数字在 8-80 之间随机
      'power' => $faker->numberBetween(0, 1),
      'status' => $faker->numberBetween(0, 1),
    ];
});
