@extends('layouts.app')
@section('title', 'Thương hiệu đồng hồ')
@section('content')
 <div class="card">
    <div class="card-header">Thêm thương hiệu đồng hồ</div>
    <div class="card-body table-responsive">
    <form action="{{ route('admin.thuonghieu.them') }}" method="post" enctype="multipart/form-data">
        @csrf
        <div class="mb-3">
            <label for="tenthuonghieu" class="form-label  @error('tenthuonghieu') is-invalid @enderror" value="{{ old('tenthuonghieu') }}">Tên thương hiệu </label>
            <input type="text" class="form-control" id="tenthuonghieu" name="tenthuonghieu">
            @error('tenthuonghieu')
                <div class="invalid-feedback"><strong>{{ $message }}</strong></div>
            @enderror
        </div>

        <div class="mb-3">
            <label for="hinhanh" class="form-label  @error('hinhanh') is-invalid @enderror" value="{{ old('hinhanh') }}">Hình ảnh</label>
            <input type="file" class="form-control" id="hinhanh" name="hinhanh">
            @error('hinhanh')
                <div class="invalid-feedback"><strong>{{ $message }}</strong></div>
            @enderror
        </div>

        <button type="submit" class="btn btn-primary">Thêm vào CSDL</button>
    </form>
    </div>
 </div>
@endsection