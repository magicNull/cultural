<?php

namespace App\Http\Controllers\Test;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class TestController extends Controller
{
  //
  public function add(Request $request)
  {
    $a = $request->get('search');
    return response()->json($a);
  }
}
