@extends('layouts.app')
@section('title', 'Loại đồng hồ')
@section('content')
 <div class="card">
    <div class="card-header">Loại đồng hồ</div>
    <div class="card-body table-responsive">
    <form action="{{ route('admin.tinhtrang.sua',['id' => $tinhtrang -> id]) }}" method="post">
        @csrf
        <div class="mb-3">
        <label for="tinhtrang" class="form-label  @error('tinhtrang') is-invalid @enderror" value="{{ old('tinhtrang') }}">Tên loại </label>
            <input type="text" class="form-control" id="tinhtrang" name="tinhtrang">
            @error('tinhtrang')
                <div class="invalid-feedback"><strong>{{ $message }}</strong></div>
            @enderror
        </div>

        <button type="submit" class="btn btn-primary">Cập nhật</button>
    </form>
    </div>
 </div>
@endsection