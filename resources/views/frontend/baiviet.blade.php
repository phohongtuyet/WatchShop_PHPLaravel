@extends('layouts.frontend')
@section('content')
<main>
    <!--? Hero Area Start-->
    <div class="slider-area ">
        <div class="single-slider slider-height2 d-flex align-items-center">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h2>{{ $session_title }}</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--? Hero Area End-->
    <!--================Blog Area =================-->
    <section class="blog_area section-padding">
        <div class="container">
            <div class="row">
                <div class=" col-lg-8 mb-5 mb-lg-0">
                    <div class="blog_left_sidebar">
                        @foreach($baiviet as $value)
                        <article class="blog_item">
                            <div class="blog_item_img">
                                @php
                                  $img = App\Http\Controllers\HomeController::LayHinhDauTien($value->noidung); 
                                @endphp
                                <img class="card-img rounded-0" src="{{$img}}"  width="50%">
                                <a href="{{route('frontend.baiviet_chitiet',['tieude_slug' =>  $value->tieude_slug])}}" class="blog_item_date">
                                    <h3>{{$value->created_at->format('d')}}</h3>
                                    <p>{{$value->created_at->format('m')}}</p>
                                </a>
                            </div>

                            <div class="blog_details">
                                <a class="d-inline-block" href="{{route('frontend.baiviet_chitiet',['tieude_slug' =>  $value->tieude_slug])}}">
                                    <h2>{{$value->tieude}}</h2>
                                </a>
                                <p>{{$value->tomta}}</p>
                                <ul class="blog-info-link">
                                    <li><a href="#"><i class="fa fa-user"></i>{{$value->NguoiDung->name}}</a></li>
                                    <li><a href="#"><i class="fa fa-eye"></i>{{$value->luotxem}} Lượt xem </a></li>
                                    <li><a href="#"><i class="fa fa-comments"></i>{{$value->binhluan}} Bình luận</a></li>
                                </ul>
                            </div>
                        </article>
                        @endforeach
                        <nav class="blog-pagination justify-content-center d-flex">
                            <ul class="pagination">
                                <li class="page-item">
                                   {{ $baiviet->links() }}
                                </li>                             
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="blog_right_sidebar">
                        <aside class="single_sidebar_widget search_widget">
                            <form action="#">
                                <div class="form-group">
                                    <div class="input-group mb-3">
                                        <input type="text" class="form-control" placeholder='Từ khóa '
                                            onfocus="this.placeholder = ''"
                                            onblur="this.placeholder = 'Search Keyword'">
                                        <div class="input-group-append">
                                            <button class="btns" type="button"><i class="ti-search"></i></button>
                                        </div>
                                    </div>
                                </div>
                                <button class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn"
                                    type="submit">Tìm kiếm</button>
                            </form>
                        </aside>
                        <aside class="single_sidebar_widget post_category_widget">
                            <h4 class="widget_title">Chủ đề</h4>
                            <ul class="list cat-list">
                                @foreach($chude as $value)
                                <li>
                                    <a href="{{route('frontend.baiviet_chude',['chude' => $value->tenchude_slug])}}" class="d-flex">
                                        <p>{{$value->tenchude}}</p>
                                    </a>
                                </li>
                                @endforeach
                                
                            </ul>
                        </aside>    
                       
                    </div>
                </div>
            </div>
        </div>
        
    </section>
    <!--================Blog Area =================-->
</main>

<style>
    .card-img {
        height: 500px;
        width: -webkit-fill-available;
    }
    .card-img img {
        
        width: 100%;
    }
</style>
@endsection