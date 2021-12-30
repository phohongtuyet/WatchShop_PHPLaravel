@extends('layouts.app')
@section('title', 'Thương hiệu đồng hồ')
@section('content')
 <div class="card">
    <div class="card-header">Thương hiệu đồng hồ</div>
    <div class="card-body table-responsive">
    <form action="{{ route('admin.thuonghieu.sua',['id' => $thuonghieu -> id]) }}" method="post" enctype="multipart/form-data">
        @csrf
        <div class="mb-3">
            <label for="tenthuonghieu" class="form-label  @error('tenthuonghieu') is-invalid @enderror" value="{{ old('tenthuonghieu') }}">Tên thương hiệu</label>
            <input type="text" class="form-control" id="tenthuonghieu" name="tenthuonghieu" value="{{ $thuonghieu ->tenthuonghieu }}">
            @error('tenthuonghieu')
                <div class="invalid-feedback"><strong>{{ $message }}</strong></div>
            @enderror
        </div>

        <div class="mb-3">
            <label class="form-label" for="hinhanh">Hình ảnh sản phẩm</label>
            @if(!empty($thuonghieu->hinhanh))
                <img class="d-block rounded" src="{{ env('APP_URL') . '/storage/app/' . $thuonghieu->hinhanh }}" width="100" />
                <span class="d-block small text-danger">Bỏ trống nếu muốn giữ nguyên ảnh cũ.</span>
            @endif
            <input type="file" class="form-control @error('hinhanh') is-invalid @enderror" id="hinhanh" name="hinhanh" value="{{ $thuonghieu->hinhanh }}" />
            @error('hinhanh')
                <div class="invalid-feedback"><strong>{{ $message }}</strong></div>
            @enderror
        </div>

        <button type="submit" class="btn btn-primary">Cập nhật</button>
    </form>
    </div>
 </div>
@endsection