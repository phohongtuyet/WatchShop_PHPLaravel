@extends('layouts.app')
@section('title', 'Bài viết')
@section('content')
 <div class="card">
    <div class="card-header">Bài viết</div>
    <div class="card-body table-responsive">
    <form action="{{ route('admin.baiviet.them') }}" method="post">
        @csrf
        <div class="mb-3">
            <label for="tieude" class="form-label  @error('tieude') is-invalid @enderror" value="{{ old('tieude') }}">Tiêu đề   </label>
            <input type="text" class="form-control" id="tieude" name="tieude">
            @error('tieude')
                <div class="invalid-feedback"><strong>{{ $message }}</strong></div>
            @enderror
        </div>
        <div class="mb-3">
            <label for="tomta" class="form-label  @error('tomta') is-invalid @enderror" value="{{ old('tomta') }}">Tóm tắt</label>
            <input type="text" class="form-control" id="tomta" name="tomta">
            @error('tomta')
                <div class="invalid-feedback"><strong>{{ $message }}</strong></div>
            @enderror
        </div>
        <div class="mb-3" >
            <label for="noidung" class="form-label  @error('noidung') is-invalid @enderror" value="{{ old('noidung') }}">Nội dung</label>
            <textarea id="noidung" class="form-control" name="noidung"></textarea>
            @error('noidung')
                <div class="invalid-feedback"><strong>{{ $message }}</strong></div>
            @enderror
        </div>
       

        <button type="submit" class="btn btn-primary">Thêm vào CSDL</button>
    </form>
    <script src="https://cdn.ckeditor.com/ckeditor5/31.0.0/classic/ckeditor.js"></script>
    <script>
            ClassicEditor
                .create( document.querySelector( '#noidung' ) )
                .catch( error => {
                    console.error( error );
                } );
    </script>
    </div>
 </div>
@endsection
