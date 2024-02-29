@extends('admin.main')

@section('admin.head')
    <script src="/public/ckeditor/ckeditor.js"></script>
@endsection

@section('content')
<div class="">
        <a href="/admin/menus/list">
            <button style="background-color: #007bff; margin-bottom: 10px; color: #fff; border-radius: 2px; border: 2px solid transparent; padding: 6px;">Danh Sách Danh Mục</button>
        </a>
</div>
<div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Thêm Danh Mục Mới</h3>
              </div>
              <form action="" method="POST">
                <div class="card-body">
                  <div class="form-group">
                    <label for="menu">Tên Danh Mục</label>
                    <input type="text" name="name" class="form-control" placeholder="Nhập tên danh mục">
                  </div>
                  <div class="form-group">
                    <label for="menu">Danh Mục</label>
                    <select name="parent_id" class="form-control" id="">
                      <option value="0">Danh Mục Cha</option>
                      @foreach ($menus as $menu)
                        <option value="{{ $menu->id }}">{{ $menu->name }}</option>
                      @endforeach
                    </select>
                  </div>
                  <div class="form-group">
                    <label for="menu">Mô Tả</label>
                    <textarea name="description" class="form-control"></textarea>
                  </div>
                  <div class="form-group">
                    <label for="menu">Mô Tả Chi Tiết</label>
                    <textarea name="content" id="long-description" class="form-control"></textarea>
                  </div>

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

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Tạo Danh Mục</button>
                </div>
                @csrf
              </form>
</div>
@endsection

@section('admin.footer')
    <script>
        CKEDITOR.replace('content');
    </script>
@endsection