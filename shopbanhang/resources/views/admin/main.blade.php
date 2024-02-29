
<!DOCTYPE html>
<html lang="en">
<head>
    @include('admin.head')
</head>


<body class="hold-transition sidebar-mini layout-fixed">
<!-- Site wrapper -->
<div class="wrapper">
  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <li class="nav-item">
        <a class="nav-link" href="logout">Đăng Xuất</a>
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->


  @include('admin.sidebar')


  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        @include('admin.alert')
        <div class="row mb-2">
          <div class="col-sm-12">
            <h1>{{ $title }}</h1>
          </div>
          <div class="col-sm-6">
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
    <section class="content-header">


    @yield('content')


    </section>
  </div>
  <!-- /.content-wrapper -->

  <footer class="main-footer">
    
  </footer>

</div>
<!-- ./wrapper -->

@include('admin.footer')
</body>
</html>
