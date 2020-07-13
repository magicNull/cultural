<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class News extends Model
{
    //新闻
  protected $table='news';
  protected $primaryKey="id";
  protected $fillable = ['uid','title','email','content','time','dirs','Abbreviation'];
}
