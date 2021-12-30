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
                            <h2>Đặt hàng</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--================Checkout Area =================-->
    <section class="checkout_area section_padding">
      <div class="container">
        <div class="returning_customer">
        @guest        
          <div class="check_title">
            <h2>
              Phản hồi khách hàng? 
              <a href="#">Nhấn vào đây để đăng nhập </a>
            </h2>
          </div>
          <p>
            Nếu bạn đã mua sắm với chúng tôi trước đây, vui lòng nhập thông tin chi tiết của bạn vào ô bên dưới. Nếu bạn là khách hàng mới, vui lòng chuyển sang phần Lập hóa đơn & Giao hàng.
          </p>

          <form class="row contact_form" action="{{route('login')}}" method="post" novalidate="novalidate">
          @csrf
            <div class="col-md-6 form-group p_star">
              <input type="text" class="form-control{{ ($errors->has('email') || $errors->has('username')) ? ' is-invalid' : '' }}"
              name="email" value="{{ old('email') }}" placeholder="Tên đăng nhập hoặc Email *" required />
              @if ($errors->has('email') || $errors->has('username'))
                  <span class="invalid-feedback" role="alert">
                      <strong>{{ empty($errors->first('email')) ? $errors->first('username') : $errors->first('email') }}</strong>
                  </span>
              @endif
            </div>
            <div class="col-md-6 form-group p_star">
              <input type="password" class="form-control @error('password') is-invalid @enderror" name="password" placeholder="Mật khẩu *" required />
              @error('password')
                  <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
              @enderror
            </div>
            <div class="col-md-12 form-group">
              <button type="submit" value="submit" class="btn_3">
                Đăng nhập
              </button>
              <div class="creat_account">
                <input type="checkbox" id="f-option" name="selector" />
                <label for="f-option">Ghi nhớ tài khoản</label>
              </div>
              <a class="lost_pass" href="#">Quên mật khẩu?</a>
            </div>
          </form>
          @else
            <div class="toggle_info">
                <span><i class="fas fa-user"></i> Bạn đã đăng nhập với tài khoản khách hàng <strong>{{ Auth::user()->name }}</strong>.</span>
            </div>
          @endguest
        </div>
        <div class="cupon_area">
          <div class="check_title">
            <h2>
              Có phiếu giảm giá?
              <a href="#" id="change_password_checkbox">Click here to enter your code</a>
            </h2>
          </div>
          <div id="change_password_group">
            <input type="text" placeholder="Enter coupon code" />
            <a class="tp_btn" href="#">Apply Coupon</a>
          </div>
        </div>
        <div class="billing_details">
          <div class="row">
            <div class="col-lg-8">
              <h3>Chi tiết thanh toán</h3>
              <form id="checkoutform" class="row contact_form" action="{{ route('frontend.dathang') }}" method="post" novalidate="novalidate" >
              @csrf
                <div class="col-md-12 form-group p_star">
                  <input type="text" class="form-control" name="name" placeholder="Họ và tên *" value="{{ Auth::user()->name ?? '' }}" required />
                </div>
                <div class="col-md-12 form-group p_star">
                  <input type="text" class="form-control" name="diachigiaohang" placeholder="Địa chỉ giao hàng *" required />
                </div>
                <div class="col-md-6 form-group p_star">
                  <input type="text" class="form-control" name="dienthoaigiaohang" placeholder="Điện thoại *" required />
                </div>
                <div class="col-md-6 form-group p_star">
                  <input type="text" class="form-control" name="email" placeholder="Địa chỉ Email *" value="{{ Auth::user()->email ?? '' }}" required />
                </div>                   
                <div class="col-md-12 form-group">
                  <div class="creat_account">
                    <input type="checkbox" id="f-option2" name="selector" />
                    <label for="f-option2">Tạo một tài khoản?</label>
                  </div>
                </div>
                <div class="col-md-12 form-group">
                  <div class="creat_account">
                    <h3>Chi tiết vận chuyển</h3>
                    <input type="checkbox" id="f-option3" name="selector" />
                    <label for="f-option3">Gửi đến một địa chỉ khác?</label>
                  </div>
                  <textarea class="form-control" name="message" id="message" rows="1"
                    placeholder="Order Notes"></textarea>
                </div>
              </form>
            </div>
            <div class="col-lg-4">
              <div class="order_box">
                <h2>Đơn hàng của bạn </h2>
                <ul class="list">
                  <li>
                    <a href="#">Sản phẩm
                      <span>Thành tiền</span>
                    </a>
                  </li>
                  @foreach(Cart::content() as $value)
                  <li>
                    <a href="#">{{ $value->name }}
                      <span class="middle">x  {{ $value->qty }}</span>
                      <span class="last">{{ number_format($value->price * $value->qty) }}</span>
                    </a>
                  </li>
                  @endforeach
                </ul>
                <ul class="list list_2">
                  <li>
                    <a href="#">Tổng tiền
                      <span>{{ Cart::subtotal() }}</span>
                    </a>
                  </li>                 
                  <li>
                    <a href="#">Phí vận chuyển
                      <span>Miễn phí vận chuyển</span>
                    </a>
                  </li>                 
                </ul>
                <div class="payment_item">
                  <div class="radion_btn">
                    <input type="radio" id="f-option5" name="selector" />
                      <label for="f-option5">Check payments</label>
                    <div class="check"></div>
                  </div>
                  <p>
                    Please send a check to Store Name, Store Street, Store Town,
                    Store State / County, Store Postcode.
                  </p>
                </div>
                <div class="payment_item active">
                  <div class="radion_btn">
                    <input type="radio" id="f-option6" name="selector" />
                    <label for="f-option6">Paypal </label>
                    <img src="img/product/single-product/card.jpg" alt="" />
                    <div class="check"></div>
                  </div>
                  <p>
                    Please send a check to Store Name, Store Street, Store Town,
                    Store State / County, Store Postcode.
                  </p>
                </div>
                <div class="creat_account">
                  <input type="checkbox" id="f-option4" name="selector" />
                  <label for="f-option4">I’ve read and accept the </label>
                  <a href="#">terms & conditions*</a>
                </div>
                <a class="btn_3" href="{{ route('frontend.dathang') }}"
                    onclick="event.preventDefault();document.getElementById('checkoutform').submit();"
                    class="btn btn-fill-out btn-block">Tiến hành đặt hàng</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--================End Checkout Area =================-->
</main>


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script>
    $(document).ready(function() {
        $("#change_password_group").hide();
        $("#change_password_checkbox").click(function() {
            if($(this))
            {
                $("#change_password_group").show();
            }
            else
            {
                $("#change_password_group").hide();
            }
        });
    });
</script>
@endsection