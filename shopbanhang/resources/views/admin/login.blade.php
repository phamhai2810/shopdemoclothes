
<!DOCTYPE html>
<html lang="en">
<head>
  @include('admin.head')
</head>
<div>
  <div><b style="color: green;">Tài Khoản Đăng Nhập Demo:</b> phamhaig281@gmail.com</div>
  <div><b style="color: green;">Mật Khẩu Đăng Nhập Demo:</b> 123</div>
</div>
<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
    <a href="#"><b>Admin</b>Louis Vuitton</a>
  </div>
  <!-- /.login-logo -->
  <div class="card">
    <div class="card-body login-card-body">
      <p class="login-box-msg">Đăng Nhập Để Bắt Đầu</p>

      <form action="/admin/users/login/store" method="post">
      @include('admin.alert')
        <div class="input-group mb-3">
          <input type="email" name="email" class="form-control" placeholder="Nhập Email">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password" name="password" class="form-control" placeholder="Nhập Mật Khẩu">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-12">
            <div class="icheck-primary">
              <input type="checkbox" name="remember" id="remember">
              <label for="remember">
                Lưu Mật Khẩu
              </label>
            </div>
          </div>
          <!-- /.col -->
          <div class="col-12">
            <button type="submit" class="btn btn-primary btn-block">Đăng Nhập</button>
          </div>
          <!-- /.col -->
        </div>
        @csrf
      </form>

      <div class="social-auth-links text-center mb-3">
        <p>- Hoặc -</p>
        <a href="#" class="btn btn-block btn-primary">
          <i class="fab fa-facebook mr-2"></i> Đăng Nhập Bằng Facebook
        </a>
        <a href="#" class="btn btn-block btn-danger">
          <i class="fab fa-google-plus mr-2"></i> Đăng Nhập Bằng Google+
        </a>
      </div>
      <!-- /.social-auth-links -->

      <p class="mb-1">
        <a href="forgot-password.html">Quên Mật Khẩu</a>
      </p>
      <p class="mb-0">
        <a href="register.html" class="text-center">Đăng Ký Thành Viên Mới</a>
      </p>
    </div>
    <!-- /.login-card-body -->
  </div>
</div>
<!-- /.login-box -->

@include('admin.footer')
</body>
</html>
