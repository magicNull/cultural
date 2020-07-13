<?php

namespace App\Http\Middleware;

use Closure;
use MongoDB\Driver\Session;

class IsLogin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
      if(!Session('userName')){
        return redirect('admin/login')->with('message', '请先登录');
      }
        return $next($request);
    }
}
