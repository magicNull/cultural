<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Reset extends Model
{
    //重置密码表
    protected $table='resets';
    protected $primaryKey="id";
    protected $fillable = ['email','token','expire'];
}
