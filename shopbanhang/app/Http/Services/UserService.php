<?php


namespace App\Http\Services;


use App\Models\User;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str; // Thêm lớp Str để tạo remember_token
use Illuminate\Support\Facades\Storage;

class UserService
{
    public function getId()
    {
        return User::where('id', 0)->get();
    }
    public function getUser()
    {
        return User::orderByDesc('id')->paginate(15);
    }

    public function getUserId()
    {
        return User::where('id', 0)->get();
    }

    public function create($request)
    {
        try {
            $hashedPassword = Hash::make($request->input('password'));

            $rememberToken = Str::random(60);

            User::create([
                'name' => (string)$request->input('name'),
                'email' => (string)$request->input('email'),
                'password' => (string)$hashedPassword,
                'remember_token' => $rememberToken // Lưu remember_token
            ]);

            Session::flash('success', 'Tạo Tài Khoản Thành Công');
        } catch (\Exception $err) {
            Session::flash('error', $err->getMessage());
            return false;
        }

        return true;
    }

    public function update($request, $user): bool
    {
        $user->name = (string)$request->input('name');
        $user->email = (string)$request->input('email');
        $user->password = (string)Hash::make($request->input('password'));
        $user->save();

        Session::flash('success', 'Cập nhật tài khoản thành công');
        return true;
    }

    public function destroy($request)
    {
        $user = User::where('id', $request->input('id'))->first();

        if($user){
            $user->delete();
            return true;
        }
        return false;
    }
}