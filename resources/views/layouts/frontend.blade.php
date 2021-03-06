<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Watch Shop</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="{{ asset('public/assets/img/watch.ico')}}">
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <!-- CSS here -->
    <link rel="stylesheet" href="{{ asset('public/assets/css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{ asset('public/assets/css/owl.carousel.min.css')}}">
    <link rel="stylesheet" href="{{ asset('public/assets/css/flaticon.css')}}">
    <link rel="stylesheet" href="{{ asset('public/assets/css/slicknav.css')}}">
    <link rel="stylesheet" href="{{ asset('public/assets/css/animate.min.css')}}">
    <link rel="stylesheet" href="{{ asset('public/assets/css/magnific-popup.css')}}">
    <link rel="stylesheet" href="{{ asset('public/assets/css/fontawesome-all.min.css')}}">
    <link rel="stylesheet" href="{{ asset('public/assets/css/themify-icons.css')}}">
    <link rel="stylesheet" href="{{ asset('public/assets/css/slick.css')}}">
    <link rel="stylesheet" href="{{ asset('public/assets/css/nice-select.css')}}">
    <link rel="stylesheet" href="{{ asset('public/assets/css/style.css')}}">
    <link rel="stylesheet" href="{{ asset('public/assets/css/thongbao.css')}}">

</head>

<body>
    <!--? Preloader Start -->
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <img src="{{ asset('public/assets/img/logo/watchshop_logo1.png')}}"  alt="">
                </div>
            </div>
        </div>
    </div>
    <!-- Preloader Start -->
    <header>
        <!-- Header Start -->
        <div class="header-area">
            <div class="main-header header-sticky">
                <div class="container-fluid">
                    <div class="menu-wrapper">
                        <!-- Logo -->
                        <div class="logo">
                            <a href="{{route('frontend')}}"><img src="{{ asset('public/assets/img/logo/watchshop_logo1.png')}}" alt=""></a>
                        </div>
                        <!-- Main-menu -->
                        <div class="main-menu d-none d-lg-block">
                            <nav>                                                
                                <ul id="navigation">  
                                    <li><a href="{{route('frontend')}}">Trang ch???</a></li>
                                    <li><a href="{{route('frontend.sanpham.nam',['all'])}}">Nam</a>
                                        <ul class="submenu" style="width: 200px;">            
                                            @foreach($loai as $value)
                                                <li><a href="{{route('frontend.sanpham.nam',[$value->tenloai_slug])}}">{{$value->tenloai}}</a></li>         
                                            @endforeach
                                        </ul>
                                    </li>
                                    <li><a href="{{route('frontend.sanpham.nu',['all'])}}">N???</a>
                                        <ul class="submenu" style="width: 200px;">
                                           
                                            @foreach($loai as $value)
                                                <li><a href="{{route('frontend.sanpham.nu',[$value->tenloai_slug])}}">{{$value->tenloai}}</a></li>         
                                            @endforeach
                                        </ul>
                                    </li>
                                    <li><a href="{{route('frontend.sanpham.capdoi',['all'])}}">C???p ????i</a>
                                        <ul class="submenu" style="width: 200px;">
                                           
                                            @foreach($loai as $value)
                                                <li><a href="{{route('frontend.sanpham.capdoi',[$value->tenloai_slug])}}">{{$value->tenloai}}</a></li>         
                                            @endforeach
                                        </ul>
                                    </li>
                                    <li><a href="{{route('frontend.sanpham.treem',['all'])}}">Tr??? em</a>
                                        <ul class="submenu" style="width: 200px;">
                                           
                                            @foreach($loai as $value)
                                                <li><a href="{{route('frontend.sanpham.treem',[$value->tenloai_slug])}}">{{$value->tenloai}}</a></li>         
                                            @endforeach
                                        </ul>
                                    </li>
                                    <li><a href="{{route('frontend.thuonghieu',['all'])}}">Th????ng hi???u</a>
                                        <ul class="submenu" style="width: 500px;">  
                                            <div class="row row-cols-1 row-cols-md-3 g-1">
                                                @foreach($type as $value)
                                                    <div class="col mb-2 ms-1 ps-1">
                                                        <div class="card" style="width: 6rem;">
                                                            <a href="{{route('frontend.thuonghieu',['all' => $value->tenthuonghieu_slug])}}" style="padding: 0;">
                                                                <img src="{{ env('APP_URL') . '/storage/app/' . $value->hinhanh }}" class="img-fluid" >
                                                            </a>
                                                        </div>
                                                    </div>
                                                    
                                                @endforeach
                                            </div>
                                        </ul>
                                    </li>
                                    <li><a href="{{route('frontend.baiviet')}}">Tin t???c</a></li>

                                    <li><a href="{{route('frontend.lienhe')}}">Li??n h???</a></li>
                                </ul>
                            </nav>
                        </div>
                        <!-- Header Right -->
                        <div class="header-right">
                            <ul>
                                <li>
                                    <div class="nav-search search-switch">
                                        <span class="flaticon-search"></span>
                                    </div>
                                </li>
                                <li> 
                                    @if (!isset( Auth::user()->name))                                  
                                        <a href="{{route('khachhang.dangnhap')}}"><span class="flaticon-user"></span></a>
                                    @else
                                        <a href="{{route('khachhang')}}"><span class="flaticon-user"></span></a>
                                    @endif
                                </li>
                                
                                <li >
                                    <a href="{{route('frontend.giohang')}}" class="position-relative">
                                        <span class="flaticon-shopping-cart ">
                                            <sup class="position-absolute top-0 start-100 translate-middle badge rounded-circle bg-danger">{{ Cart::count() ?? 0 }}</sup>
                                        </span>
                                    </a> 
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- Mobile Menu -->
                    <div class="col-12">
                        <div class="mobile_menu d-block d-lg-none"></div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Header End -->
    </header>
    
    @yield('content')

    <footer>
        <!-- Footer Start-->
        <div class="footer-area footer-padding">
            <div class="container">
                <div class="row d-flex justify-content-between">
                    <div class="col-xl-3 col-lg-3 col-md-5 col-sm-6">
                        <div class="single-footer-caption mb-50">
                            <div class="single-footer-caption mb-30">
                                <!-- logo -->
                                <div class="footer-logo">
                                    <a href="{{route('frontend')}}"><img src="{{ asset('public/assets/img/logo/watchshop_logo1.png')}}" alt=""></a>
                                </div>
                                <div class="footer-tittle">
                                    <div class="footer-pera">
                                        <p>C???a h??ng ch??ng t??i chuy??n kinh doanh c??c lo???i ????? h???ng c?? m???t tr??n th???i gi???i. C?? nh??n h??a theo t???ng y??u c???u c???a kh??ch h??ng</p>
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-3 col-md-3 col-sm-5">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>Links</h4>
                                <ul>
                                    <li><a href="#">V??? ch??ng t??i</a></li>
                                    <li><a href="#">??u ????i & Gi???m gi??</a></li>
                                    <li><a href="#">M?? gi???m gi?? </a></li>
                                    <li><a href="{{route('frontend.lienhe')}}">Li??n h???</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-4 col-sm-7">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>New Products</h4>
                                <ul>
                                    <li><a href="{{route('frontend.sanpham.nam',['all'])}}">?????ng h??? nam</a></li>
                                    <li><a href="{{route('frontend.sanpham.nu',['all'])}}">?????ng h??? n???</a></li>
                                    <li><a href="{{route('frontend.thuonghieu',['all'])}}">Th????ng hi???u</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-5 col-sm-7">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>H??? tr???</h4>
                                <ul>
                                    <li><a href="#">C??c c??u h???i th?????ng g???p</a></li>
                                    <li><a href="#">??i???u kho???n v?? ??i???u ki???n</a></li>
                                    <li><a href="#">Ch??nh s??ch b???o m???t</a></li>
                                    <li><a href="#">B??o c??o v???n ????? thanh to??n</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Footer bottom -->
                <div class="row align-items-center">
                    <div class="col-xl-7 col-lg-8 col-md-7">
                        <div class="footer-copy-right">
                            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            Copyright &copy;<script>document.write(new Date().getFullYear());</script> <i class="fa fa-heart" aria-hidden="true"></i> b???i Nh??m<a href="" target="_blank"> T??nh Tuy???t Th???ng</a>
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>                  
                        </div>
                    </div>
                    <div class="col-xl-5 col-lg-4 col-md-5">
                        <div class="footer-copy-right f-right">
                            <!-- social -->
                            <div class="footer-social">
                                <a href="#"><i class="fab fa-twitter"></i></a>
                                <a href=""><i class="fab fa-facebook-f"></i></a>
                                <a href="#"><i class="fab fa-behance"></i></a>
                                <a href="#"><i class="fas fa-globe"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End-->
    </footer>
    <!--? Search model Begin -->
    <div class="search-model-box">
        <div class="h-100 d-flex align-items-center justify-content-center">
            <div class="search-close-btn">+</div>
            <form class="search-model-form" action="{{route('frontend.search')}}" method="get">
                <input type="text" name="key" id="search-input" placeholder="S???n ph???m b???n mu???n t??m....">
            </form>
        </div>
    </div>
    <!-- Search model end -->

    <!-- JS here -->

    <script src="{{ asset('public/assets/js/vendor/modernizr-3.5.0.min.js')}}"></script>
    <!-- Jquery, Popper, Bootstrap -->
    <script src="{{ asset('public/assets/js/vendor/jquery-1.12.4.min.js')}}"></script>
    <script src="{{ asset('public/assets/js/popper.min.js')}}"></script>
    <script src="{{ asset('public/assets/js/bootstrap.min.js')}}"></script>
    <!-- Jquery Mobile Menu -->
    <script src="{{ asset('public/assets/js/jquery.slicknav.min.js')}}"></script>

    <!-- Jquery Slick , Owl-Carousel Plugins -->
    <script src="{{ asset('public/assets/js/owl.carousel.min.js')}}"></script>
    <script src="{{ asset('public/assets/js/slick.min.js')}}"></script>

    <!-- One Page, Animated-HeadLin -->
    <script src="{{ asset('public/assets/js/wow.min.js')}}"></script>
    <script src="{{ asset('public/assets/js/animated.headline.js')}}"></script>
    <script src="{{ asset('public/assets/js/jquery.magnific-popup.js')}}"></script>

    <!-- Scrollup, nice-select, sticky -->
    <script src="{{ asset('public/assets/js/jquery.scrollUp.min.js')}}"></script>
    <script src="{{ asset('public/assets/js/jquery.nice-select.min.js')}}"></script>
    <script src="{{ asset('public/assets/js/jquery.sticky.js')}}"></script>
    
    <!-- contact js -->
    <script src="{{ asset('public/assets/js/contact.js')}}"></script>
    <script src="{{ asset('public/assets/js/jquery.form.js')}}"></script>
    <script src="{{ asset('public/assets/js/jquery.validate.min.js')}}"></script>
    <script src="{{ asset('public/assets/js/mail-script.js')}}"></script>
    <script src="{{ asset('public/assets/js/jquery.ajaxchimp.min.js')}}"></script>
    
    <!-- Jquery Plugins, main Jquery -->	
    <script src="{{ asset('public/assets/js/plugins.js')}}"></script>
    <script src="{{ asset('public/assets/js/main.js')}}"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>

        $(document).ready(function() {
            $('.thongbao').addClass("show");
           $('.thongbao').addClass("showAlert");
           $('.thongbao').removeClass('hide');
            $('.thongbao').delay(2000).slideUp(500);
        });
    </script>
</body>
</html>