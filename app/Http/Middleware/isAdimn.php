<?php

namespace App\Http\Middleware;

use Closure;
use App\Models\FakerUser;

class isAdimn
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
        $data=FakerUser::where('email',Session('userName'))->first();
        if($data->power != 0){
            return redirect('admin/login')->with('message', '你不是管理员');
          }
        return $next($request);
    }
}
