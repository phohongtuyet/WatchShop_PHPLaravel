@extends('layouts.admin')
@section('title', 'Bài viết')
@section('content')
 <div class="card">
    <div class="card-header">Thêm bài viết</div>
    <div class="card-body table-responsive">
    <form action="{{ route('admin.baiviet.them') }}" method="post">
        @csrf
        <div class="mb-3">
            <label class="form-label" for="chude_id">Thương hiệu</label>
            <select class="form-control @error('chude_id') is-invalid @enderror" name="chude_id" id="chude_id" value="{{ old('chude_id') }}" > 
                <option value="">-- Chọn chủ đề --</option>
                @foreach($chude as $value)
                    <option value="{{ $value->id }}">{{ $value->tenchude }}</option>
                @endforeach
            </select>
            @error('chude_id')
                <div class="invalid-feedback"><strong>{{ $message }}</strong></div>
            @enderror
        </div>  
        <div class="mb-3">
            <label for="tieude" class="form-label  @error('tieude') is-invalid @enderror" >Tiêu đề   </label>
            <input type="text" class="form-control" id="tieude" name="tieude" value="{{ old('tieude') }}">
            @error('tieude')
                <div class="invalid-feedback"><strong>{{ $message }}</strong></div>
            @enderror
        </div>
        <div class="mb-3">
            <label for="tomta" class="form-label  @error('tomta') is-invalid @enderror" >Tóm tắt</label>
            <input type="text" class="form-control" id="tomta" name="tomta" value="{{ old('tomta') }}">
            @error('tomta')
                <div class="invalid-feedback"><strong>{{ $message }}</strong></div>
            @enderror
        </div>
        <div class="mb-3" >
            <label for="noidung" class="form-label  @error('noidung') is-invalid @enderror" >Nội dung</label>
            <textarea id="noidung" class="form-control" name="noidung" value="{{ old('noidung') }}"></textarea>
            @error('noidung')
                <div class="invalid-feedback"><strong>{{ $message }}</strong></div>
            @enderror
        </div>
       

        <button type="submit" class="btn btn-primary">Thêm vào CSDL</button>
    </form>
    <script src="https://cdn.ckeditor.com/4.17.1/full/ckeditor.js"></script>
    <script>
        CKEDITOR.replace('noidung', {
			height: 300,
            baseFloatZIndex: 10005,
            removeButtons: 'PasteFromWord',
            displayFoldersPanel: false,
            toolbarGroups: [{
                "name": "basicstyles",
                "groups": ["basicstyles"]
            },
            {
                "name": "links",
                "groups": ["links"]
            },
            {
                "name": "paragraph",
                "groups": ["list", "blocks"]
            },
            {
                "name": "document",
                "groups": ["mode"]
            },
            {
                "name": "insert",
                "groups": ["insert"]
            },
            {
                "name": "styles",
                "groups": ["styles"]
            },
            
        ],
      // Remove the redundant buttons from toolbar groups defined above.
      removeButtons: 'Strike,Subscript,Superscript,Anchor,Specialchar,PasteFromWord'
        });
    </script>
    </div>
 </div>
@endsection
