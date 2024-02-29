<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class MainController extends Controller
{
    protected $menu;
    public function index(){
        return view('admin.dashboard', [ 
            'title' => 'Trang quản trị Admin'
        ]);
    }
}



