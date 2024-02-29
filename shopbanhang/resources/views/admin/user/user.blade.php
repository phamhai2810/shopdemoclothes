@extends('admin.main')

@section('content')
    <div class="">
        <a href="/admin/users/add">
            <button style="background-color: #007bff; margin-bottom: 10px; color: #fff; 
            border-radius: 2px; border: 2px solid transparent; padding: 6px;">Thêm Tài Khoản
            </button>
        </a>
    </div>
    <table class="table">
        <thead>
        <tr>
            <th style="width: 50px">ID</th>
            <th>Tên Tài Khoản</th>
            <th>Email</th>
            <th>Ngày Tạo</th>
            <th style="width: 100px">&nbsp;</th>
        </tr>
        </thead>
        <tbody>
        @foreach($users as $key => $user)
            <tr>
                <td>{{ $user->id }}</td>
                <td>{{ $user->name }}</td>
                <td>{{ $user->email }}</td>
                <td>{{ $user->created_at }}</td>
                <td>
                    <a class="btn btn-primary btn-sm" href="/admin/users/edit/{{ $user->id }}">
                        <i class="fas fa-edit"></i>
                    </a>
                    <a class="btn btn-danger btn-sm" href="#" 
                    onclick="removeRow({{ $user->id }} ,'/admin/users/destroy')">
                    <i class="fas fa-trash"></i></a>
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>

    <div class="card-footer clearfix">
        {!! $users->links() !!}
    </div>
@endsection