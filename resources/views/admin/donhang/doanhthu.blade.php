@extends('layouts.admin')
@section('title', 'Thống kê doanh thu')
@section('content')

@if(empty($doanhthu) == false)
<div class="card">
    <div class="card-body">         
        <form action="{{ route('admin.donhang.doanhthu') }}" method="get" class="row row-cols-lg-auto g-3 align-items-center needs-validation" novalidate >
        @csrf
            <div class="col-4">
                <div class="input-group has-validation">
                    <span class="input-group-text" id="inputGroupPrepend">Ngày bắt đầu</span>
                    <input type="date" class="form-control" id="validationCustomUsername" name="dateStart" aria-describedby="inputGroupPrepend" required>
                    <div class="invalid-feedback">
                        Vui lòng chọn ngày bắt đầu.
                    </div>
                </div>
            </div>
            <div class="col-4">
                <div class="input-group has-validation">
                <span class="input-group-text" id="inputGroupPrepend">Ngày kết thúc</span>
                <input type="date" class="form-control" id="validationCustomUsername" name="dateEnd" aria-describedby="inputGroupPrepend" required>
                    <div class="invalid-feedback">
                        Vui lòng chọn ngày kết thúc 
                    </div>
                </div>
            </div>
            <div class="col-4">
                <button type="submit" class="btn btn-primary">Thống kê</button>
            </div>
        </form>
    </div> 
    
    @if( $doanhthu->count() == null)
    <div class="alert alert-success text-center" role="alert">
        <p>không có sản phẩm nào được bán ra trong thời gian từ <strong>{{date('d-m-Y', strtotime($session_title_dateStart))}}</strong> đến <strong> {{date('d-m-Y', strtotime($session_title_dateEnd))}}</strong></p>
    </div>
    @else
    <div class="card-body table-responsive">
            <table class="table table-bordered table-hover table-sm mb-0">
                <thead>
                    <tr>
                        <th width="5%">#</th>
                        <th width="65%">Tên sản phẩm</th>
                        <th width="10%">Số lượng bán  </th>
                        <th width="10%">Đơn giá </th>
                        <th width="10%">Tổng tiền </th>

                    </tr>
                </thead>
                <tbody>
                    @foreach($doanhthu as $value)
                    <tr>
                        <td> # </td>
                        <td>{{ $value->tensanpham }}</td>
                        <td>{{number_format($value->tongsoluongban) }}</td>
                        <td>{{number_format($value->dongiaban) }}</td>   
                        <td>{{number_format($value->tongsoluongban * $value->dongiaban) }}</td>                
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
        @endif
</div>

@else
<div class="card">
    <div class="card-body">         
        <form action="{{ route('admin.donhang.doanhthu') }}" method="get" class="row row-cols-lg-auto g-3 align-items-center needs-validation" novalidate >
        @csrf
            <div class="col-4">
                <div class="input-group has-validation">
                    <span class="input-group-text" id="inputGroupPrepend">Ngày bắt đầu</span>
                    <input type="date" class="form-control" id="validationCustomUsername" name="dateStart" aria-describedby="inputGroupPrepend" required>
                    <div class="invalid-feedback">
                        Vui lòng chọn ngày bắt đầu.
                    </div>
                </div>
            </div>
            <div class="col-4">
                <div class="input-group has-validation">
                <span class="input-group-text" id="inputGroupPrepend">Ngày kết thúc</span>
                <input type="date" class="form-control" id="validationCustomUsername" name="dateEnd" aria-describedby="inputGroupPrepend" required>
                    <div class="invalid-feedback">
                        Vui lòng chọn ngày kết thúc 
                    </div>
                </div>
            </div>
            <div class="col-4">
                <button type="submit" class="btn btn-primary">Thống kê</button>
            </div>
        </form>
    </div> 
</div>

@endif

<script>
    (function () {
    'use strict'
    var forms = document.querySelectorAll('.needs-validation')
    Array.prototype.slice.call(forms)
        .forEach(function (form) {
        form.addEventListener('submit', function (event) {
            if (!form.checkValidity()) {
            event.preventDefault()
            event.stopPropagation()
            }

            form.classList.add('was-validated')
        }, false)
        })
    })()
</script>
@endsection