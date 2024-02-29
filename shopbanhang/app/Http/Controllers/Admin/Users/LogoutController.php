<?php

namespace App\Http\Controllers\Admin\Users;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class LogoutController extends Controller
{

    public function logout()
    {
        Auth::logout(); // Đăng xuất người dùng

        // Sau khi đăng xuất, bạn có thể chuyển hướng người dùng đến trang nào đó, ví dụ: trang đăng nhập
        return redirect()->route('login')->with('success', 'Bạn đã đăng xuất thành công.');
    }

}


    