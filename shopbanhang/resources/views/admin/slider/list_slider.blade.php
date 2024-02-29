@extends('admin.main')


@section('content')
    <div class="">
        <a href="/admin/sliders/add">
            <button style="background-color: #007bff; margin-bottom: 10px; color: #fff; border-radius: 2px; border: 2px solid transparent; padding: 6px;">Thêm Slider Mới</button>
        </a>
    </div>
    <div class="card-header" style="background: #007bff; color: white;">
        <h3 class="card-title">Danh sách sản phẩm</h3>
    </div>
    <table class="table" style="background: white;">
        <thead>
            <tr>
                <th style="width: 50px;">ID</th>
                <th>Tiêu Đề</th>
                <th>Link</th>
                <th>Ảnh</th>
                <th>Trạng Thái</th>
                <th>Cập Nhật</th>
                <th>Hành Động</th>
                <th style="width: 40px;">&nbsp;</th>
            </tr>
        </thead>
        <tbody>
            @foreach($sliders as $key => $slider)
            <tr>
                <td style="vertical-align: inherit;">{{ $slider->id }}</td>
                <td style="vertical-align: inherit;">{{ $slider->name }}</td>
                <td style="vertical-align: inherit;">{{ $slider->url }}</td>
                <td style="vertical-align: inherit;">
                    <a href="{{ $slider->thumb }}" target="_blank">
                        <img src="{{ $slider->thumb }}" alt="" width="50px">
                    </a>
                </td>
                <td style="vertical-align: inherit;">{!! \App\Helpers\Helper::active($slider->active) !!}</td>
                <td style="vertical-align: inherit;">{{ $slider->updated_at }}</td>
                <td style="vertical-align: inherit;">
                    <a class="btn btn-primary btn-sm" href="/admin/sliders/edit/{{ $slider->id }}"><i class="fas fa-edit"></i></a>
                    <a class="btn btn-danger btn-sm" href="#" onclick="removeRow({{ $slider->id }} ,'/admin/sliders/destroy')"><i class="fas fa-trash"></i></a>
                </td>
            </tr> 
            @endforeach 
        </tbody>
    </table>

    {!! $sliders->links() !!}
@endsection