@extends('layouts.app')
@section('title', 'Sản phẩm')

@section('content')
    <div class="card">
        <div class="card-header">Thêm đồng hồ  </div>
        <div class="card-body">
            <form action="{{ route('admin.sanpham.them') }}" method="post" enctype="multipart/form-data">
                @csrf          
                <div class="mb-3">
                    <label class="form-label" for="thuonghieu_id">Thương hiệu</label>
                    <select class="form-control @error('thuonghieu_id') is-invalid @enderror" name="thuonghieu_id" id="thuonghieu_id" require> 
                        <option value="">-- Chọn thương hiệu --</option>
                        @foreach($thuonghieu as $value)
                            <option value="{{ $value->id }}">{{ $value->tenthuonghieu }}</option>
                        @endforeach
                    </select>
                    @error('thuonghieu_id')
                        <div class="invalid-feedback"><strong>{{ $message }}</strong></div>
                    @enderror
                </div>  
                <div class="mb-3">
                    <label class="form-label" for="chatlieu_id">Chất liệu</label>
                    <select class="form-control @error('chatlieu_id') is-invalid @enderror" name="chatlieu_id" id="chatlieu_id" require> 
                        <option value="">-- Chọn chất liệu--</option>
                        @foreach($chatlieu as $value)
                            <option value="{{ $value -> id}}">{{ $value -> tenchatlieu}}</option>
                        @endforeach
                    </select>
                    @error('chatlieu_id')
                        <div class="invalid-feedback"><strong>{{ $message }}</strong></div>
                    @enderror
                </div>  
                <div class="mb-3">
                    <label class="form-label" for="loai_id">Loại </label>
                    <select class="form-control @error('loai_id') is-invalid @enderror" name="loai_id" id="loai_id" require> 
                        <option value="">-- Chọn loại --</option>
                        @foreach($loai as $value)
                            <option value="{{ $value->id }}">{{ $value->tenloai }}</option>
                        @endforeach
                    </select>
                    @error('loai_id')
                        <div class="invalid-feedback"><strong>{{ $message }}</strong></div>
                    @enderror
                </div> 
                <div class="mb-3">
                    <label class="form-label" for="tensanpham">Tên đồng hồ </label>
                    <input type="text" class="form-control @error('tensanpham') is-invalid @enderror" id="tensanpham" name="tensanpham"  value="{{ old('tensanpham') }}" />
                    @error('tensanpham')
                        <div class="invalid-feedback"><strong>{{ $message }}</strong></div>
                    @enderror
                </div>  
                <div class="mb-3">
                    <label class="form-label" for="gioitinh">Đối tượng sử dụng</label>
                    <select class="form-control @error('gioitinh') is-invalid @enderror" name="gioitinh" id="gioitinh" require> 
                        <option value="">-- Chọn --</option>
                        <option value="1" >Nam</option>
                        <option value="2" >Nữ</option>
                        <option value="3" >Unisex</option>
                        
                    </select>
                    @error('gioitinh')
                        <div class="invalid-feedback"><strong>{{ $message }}</strong></div>
                    @enderror
                </div>  
                <div class="mb-3">
                    <label class="form-label" for="soluong">Số lượng</label>
                    <input type="number" class="form-control @error('soluong') is-invalid @enderror" id="soluong" name="soluong"  value="{{ old('soluong') }}" required />
                    @error('soluong')
                        <div class="invalid-feedback"><strong>{{ $message }}</strong></div>
                    @enderror
                </div>  
                <div class="mb-3">
                    <label class="form-label" for="dongia">Đơn giá</label>
                    <input type="dongia" class="form-control @error('dongia') is-invalid @enderror" id="dongia" name="dongia" value="{{ old('dongia') }}" required />
                    @error('dongia')
                        <div class="invalid-feedback"><strong>{{ $message }}</strong></div>
                    @enderror
                </div> 
                <div class="mb-3">
                    <label class="form-label" for="HinhAnh">Hình ảnh</label>
                    <input type="file" class="form-control @error('HinhAnh') is-invalid @enderror"  name="HinhAnh[]" accept=".jpg, .jpeg, .png" multiple />
                    @error('HinhAnh')
                        <div class="invalid-feedback"><strong>{{ $message }}</strong></div>
                    @enderror
                </div>  
                <div class="mb-3">
                    <label class="form-label" for="dongia">Mô tả</label>
                    <textarea class="form-control" id="motasanpham" name="motasanpham"  value="{{ old('motasanpham') }}"></textarea>
                    @error('motasanpham')
                        <div class="invalid-feedback"><strong>{{ $message }}</strong></div>
                    @enderror
                </div>          
                <button type="submit" class="btn btn-primary"> Thêm vào CSDL</button>
            </form>
        </div>
    </div>
@endsection