@extends('layouts.apadminp')
@section('title', 'Chất liệu đồng hồ')
@section('content')
 <div class="card">
    <div class="card-header">Sửa chất liệu đồng hồ</div>
    <div class="card-body table-responsive">
    <form action="{{ route('admin.chatlieu.sua',['id' => $chatlieu -> id]) }}" method="post">
        @csrf
        <div class="mb-3">
        <label for="tenchatlieu" class="form-label  @error('tenchatlieu') is-invalid @enderror" value="{{ old('tenchatlieu') }}">Tên chất liệu </label>
            <input type="text" class="form-control" id="tenchatlieu" name="tenchatlieu">
            @error('tenchatlieu')
                <div class="invalid-feedback"><strong>{{ $message }}</strong></div>
            @enderror
        </div>

        <button type="submit" class="btn btn-primary">Cập nhật</button>
    </form>
    </div>
 </div>
@endsection