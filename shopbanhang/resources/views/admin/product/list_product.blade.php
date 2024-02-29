@extends('admin.main')


@section('content')
    <div class="">
        <a href="/admin/products/add">
            <button style="background-color: #007bff; margin-bottom: 10px; color: #fff; border-radius: 2px; border: 2px solid transparent; padding: 6px;">Thêm Sản Phẩm Mới</button>
        </a>
    </div>
    <div class="card-header" style="background: #007bff; color: white;">
        <h3 class="card-title">Danh sách sản phẩm</h3>
    </div>
    <table class="table" style="background: white;">
        <thead>
            <tr>
                <th style="width: 50px;">ID</th>
                <th>Tên Sản Phẩm</th>
                <th>Hình Ảnh Sản Phẩm</th>
                <th>Danh Mục</th>
                <th>Giá Sản Phẩm</th>
                <th>Giá Khuyến Mãi</th>
                <th>Active</th>
                <th>Update</th>
                <th>Action</th>
                <th style="width: 40px;">&nbsp;</th>
            </tr>
        </thead>
        <tbody>
            @foreach($products as $key => $product)
            <tr>
                <td style="vertical-align: inherit;">{{ $product->id }}</td>
                <td style="vertical-align: inherit;">{{ $product->name }}</td>
                <td style="vertical-align: inherit;">
                    <a href="{{ $product->thumb }}" target="_blank">
                        <img src="{{ $product->thumb }}" alt="" width="50px">
                    </a>
                </td>
                <td style="vertical-align: inherit;">{{ $product->menu->name }}</td>
                <td style="vertical-align: inherit;">${{ $product->price }}</td>
                <td style="vertical-align: inherit;">${{ $product->price_sale }}</td>
                <td style="vertical-align: inherit;">{!! \App\Helpers\Helper::active($product->active) !!}</td>
                <td style="vertical-align: inherit;">{{ $product->updated_at }}</td>
                <td style="vertical-align: inherit;">
                    <a class="btn btn-primary btn-sm" href="/admin/products/edit/{{ $product->id }}"><i class="fas fa-edit"></i></a>
                    <a class="btn btn-danger btn-sm" href="#" onclick="removeRow({{ $product->id }} ,'/admin/products/destroy')"><i class="fas fa-trash"></i></a>
                </td>
            </tr> 
            @endforeach 
        </tbody>
    </table>
    <div class="card-footer clearfix">
        {!! $products->links() !!}
    </div>
@endsection