<?php

namespace App\Http\Controllers\Admin;

use App\Models\Slider;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Services\Slider\SliderService;


class SliderController extends Controller
{
    protected $slider;

    public function __construct(SliderService $slider)
    {
        $this->slider = $slider;
    }

    public function create()
    {
        return view ('admin.slider.add_slider',[
            'title' => 'Thêm silder mới'
        ]);
    }

    // Thêm slider vào database phpmyadmin
    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required' ,
            'thumb' => 'required',
            'url' => 'required'
        ]);

        $this->slider->insert($request);

        return redirect()->back();
    }

    public function index()
    {
        return view('admin.slider.list_slider', [
            "title" => "Danh sách slider mới nhất",
            "sliders" => $this->slider->get()
        ]);
    }

    public function show(Slider $slider)
    {
        return view('admin.slider.edit_slider', [
            "title" => "Chỉnh sửa slider",
            "slider" => $slider
        ]);
    } 
    
    public function update(Request $request, Slider $slider)
    {
        $this->validate($request, [
            'name' => 'required' ,
            'thumb' => 'required',
            'url' => 'required'
        ]);

        $result = $this->slider->update($request, $slider);

        if($result){
            return redirect('/admin/sliders/list');
        }

        return redirect()->back();
    }

    public function destroy(Request $request)
    { 
        $result = $this->slider->destroy($request);

        if($result){
            return response()->json([
                'error' => false,
                'message' => 'Xoá thành công slider'
            ]);

        }

        return response()->json([
            'error' => true
        ]);
    }
}
