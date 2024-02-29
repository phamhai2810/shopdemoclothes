@extends('admin.main')


@section('content')
<div class="">
        <a href="/admin/products/list">
            <button style="background-color: #007bff; margin-bottom: 10px; color: #fff; border-radius: 2px; border: 2px solid transparent; padding: 6px;">Danh Sách Sản Phẩm</button>
        </a>
</div>
<div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Thêm Danh Mục Mới</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
                <form action="" method="POST">
                <div class="card-body">
                  <div class="row">
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label>Tên Sản Phẩm</label>
                        <input type="text" value="{{ old('name') }}" class="form-control" name="name" placeholder="Nhập tên sản phẩm">
                      </div>
                    </div>
                    <div class="col-sm-6">
                    <div class="form-group">
                        <label>Danh mục</label>
                        <select class="form-control" name="menu_id">
                            @foreach($menus as $menu)
                                <option value="{{ $menu->id }}">{{ $menu->name }}</option>
                            @endforeach
                        </select>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label>Giá Sản Phẩm</label>
                        <input type="number" name="price" value="{{ old('price') }}"  class="form-control" placeholder="Enter ...">
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label>Giá Khuyến Mãi</label>
                        <input type="number" name="price_sale" value="{{ old('price_sale') }}"  class="form-control">
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-sm-12">
                        <div class="form-group">
                            <label>Mô Tả</label>
                            <textarea name="description"  class="form-control" rows="3" placeholder="Enter ...">{{ old('description') }}</textarea>
                        </div>
                    </div>
                  </div>

                  <div class="row">
                    <div class="col-sm-12">
                        <div class="form-group">
                            <label>Mô Tả Chi Tiết</label>
                            <textarea name="content"  class="form-control" rows="3" placeholder="Enter ...">{{ old('content') }}</textarea>
                        </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-sm-12">
                      <div class="form-group">
                        <label>Ảnh Sản Phẩm</label>
                        <br>
                        <input style="padding:3px !important;" type="file" id="upload" class="form-control">
                        <div id="image_show" style="margin-top:10px;">

                        </div>
                        <input type="hidden" name="thumb" id="thumb">
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-sm-12">
                        <div class="form-group">
                                <label for="menu">Kích Hoạt</label>
                                <div class="form-check">
                                <input class="form-check-input" type="radio" id="active" value="1" name="active" checked="">
                                <label class="form-check-label" for="active">Có</label>
                                </div>
                                <div class="form-check">
                                <input class="form-check-input" type="radio" id="no_active" value="1" name="active">
                                <label class="form-check-label" for="no_active">Không</label>
                                </div>
                        </div>
                    </div>
                  </div>
                </div>
                  <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Thêm Sản Phẩm</button>
                </div>
                @csrf
                </form>
</div>


@endsection

