<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class UserInfo extends Model
{
    //用户信息表
  protected $table='user_infos';
  protected $primaryKey="id";
  protected $fillable = ['name','email','introduction','power','portrait','status','gender','uid'];
}
