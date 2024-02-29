<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\CreateFormRequest;
use App\Http\Services\Menu\MenuService;
use App\Models\Menu;
use Illuminate\Http\JsonResponse;

class MenuController extends Controller
{
    protected $menuService;

    public function __construct(MenuService $menuService)
    {
        $this->menuService = $menuService;
    }

    // Chức năng tạo danh mục mới
    public function create()
    {
        return view("admin.menu.add", [
            'title' => "Thêm danh mục mới",
            'menus' => $this->menuService->getParent()
        ]);
    }

    // Tạo danh mục mới
    public function store(CreateFormRequest $request)
    {
        $this->menuService->create($request);

        return redirect()->back();
    }

    // List danh mục
    public function index(){
        return view("admin.menu.list", [
            'title' => 'Danh sách danh mục',
            'menus' => $this->menuService->getAll()
        ]);
    }

    // Chức năng edit
    public function show(Menu $menu)
    {
        return view("admin.menu.edit", [
            'title' => 'Chỉnh sửa danh mục' . $menu->name,
            'menu' => $menu,
            'menus' => $this->menuService->getParent()
        ]);
    }

    public function update(Menu $menu, CreateFormRequest $request)
    {
        $this->menuService->update($request, $menu);

        return redirect('/admin/menus/list');
    }

    // Chức năng xoá danh mục
    public function destroy(Request $request): JsonResponse
    {
        $result = $this->menuService->destroy($request);
        if($result){
            return response()->json([
                'error' => false,
                'message' => 'Xoá thành công danh mục'
            ]);
        }
        return response()->json([
            'error' => true
        ]);
    }

    

}
