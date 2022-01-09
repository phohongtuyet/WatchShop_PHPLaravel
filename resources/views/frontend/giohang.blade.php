@extends('layouts.frontend')
@section('content')
<main>
    <!-- Hero Area Start-->
    <div class="slider-area ">
        <div class="single-slider slider-height2 d-flex align-items-center">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h2>Giỏ hàng </h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--================Cart Area =================-->
   
    <section class="cart_area section_padding">
    <div class="container">
    @if (session('status'))
        <div id="AlertBox" class="alert alert-success hide" role="alert">
            {!! session('status') !!}
        </div>
    @endif
        <div class="cart_inner">
            <div class="table-responsive">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col" width="50%">Sản phẩm</th>
                            <th scope="col" width="15%">Giá</th>
                            <th scope="col" width="10%">Số lượng</th>
                            <th scope="col" width="20%">Thành tiền</th>
                            <th scope="col" width="5%">Xóa</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach(Cart::content() as $value)
                            <tr>
                                <td>
                                    <div class="media">
                                        <div class="d-flex">
                                            <img src="{{ env('APP_URL') . '/storage/app/' . $value->options->image }}" alt="" />
                                        </div>
                                        <div class="media-body">
                                            <p>{{ $value->name }}</p>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <h5>{{ number_format($value->price) }}</h5>
                                </td>
                                <td>
                                    <div class="product_count">
                                        <span class="input-number-decrement">                                   
                                            <a  href="{{ route('frontend.giohang.giam', ['row_id' => $value->rowId]) }}"> 
                                                <i class="ti-minus"></i>
                                            </a>
                                        </span>
                                        <input type="text" name="qty" value="{{ $value->qty }}" class="qty" size="4" />
                                        <span class="input-number-increment">
                                            <a  href="{{ route('frontend.giohang.tang', ['row_id' => $value->rowId]) }}">       
                                                <i class="ti-plus"></i>
                                            </a>
                                        </span>
                                    </div>
                                </td>
                                <td>
                                    <h5>{{ number_format($value->price * $value->qty) }}</h5>
                                </td>
                                <td>
                                    <a href="{{route('frontend.giohang.xoa',['row_id' => $value->rowId])}}"><i class="fas fa-trash-alt"></i></a>
                                </td>
                            </tr>
                        @endforeach
                        <tr class="bottom_button">
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>

                            <td>
                                <div class="cupon_text float-right">
                                    <a class="btn_1" href="{{ route('frontend.giohang.xoatatca') }}">Xóa giỏ hàng </a>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>

                            <td>
                                <h5>Tổng tiền</h5>
                            </td>
                            <td>
                                <h3 class="font-weight-bold">{{ Cart::subtotal() }}</h3>
                            </td>
                            <td></td>

                        </tr>
                        
                    </tbody>
                </table>
                <div class="checkout_btn_inner float-right">
                    <a class="btn_1" href="{{route('frontend')}}">Tiếp tục mua hàng </a>
                    @if(!Auth::check())
                        <a class="btn_1 checkout_btn_1" href="{{route('khachhang.dangnhap')}}"> Đăng nhập để tiếp tục đặt hàng </a>
                    @else
                        <a class="btn_1 checkout_btn_1" href="{{route('frontend.dathang')}}">Tiến hành thanh toán  </a>
                    @endif
                </div>
            </div>
        </div>
    </section>
    <!--================End Cart Area =================-->
</main>

<style>
    .ti-minus:before {
        color: black;
    }
    .ti-plus:before {
        color: black;
    }

    .fa-trash-alt:before {
        color: black;
    }
</style>
@endsection