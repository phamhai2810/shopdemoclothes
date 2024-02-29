<?php

use App\Http\Controllers\AboutController;
use App\Http\Controllers\Admin\CartAdminController;
use App\Http\Controllers\Admin\MenuController;
use App\Http\Controllers\ProductHomeController;
use Illuminate\Support\Facades\Route;
use \App\Http\Controllers\Admin\Users\LoginController;
use \App\Http\Controllers\Admin\MainController;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\Admin\UploadController;
use App\Http\Controllers\Admin\SliderController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\MenuHomeController;
use App\Http\Controllers\Admin\UserAdminController;
use App\Http\Controllers\Admin\Users\LogoutController;
use App\Http\Controllers\ContactController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('admin/users/login', [LoginController::class, 'index'])->name('login'); 
Route::get('admin/menus/logout', [LogoutController::class, 'logout'])->name('logout'); 
Route::get('admin/slider/logout', [LogoutController::class, 'logout'])->name('logout'); 
Route::get('admin/products/logout', [LogoutController::class, 'logout'])->name('logout'); 
Route::get('admin/customers/logout', [LogoutController::class, 'logout'])->name('logout'); 
Route::get('admin/users/logout', [LogoutController::class, 'logout'])->name('logout'); 
Route::get('logout',[LogoutController::class, 'logout'])->name('logout');
Route::get('admin/logout',[LogoutController::class, 'logout'])->name('logout');

// Route::get('admin/users/login', [LoginController::class, 'index'])->name('login'); 
Route::post('admin/users/login/store', [LoginController::class, 'store']);

Route::middleware(['auth'])->group(function () {
    Route::prefix('admin')->group(function () {

        Route::get('/', [MainController::class,'index'])->name('admin');
        Route::get('main', [MainController::class,'index']);

        #Menu
        Route::prefix('menus')->group(function () {
            Route::get('add', [MenuController::class,'create']);
            Route::post('add', [MenuController::class,'store']);
            Route::get('list', [MenuController::class,'index']);
            Route::get('edit/{menu}', [MenuController::class,'show']);
            Route::post('edit/{menu}', [MenuController::class,'update']);
            Route::delete('destroy', [MenuController::class,'destroy']);
        });

        #product
        Route::prefix('products')->group(function (){
            Route::get('add', [ProductController::class,'create']);
            Route::post('add', [ProductController::class, 'store']);
            Route::get('list', [ProductController::class, 'index']);
            Route::get('edit/{product}', [ProductController::class, 'show']);
            Route::post('edit/{product}', [ProductController::class, 'update']);
            Route::delete('destroy', [ProductController::class,'destroy']);
        });

        #slider
        Route::prefix('sliders')->group(function (){
            Route::get('add', [SliderController::class,'create']);
            Route::post('add', [SliderController::class, 'store']);
            Route::get('list', [SliderController::class, 'index']);
            Route::get('edit/{slider}', [SliderController::class, 'show']);
            Route::post('edit/{slider}', [SliderController::class, 'update']);
            Route::delete('destroy', [SliderController::class,'destroy']);
        });

        #upload
        Route::post('upload/services', [UploadController::class, 'store']);

        #cart
        Route::get('customers', [CartAdminController::class, 'index']);
        Route::get('customers/view/{customer}', [CartAdminController::class, 'show']);

        #user
        Route::prefix('users')->group(function(){
            Route::get('/', [UserAdminController::class, 'index']);
            Route::get('add', [UserAdminController::class,'create']);
            Route::post('add', [UserAdminController::class, 'store']);
            Route::get('edit/{user}', [UserAdminController::class, 'show']);
            Route::post('edit/{user}', [UserAdminController::class, 'update']);
            Route::delete('destroy', [UserAdminController::class,'destroy']);

        });
    });
});

Route::get('/', [HomeController::class, 'index']);
Route::get('danh-muc/about.html', [AboutController::class, 'index']);
Route::get('about.html', [AboutController::class, 'index']);

Route::get('danh-muc/contact.html', [ContactController::class, 'index']);
Route::get('contact.html', [ContactController::class, 'index']);

Route::post('/services/load-product', [HomeController::class, 'loadProduct']);

Route::get('danh-muc/{id}-{slug}.html', [MenuHomeController::class, 'index']);
Route::get('san-pham/{id}-{slug}.html', [ProductHomeController::class, 'index']);
Route::post('add-cart', [CartController::class, 'index']);
Route::get('carts', [CartController::class, 'show']);
Route::post('update-cart', [CartController::class, 'update']);
Route::get('carts/delete/{id}', [CartController::class, 'remove']);
Route::post('carts', [CartController::class, 'addCart']);


