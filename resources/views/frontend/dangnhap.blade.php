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
                            <h2>Đăng nhập</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Hero Area End-->
    <!--================login_part Area =================-->
    <section class="login_part section_padding ">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6">
                    <div class="login_part_text text-center">
                        <div class="login_part_text_iner">
                            <h2>Mới đến cửa hàng của chúng tôi?</h2>
                            <a href="{{route('khachhang.dangky')}}" class="btn_3">Tạo một tài khoản</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    @if (session('status'))
                        <div id="AlertBox" class="alert alert-success " role="alert">
                            {!! session('status') !!}
                        </div>
                    @endif
                    <div class="login_part_form">
                        <div class="login_part_form_iner">
                            <h3>Chào mừng trở lại ! <br/>Hãy đăng nhập ngay bây giờ</h3>
                            <form class="row contact_form" action="{{ route('login') }}" method="post" novalidate="novalidate">
                            @csrf

                                <div class="col-md-12 form-group p_star">
                                    <input type="text" class="form-control{{ ($errors->has('email') || $errors->has('username')) ? ' is-invalid' : '' }}"
                                        name="email" value="{{ old('email') }}" placeholder="Tên đăng nhập hoặc Email *" required />
                                        @if ($errors->has('email') || $errors->has('username'))
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ empty($errors->first('email')) ? $errors->first('username') : $errors->first('email') }}</strong>
                                            </span>
                                        @endif
                                </div>
                                <div class="col-md-12 form-group p_star">
                                    <input type="password" class="form-control @error('password') is-invalid @enderror" name="password" placeholder="Mật khẩu *" required />
                                        @error('password')
                                            <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                                        @enderror
                                </div>
                                <div class="col-md-12 form-group">
                                    <div class="creat_account d-flex align-items-center">
                                        <input type="checkbox" id="f-option" name="selector">
                                        <label for="f-option">Ghi nhớ tài khoản</label>
                                    </div>
                                    <button type="submit" value="submit" class="btn_3">
                                        đăng nhập
                                    </button>
                                    <a class="lost_pass" href="#">Quên mật khẩu?</a>
                                </div>
                                <div class="row g-3 ">
                                    <div class="col">
                                        <a  class="btn_3" href="{{ route('google.login') }}"><i class="ion-social-googleplus"></i>Google</a>
                                    </div>
                                    <div class="col">
                                        <a  class="btn_3" href="#"><i class="ion-social-googleplus"></i>Facebook</a>
                                    </div>
                                </div>
                               
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================login_part end =================-->
</main>

@endsection