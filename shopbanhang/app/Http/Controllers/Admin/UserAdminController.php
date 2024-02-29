<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Services\UserService;
use App\Http\Requests\CreateFormRequest;
use App\Models\User;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\Session;

class UserAdminController extends Controller
{
    protected $userService;
    public function __construct(UserService $userService)
    {
        $this->userService = $userService;
    }
    public function index()
    {
        return view('admin.user.user', [
            'title' => 'Danh Sách Tài Khoản',
            'users' => $this->userService->getUser()
        ]);
    }

    public function create()
    {
        return view("admin.user.add", [
            'title' => "Thêm Tài Khoản Mới",
            'users' => $this->userService->getUserId()
        ]);
    }

    public function store(CreateFormRequest $request)
    {
        $this->userService->create($request);

        return redirect('/admin/users');
    }

    public function show(User $user)
    {
        return view('admin.user.edit', [
            'title' => 'Chỉnh sửa tài khoản' . $user->name,
            'user' => $user,
            'users' => $this->userService->getId()
        ]);

    }

    public function update(Request $request, User $user)
    {
        $this->userService->update($request, $user);

        return redirect('/admin/users');

    }

    public function destroy(Request $request)
    { 
        $result = $this->userService->destroy($request);

        if($result){
            return response()->json([
                'error' => false,
                'message' => 'Xoá tài khoản thành công'
            ]);

        }

        return response()->json([
            'error' => true
        ]);
    }
}
