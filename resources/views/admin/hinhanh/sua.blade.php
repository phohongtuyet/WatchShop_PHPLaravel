@extends('layouts.admin')
@section('title', 'Sửa hình ảnh')
@section('content')
<div class="card">
    <div class="card-body">
        <form action="{{ route('admin.hinhanh.sua',['id' => $hinhanh->id]) }}" method="post" enctype="multipart/form-data">
            @csrf          
            <div class="mb-3">
                <label class="form-label" for="HinhAnh">Hình ảnh</label>
                <input type="file" class="form-control @error('HinhAnh') is-invalid @enderror"  name="HinhAnh" accept=".jpg, .jpeg, .png" />
                @error('HinhAnh')
                    <div class="invalid-feedback"><strong>{{ $message }}</strong></div>
                @enderror
            </div>          
            <button type="submit" class="btn btn-primary"><i class="fas fa-save"></i> Cập nhật</button>
        </form>
    </div>
</div>
@endsection