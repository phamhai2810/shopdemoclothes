@extends('admin.main')


@section('content')
<div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">{{ $title }}</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
                <form action="" method="POST">
                <div class="card-body">
                  <div class="row">
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label>Tên Sản Phẩm</label>
                        <input type="text" value="{{ $product->name }}" class="form-control" name="name" placeholder="Nhập tên sản phẩm">
                      </div>
                    </div>
                    <div class="col-sm-6">
                    <div class="form-group">
                        <label>Danh mục</label>
                        <select class="form-control" name="menu_id">
                            @foreach($menus as $menu)
                                <option value="{{ $menu->id }}" {{ $product->menu_id ==  $menu->id ? 'selected' : '' }}>{{ $menu->name }}</option>
                            @endforeach
                        </select>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label>Giá Sản Phẩm</label>
                        <input type="number" name="price" value="{{ $product->price }}"  class="form-control" placeholder="Enter ...">
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label>Giá Khuyến Mãi</label>
                        <input type="number" name="price_sale" value="{{ $product->price_sale }}"  class="form-control">
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-sm-12">
                        <div class="form-group">
                            <label>Mô Tả</label>
                            <textarea name="description"  class="form-control" rows="3" placeholder="Enter ...">{{ $product->description }}</textarea>
                        </div>
                    </div>
                  </div>

                  <div class="row">
                    <div class="col-sm-12">
                        <div class="form-group">
                            <label>Mô Tả Chi Tiết</label>
                            <textarea name="content"  class="form-control" rows="3" placeholder="Enter ...">{{ $product->content }}</textarea>
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
                            <a href="{{ $product->thumb }}" target="_blank">
                                <img src="{{ $product->thumb }}" alt="" width="100px">
                            </a>
                        </div>
                        <input type="hidden" name="thumb" value="{{ $product->thumb }}" id="thumb">
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-sm-12">
                        <div class="form-group">
                                <label for="menu">Kích Hoạt</label>
                                <div class="form-check">
                                <input class="form-check-input" type="radio" id="active" value="1" name="active" 
                                {{ $product->active == 1 ? 'checked=""' : ''}}>
                                <label class="form-check-label" for="active">Có</label>
                                </div>
                                <div class="form-check">
                                <input class="form-check-input" type="radio" id="no_active" value="1" name="active" 
                                {{ $product->active == 0 ? 'checked=""' : ''}}>
                                <label class="form-check-label" for="no_active">Không</label>
                                </div>
                        </div>
                    </div>
                  </div>
                </div>
                  <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Cập Nhật Sản Phẩm</button>
                </div>
                @csrf
                </form>
</div>


@endsection

