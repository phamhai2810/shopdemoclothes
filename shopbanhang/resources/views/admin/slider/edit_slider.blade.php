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
                        <label>Tiêu Đề</label>
                        <input type="text" value="{{ $slider->name }}" class="form-control" name="name">
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label>Đường Dẫn</label>
                        <input type="text" value="{{ $slider->url }}" class="form-control" name="url">
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
                            <a href="{{ $slider->thumb }}" target="_blank">
                                <img src="{{ $slider->thumb }}" alt="" width="100px">
                            </a>
                        </div>
                        <input type="hidden" name="thumb" id="thumb" value="{{ $slider->thumb }}">
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-sm-12">
                        <div class="form-group">
                            <label>Sắp Xếp</label>
                            <input type="number" name="sort_by" value="{{ $slider->sort_by }}"  class="form-control" placeholder="Enter ...">
                        </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-sm-12">
                        <div class="form-group">
                                <label for="menu">Kích Hoạt</label>
                                <div class="form-check">
                                <input class="form-check-input" type="radio" id="active" value="1" name="active"
                                {{ $slider->active == 1 ? 'checked' : ''}}>
                                <label class="form-check-label" for="active">Có</label>
                                </div>
                                <div class="form-check">
                                <input class="form-check-input" type="radio" id="no_active" value="1" name="active"
                                {{ $slider->active == 0 ? 'checked' : ''}}>
                                <label class="form-check-label" for="no_active">Không</label>
                                </div>
                        </div>
                    </div>
                  </div>
                </div>
                  <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Cập Nhật Slider</button>
                </div>
                @csrf
                </form>
</div>


@endsection

