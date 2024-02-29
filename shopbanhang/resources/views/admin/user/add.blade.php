@extends('admin.main')

@section('admin.head')
    <script src="/public/ckeditor/ckeditor.js"></script>
@endsection

@section('content')
<div class="">
        <a href="/admin/users">
            <button style="background-color: #007bff; margin-bottom: 10px; color: #fff; border-radius: 2px; border: 2px solid transparent; padding: 6px;">Danh Sách Tài Khoản</button>
        </a>
</div>
<div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Thêm Tài Khoản Mới</h3>
              </div>
              <form action="" method="POST">
                <div class="card-body">
                  <div class="form-group">
                    <label for="user">Họ Tên Người Dùng</label>
                    <input type="text" name="name" class="form-control" placeholder="Nhập họ & tên">
                  </div>
                  <div class="form-group">
                    <label for="user">Email</label>
                    <input type="text" name="email" class="form-control" placeholder="Nhập email">
                  </div>
                  <div class="form-group">
                    <label for="user">Password</label>
                    <input type="text" name="password" class="form-control" placeholder="Nhập mật khẩu">
                  </div>
                </div>

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Tạo Tài Khoản</button>
                </div>
                @csrf
              </form>
</div>
@endsection

@section('admin.footer')
@endsection