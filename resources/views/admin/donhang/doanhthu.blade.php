@extends('layouts.app')
@section('title', 'Thống kê doanh thu')
@section('content')
<div class="card">
    <div class="card-body">         
        <form action="{{ route('admin.donhang.doanhthu') }}" method="post" class="row row-cols-lg-auto g-3 align-items-center needs-validation" novalidate >
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