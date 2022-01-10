@extends('layouts.admin')
@section('content')

<section class="content">
   <div class="card-body text-center">
      <h3 >Chào mừng bạn đến với trang quản trị <span class="text-info">WatchShop</span></h3>    
  </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-3 col-6">
                <div class="small-box bg-info">
                    <div class="inner">
                        <h3>{{count($donhang)}}</h3>
                        <p>Đơn hàng mới</p>
                    </div>
                    <div class="icon">
                    <i class="ion ion-bag"></i>
                    </div>
                    <a href="{{route('admin.donhang.moi')}}" class="small-box-footer">Xem thêm <i class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <div class="col-lg-3 col-6">
                <div class="small-box bg-success">
                    <div class="inner">
                    <h3>
                      @php $tongtien=0; @endphp
                      @foreach($doanhthu as $value)
                        @php $tongtien += $value->tongsoluongban * $value->dongia; @endphp
                      @endforeach
                      {{number_format($tongtien)}}
                    </h3>

                    <p>Doanh thu hôm nay</p>
                    </div>
                    <div class="icon">
                    <i class="ion ion-stats-bars"></i>
                    </div>
                    <a href="{{route('admin.donhang.ngay')}}" class="small-box-footer"> Xem thêm <i class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <div class="col-lg-3 col-6">
                <div class="small-box bg-warning">
                    <div class="inner">
                    <h3>{{count($user)}}</h3>

                    <p>Đăng ký người dùng</p>
                    </div>
                    <div class="icon">
                    <i class="ion ion-person-add"></i>
                    </div>
                    <a href="{{route('admin.nguoidung')}}" class="small-box-footer">Xem thêm  <i class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <div class="col-lg-3 col-6">
                <div class="small-box bg-danger">
                    <div class="inner">
                    <h3>{{ $binhluan->count() }}</h3>
                    <p>Bình luân</p>
                    </div>
                    <div class="icon">
                    <i class="ion ion-pie-graph"></i>
                    </div>
                    <a href="{{route('admin.binhluan.danhsach')}}" class="small-box-footer">Xem thêm  <i class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>
        </div> 
    </div>
</section>
<div class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-6">
            <div class="card">
                <div class="card-header border-0">
                  <h3 class="card-title">Sản phẩm hết hàng</h3>
                  <div class="card-tools">
                    <a href="{{route('admin.sanpham.het.xuat')}}" class="btn btn-tool btn-sm">
                      <i class="fas fa-download"></i>
                    </a>
                    <a href="#" class="btn btn-tool btn-sm">
                      <i class="fas fa-bars"></i>
                    </a>
                  </div>
                </div>
                <div class="card-body table-responsive p-0">
                  <table class="table table-striped table-valign-middle">
                    <thead>
                      <tr>
                          <th>Tên sản phẩm</th>
                          <th>Giá</th>
                      </tr>
                    </thead>
                    <tbody>
                          @foreach($sanpham as $value)
                          <tr>
                              <td>{{$value->tensanpham}}</td>
                              <td>{{ number_format($value->dongia)}} </td> 
                          </tr>  
                          @endforeach              
                    </tbody>
                  </table>
                </div>
              </div>          
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>


@endsection
