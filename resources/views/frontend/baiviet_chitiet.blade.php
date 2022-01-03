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
                            <h2>Chi tiết bài viết </h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--================Blog Area =================-->
    <section class="blog_area single-post-area section-padding">
        <div class="container">
        @if(session()->has('success'))
            <div class="alert alert-success">
               {{ session()->get('success') }}
            </div>
          @endif
        <div class="row">
            <div class="col-lg-12 posts-list">
                <div class="single-post">
                    <div class="feature-img">
                    <img class="img-fluid" src="assets/img/blog/single_blog_1.png" alt="">
                    </div>
                    <div class="blog_details">
                    <h2>
                        {{$baiviet->tieude}}
                    </h2>
                    <ul class="blog-info-link mt-3 mb-4">
                        <li><a href="#"><i class="fa fa-user"></i>{{$baiviet->nguoidung->name}}</a></li>
                        <li><a href="#"><i class=""></i>{{$baiviet->created_at}}</a></li>
                    </ul>
                    <p class="excert">
                        {!!html_entity_decode($baiviet->noidung)!!}
                    </p>                       
                    </div>
                </div>
               
                
                <div class="comments-area">
                    <h4>{{ $binhluan->count()}} Bình luận</h4>
                    @foreach($binhluan as $value)
                    <div class="comment-list">
                        <div class="single-comment justify-content-between d-flex">
                            <div class="user justify-content-between d-flex">
                                <div class="thumb">
                                    <img src="assets/img/comment/comment_1.png" alt="">
                                </div>
                                <div class="desc">
                                    <p class="comment">
                                        {{$value->noidung}}
                                    </p>
                                    <div class="d-flex justify-content-between">
                                        <div class="d-flex align-items-center">
                                            <h5>
                                                <a href="#">{{$value->created}}</a>
                                            </h5>
                                            <p class="date">{{$value->created_at}} </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
                @if($baiviet->binhluan == 1)
                <div class="comment-form">
                    <h4>Để lại bình luận </h4>
                    <form class="form-contact comment_form" action="{{route('frontend.binhluan',['tieude_slug' => $baiviet->tieude_slug])}}" method="post" id="commentForm">
                    @csrf
                        <div class="row">
                            <div class="col-12">
                                <div class="form-group">
                                    <textarea class="form-control w-100" name="noidung" id="noidung" cols="30" rows="9"
                                    placeholder="Nội dung "></textarea>
                                </div>
                            </div> 
                        </div>
                        @if(Auth::user() == null)
                            <div class="form-group">
                                <a href="{{route('khachhang.dangnhap')}}" class="button button-contactForm btn_1 boxed-btn">đăng nhập để bình luận  </a>
                            </div>
                        @else
                            <div class="form-group">
                                <button type="submit" class="button button-contactForm btn_1 boxed-btn">Bình luận </button>
                            </div>
                        @endif
                    </form>
                </div>
                @endif
            </div>
            
        </div>
        </div>
    </section>
    <!--================ Blog Area end =================-->
</main>


@endsection