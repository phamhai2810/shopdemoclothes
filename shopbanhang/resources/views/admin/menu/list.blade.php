@extends('admin.main')


@section('content')
    <div class="">
        <a href="/admin/menus/add">
        <button style="background-color: #007bff; margin-bottom: 10px; color: #fff; border-radius: 2px; border: 2px solid transparent; padding: 6px;">Thêm Danh Mục Mới</button>
        </a>
    </div>
    <div class="card-header" style="background: #007bff; color: white;">
        <h3 class="card-title">Danh sách danh mục</h3>
    </div>
    <table class="table" style="background: white;">
        <thead>
            <tr>
                <th style="width: 50px;">ID</th>
                <th>Name</th>
                <th>Active</th>
                <th>Update</th>
                <th style="width: 140px;">&nbsp;</th>
            </tr>
        </thead>
        <tbody>
            {!! \App\Helpers\Helper::menu($menus) !!}
        </tbody>
    </table>

@endsection