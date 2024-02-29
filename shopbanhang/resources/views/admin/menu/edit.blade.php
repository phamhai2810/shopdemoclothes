@extends('admin.main')


@section('content')
<div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Sửa Danh Mục</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form action="" method="POST">
                <div class="card-body">
                  <div class="form-group">
                    <label for="menu">Tên Danh Mục</label>
                    <input type="text" name="name" value="{{ $menu->name }}" class="form-control" placeholder="Nhập tên danh mục">
                  </div>
                  <div class="form-group">
                    <label for="menu">Danh Mục</label>
                    <select name="parent_id" class="form-control" id="">
                      <option value="0" {{ $menu->parent_id == 0 ? 'selected':''}}>Danh Mục Cha</option>
                      @foreach ($menus as $menuParent)
                        <option value="{{ $menuParent->id }}" {{ $menu->parent_id == $menuParent->id ? 'selected':''}}>{{ $menuParent->name }}</option>
                      @endforeach
                    </select>
                  </div>
                  <div class="form-group">
                    <label for="menu">Mô Tả</label>
                    <textarea name="description" class="form-control">{{ $menu->description }}</textarea>
                  </div>
                  <div class="form-group">
                    <label for="menu">Mô Tả Chi Tiết</label>
                    <textarea name="content" id="long-description" class="form-control">{{ $menu->content }}</textarea>
                  </div>

                  <div class="form-group">
                        <label for="menu">Kích Hoạt</label>
                        <div class="form-check">
                          <input class="form-check-input" type="radio" id="active" value="1" name="active" {{ $menu->active == 1 ? 'checked=""':'' }}>
                          <label class="form-check-label" for="active">Có</label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="radio" id="no_active" value="0" name="active" {{ $menu->active == 0 ? 'checked=""':'' }}>
                          <label class="form-check-label" for="no_active">Không</label>
                        </div>
                  </div>
                </div>

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Cập Nhật Danh Mục</button>
                </div>
                @csrf
              </form>
            </div>
@endsection

