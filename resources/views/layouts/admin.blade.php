<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Trang quản trị | WatchShop</title>

	<!-- Google Font: Source Sans Pro -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
	<!-- Font Awesome Icons -->
	<link rel="stylesheet" href="{{ asset('public/admin/plugins/fontawesome-free/css/all.min.css')}}">
	<!-- IonIcons -->
	<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="{{ asset('public/admin/dist/css/adminlte.min.css')}}">
    
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.css">
  
	
	
</head>
	
<body class="hold-transition sidebar-mini">
	<div class="wrapper">
		<nav class="main-header navbar navbar-expand navbar-white navbar-light">
			<!-- Left navbar links -->
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
				</li>
				<li class="nav-item d-none d-sm-inline-block">
					<a href="" class="nav-link"></a>
				</li>
				<li class="nav-item d-none d-sm-inline-block">
					<a href="#" class="nav-link"></a>
				</li>
			</ul>

			<!-- Right navbar links -->
			<ul class="navbar-nav ml-auto">
			<!-- Navbar Search -->
				<li class="nav-item">
					<a class="nav-link" data-widget="navbar-search" href="#" role="button">
					<i class="fas fa-search"></i>
					</a>
					<div class="navbar-search-block">
					<form class="form-inline">
						<div class="input-group input-group-sm">
						<input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
						<div class="input-group-append">
							<button class="btn btn-navbar" type="submit">
							<i class="fas fa-search"></i>
							</button>
							<button class="btn btn-navbar" type="button" data-widget="navbar-search">
							<i class="fas fa-times"></i>
							</button>
						</div>
						</div>
					</form>
					</div>
				</li>

				
				<li class="nav-item">
					<a class="nav-link" data-widget="fullscreen" href="#" role="button">
					<i class="fas fa-expand-arrows-alt"></i>
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
					<i class="fas fa-th-large"></i>
					</a>
				</li>
			</ul>
		</nav>

		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<!-- Brand Logo -->
			<a href="{{route('admin.home')}}" class="brand-link" >
				<img src="{{ asset('public/assets/img/logo/watchshop_logo.png')}}" alt="" class="brand-image img-circle elevation-3" style="opacity: .8">
				<span class="" style="text-decoration: none">WatchShop</span>
			</a>

			<!-- Sidebar -->
			<div class="sidebar">
			<!-- Sidebar user panel (optional) -->
			<div class="user-panel mt-3 pb-3 mb-3 d-flex">
				<div class="info">
					@if(Auth::user() != null)
						<h2 class="badge bg-info text-dark" >{{ Auth::user()->name }}</h2> <br>
						<p class="badge bg-warning text-dark">{{ Auth::user()->role }}</p>
					@endif
				</div>
			</div>

			
				
			<!-- Sidebar Menu -->
			<nav class="mt-2">
				<ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
				@guest
					@if (Route::has('login'))
						<li class="nav-item">
							<a class="nav-link active" href="{{ route('login') }}"><i class="fas fa-sign-in-alt"> Đăng nhập </i></a>
						</li>
					@endif						
				@else
					<div class="form-inline">
						<div class="input-group" data-widget="sidebar-search">
						<input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
						<div class="input-group-append">
							<button class="btn btn-sidebar">
								<i class="fas fa-search fa-fw"></i>
							</button>
						</div>
						</div>
					</div>
				<!-- Add icons to the links using the .nav-icon class
					with font-awesome or any other icon font library -->
					<li class="nav-item">
						<a href="#" class="nav-link">
							<i class="nav-icon fas fa-cogs"></i>
							<p>
								Quản lý danh mục
								<i class="fas fa-angle-left right"></i>
								<span class="badge badge-info right"></span>
							</p>
						</a>
						<ul class="nav nav-treeview">
							<li class="nav-item">
								<a href="{{ route('admin.chatlieu') }}" class="nav-link">
								<i class="far fa-circle nav-icon"></i>
								<p>Chất liệu</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="{{ route('admin.thuonghieu') }}" class="nav-link">
								<i class="far fa-circle nav-icon"></i>
								<p>Thương hiệu</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="{{ route('admin.loai') }}" class="nav-link">
								<i class="far fa-circle nav-icon"></i>
								<p>Loại </p>
								</a>
							</li>
							<li class="nav-item">
								<a href="{{ route('admin.tinhtrang') }}" class="nav-link">
								<i class="far fa-circle nav-icon"></i>
								<p>Tình trạng</p>
								</a>
							</li>							
						</ul>
					</li> 
					<li class="nav-item">
						<a href="#" class="nav-link">
							<i class="nav-icon fas fa-newspaper"></i>
							<p>
								Quản lý bài viết
								<i class="fas fa-angle-left right"></i>
								<span class="badge badge-info right"></span>
							</p>
						</a>
						<ul class="nav nav-treeview">
							<li class="nav-item">
								<a href="{{ route('admin.baiviet') }}" class="nav-link">
								<i class="far fa-circle nav-icon"></i>
								<p>Bài viết  </p>
								</a>
							</li>										
						</ul>
						
					</li> 
					<li class="nav-item">
						<a href="#" class="nav-link">
							<i class="nav-icon fas fa-boxes"></i>
							<p>
								Quản lý sản phẩm
								<i class="fas fa-angle-left right"></i>
								<span class="badge badge-info right"></span>
							</p>
						</a>
						<ul class="nav nav-treeview">
							<li class="nav-item">
								<a href="{{ route('admin.sanpham') }}" class="nav-link">
								<i class="far fa-circle nav-icon"></i>
								<p>Sản phẩm </p>
								</a>
							</li>
													
						</ul>
					</li> 
					@if(Auth::user()->role == 'admin')
					<li class="nav-item">
						<a href="#" class="nav-link">
							<i class="nav-icon fas fa-users"></i>
							<p>
								Quản lý người dùng
								<i class="fas fa-angle-left right"></i>
								<span class="badge badge-info right"></span>
							</p>
						</a>
						<ul class="nav nav-treeview">
							<li class="nav-item">
								<a href="{{ route('admin.nguoidung') }}" class="nav-link">
								<i class="far fa-circle nav-icon"></i>
								<p>Người dùng</p>
								</a>
							</li>													
						</ul>
					</li> 
					<li class="nav-item">
						<a href="#" class="nav-link">
							<i class="fas fa-chart-bar"></i>							
							<p>
								Thống kê báo cáo
								<i class="fas fa-angle-left right"></i>
								<span class="badge badge-info right"></span>
							</p>
						</a>
						<ul class="nav nav-treeview">
							<li class="nav-item">
								<a href="{{ route('admin.donhang.doanhthu') }}" class="nav-link">
								<i class="far fa-circle nav-icon"></i>
								<p>Doanh thu</p>
								</a>
							</li>													
						</ul>
					</li>  
					@endif

					<li class="nav-item">
						<a href="#" class="nav-link">
							<i class="nav-icon fas fa-shopping-cart"></i>
							<p>
								Quản lý đặt hàng
								<i class="fas fa-angle-left right"></i>
								<span class="badge badge-info right"></span>
							</p>
						</a>
						<ul class="nav nav-treeview">
							<li class="nav-item">
								<a href="{{ route('admin.donhang') }}" class="nav-link">
								<i class="far fa-circle nav-icon"></i>
								<p>Đặt hàng</p>
								</a>
							</li>													
						</ul>
					</li> 
					<li class="nav-item">
						<a href="#" class="nav-link">
							<i class="nav-icon fas fa-user"></i>
							<p>
								Tài khoản
								<i class="fas fa-angle-left right"></i>
								<span class="badge badge-info right"></span>
							</p>
						</a>
						<ul class="nav nav-treeview">
							<li class="nav-item">
								<a href="{{ route('admin.nguoidung.info',['name' => Auth::user()->name ]) }}" class="nav-link">
								<i class="far fa-circle nav-icon"></i>
								<p>Thông tin tài khoản</p>
								</a>
							</li>
							<li class="nav-item">
								<a href="{{ route('logout') }}" class="nav-link" onclick="event.preventDefault();document.getElementById('logout-form').submit();">
									<i class="far fa-circle nav-icon"></i>
									<p>Đăng xuất   </p>
								</a>
								<form id="logout-form" action="{{ route('logout') }}" method="post" class="d-none">
										@csrf
								</form>
							</li>													
						</ul>
					</li> 
				@endguest              
				</ul>
			</nav>
			</div>
		</aside>

		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
				<div class="col-sm-6">
					<h1 class="m-0">@yield('title')</h1>
				</div><!-- /.col -->
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
					<li class="breadcrumb-item"><a href="{{route('admin.home')}}">Home</a></li>
					<li class="breadcrumb-item active">@yield('title')
					</li>
					</ol>
				</div><!-- /.col -->
				</div><!-- /.row -->
			</div><!-- /.container-fluid -->
			</div>
			<!-- /.content-header -->

			<!-- Main content -->
			@yield('content')
			<!-- /.content -->
		</div>

		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
		</aside>

		<footer class="main-footer">
			<strong>Copyright &copy; 2021</strong>  
		</footer>
	</div>


	<!-- jQuery -->
	<script src="{{ asset('public/admin/plugins/jquery/jquery.min.js')}}"></script>
	<!-- Bootstrap -->
	<script src="{{ asset('public/admin/plugins/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
	<!-- AdminLTE -->
	<script src="{{ asset('public/admin/dist/js/adminlte.js')}}"></script>

	<!-- OPTIONAL SCRIPTS -->
	<script src="{{ asset('public/admin/plugins/chart.js/Chart.min.js')}}"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="{{ asset('public/admin/dist/js/demo.js')}}"></script>
	<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
	<script src="{{ asset('public/admin/dist/js/pages/dashboard3.js')}}"></script>
	<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.js"></script>

	<script>
		
		$(document).ready(function() {
			$("#table_id").DataTable({
				"aLengthMenu": [[10, 25, 50, 100, -1], [10, 25, 50, 100, "Tất cả"]],
				"iDisplayLength": 25,
				"oLanguage": {
					"sLengthMenu": "Hiện _MENU_ dòng",
					"oPaginate": {
						"sFirst": "<i class='fas fa-step-backward'></i>",
						"sLast": "<i class='fas fa-step-forward'></i>",
						"sNext": "<i class='fas fa-chevron-right'></i>",
						"sPrevious": "<i class='fas fa-chevron-left'></i>"
					},
					"sEmptyTable": "Không có dữ liệu",
					"sSearch": "Tìm kiếm:",
					"sZeroRecords": "Không có dữ liệu",
					"sInfo": "Hiện từ _START_ đến _END_ của _TOTAL_ dòng",
					"sInfoEmpty" : "Không tìm thấy",
					"sInfoFiltered": " (tổng số _MAX_ dòng)"
				}
			});
			$("#table_id").wrap('<div class="table-responsive"></div>');
		});
	</script>

	</body>
</html>
