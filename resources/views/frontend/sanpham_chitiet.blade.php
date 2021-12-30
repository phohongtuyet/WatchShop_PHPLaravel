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
                            <h2>Watch Shop</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Hero Area End-->
    <!--================Single Product Area =================-->
    <div class="product_image_area">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="product_img_slide owl-carousel">
                        @foreach($hinhanh as $img)
                            <div class="single_product_img">                          
                                <img src="{{ env('APP_URL') . '/storage/app/' . $img->hinhanh }}" alt="#"  class="img-fluid">
                            </div>                       
                        @endforeach
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="single_product_text text-center">
                        <h3>{{$sanpham->tensanpham}}</h3>
                        <p>
                        {{$sanpham->motasanpham}}                 
                        </p>
                        <div class="card_area">
                            <form method="get" action="{{ route('frontend.giohang.them.chitiet',['tensanpham_slug' => $sanpham->tensanpham_slug]) }}">
                            @csrf
                                <div class="product_count_area">
                                    <p>Số lượng</p>
                                    <div class="product_count d-inline-block">
                                        <span class="product_count_item inumber-decrement"> 
                                            <i class="ti-minus"></i>
                                        </span>
                                        <input class="product_count_item input-number" name="qty" type="text" value="1" min="0" max="10">
                                        <span class="product_count_item number-increment"> 
                                            <i class="ti-plus"></i>
                                        </span>
                                    </div>
                                    <p>{{ number_format($sanpham->dongia )}} VNĐ</p>
                                </div>
                                <div class="form-group mt-2 ">
                                    <button type="submit" class="button button-contactForm btn_1 boxed-btn">add to cart  </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--================End Single Product Area =================-->
    <!-- subscribe part here -->
    <section class="subscribe_part section_padding">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="subscribe_part_content">
                        <h2>Get promotions & updates!</h2>
                        <p>Seamlessly empower fully researched growth strategies and interoperable internal or “organic” sources credibly innovate granular internal .</p>
                        <div class="subscribe_form">
                            <input type="email" placeholder="Enter your mail">
                            <a href="#" class="btn_1">Subscribe</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- subscribe part end -->
</main> 

<style>
.owl-carousel .owl-item img {
    display: block;
    width: 50%;
    margin-left: 300px;
}

</style>
@endsection