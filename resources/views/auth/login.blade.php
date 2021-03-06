@extends('layouts.admin')
@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">Đăng nhập</div>
                    <div class="card-body">
                            @if(session('warning'))
                            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                <span class="font-weight-bold text-danger">
                                    <i class="fas fa-exclamation-triangle"></i> {{ session('warning') }}
                                </span>
                            </div>
                            @endif
                            <form method="post" action="{{ route('login') }}">
                                @csrf
                                <div class="mb-3">
                                    <label class="form-label" for="email">Tài khoản</label>
                                    <input type="text" class="form-control{{ ($errors->has('email') || $errors->has('username')) ? ' is-invalid' : '' }}" id="email" name="email" value="{{ old('email') }}" placeholder="Email hoặc Tên đăng nhập"  />
                                    @if ($errors->has('email') || $errors->has('username'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>
                                                {{ empty($errors->first('email')) ? $errors->first('username') : $errors->first('email') }}
                                            </strong>
                                        </span>
                                    @endif
                                </div>
                                <div class="mb-3">
                                    <label class="form-label" for="password">Mật khẩu</label>
                                    <input type="password" class="form-control @error('password') is-invalid @enderror" id="password" name="password"  />
                                    @error('password')
                                        <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                                    @enderror
                                </div>
                                <div class="mb-3">
                                    <label class="form-label" for="feedback-recaptcha">Xác thực đăng nhập</label>
                                        <div class="g-recaptcha @error('g-recaptcha-response') is-invalid @enderror"
                                            data-sitekey="{{ env('GOOGLE_RECAPTCHA_KEY') }}"
                                            data-size="normal"
                                            data-theme="light">
                                        </div>
                                        @error('g-recaptcha-response')
                                            <span class="invalid-feedback" role="alert"><strong>{{ $message }}</strong></span>
                                        @enderror
                                </div>
                                <div class="mb-3 form-check">
                                    <input class="form-check-input" type="checkbox"
                                            id="remember" name="remember" {{ old('remember') ? 'checked' : '' }} />
                                    <label class="form-check-label" for="remember">Duy trì đăng nhập</label>
                                </div>
                                <div class="mb-0">
                                    <button type="submit" class="btn btn-info"><i class="fas fa-sign-in-alt"></i> Đăng nhập</button>
                                    @if (Route::has('password.request'))
                                        <a class="btn btn-link" href="{{ route('password.request') }}">Quên mật khẩu?</a>
                                    @endif
                                </div>
                            </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://www.google.com/recaptcha/api.js?hl=vi" async defer></script>

@endsection
