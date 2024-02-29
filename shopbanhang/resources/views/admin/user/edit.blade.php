@extends('admin.main')

@section('content')
<div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Chỉnh Sửa Tài Khoản</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form action="" method="POST">
                <div class="card-body">
                  <div class="form-group">
                    <label for="menu">Tên Tài Khoản</label>
                    <input type="text" name="name" value="{{$user->name}}" class="form-control" placeholder="Nhập họ & tên">
                  </div>


                  <div class="form-group">
                    <label for="user">Email</label>
                    <input type="text" name="email" value="{{$user->email}}" class="form-control" placeholder="Nhập email">
                  </div>
                  <div class="form-group">
                    <label for="user">Password</label>
                    <input type="text" name="password" value="{{ substr_replace($user->password, '********', 0) }}" class="form-control" placeholder="Nhập mật khẩu">
                  </div>


                
                </div>

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Cập Nhật Tài Khoản</button>
                </div>
                @csrf
              </form>
            </div>
@endsection

