<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class FakerUser extends Model
{
    //
  protected $table="faker_users";
  protected $primaryKey="id";
  protected $fillable = ['email','password','power','status','name'];
}
