<?php

namespace App\Http\Controllers;

use App\Models\NguoiDung;
use App\Models\SanPham;
use App\Models\HinhAnh;
use App\Models\DonHang;
use App\Models\DonHang_ChiTiet;
use App\Models\BaiViet;
use App\Models\ChuDe;
use App\Models\BinhLuan;
use App\Models\ThuongHieu;
use App\Models\Loai;
use App\Mail\DatHangEmail;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Gloudemans\Shoppingcart\Facades\Cart;
use Socialite;

class HomeController extends Controller
{
    
    public function getHome()
    {            
        $sanpham = SanPham::select( 'sanpham.*',
        DB::raw('(select hinhanh from hinhanh where sanpham_id = sanpham.id  limit 1) as hinhanh'))
        ->where('sanpham.hienthi',1)
        ->where('sanpham.soluong','>',0)
        ->paginate(9);

        return view('frontend.index', compact('sanpham'));
        
    }

    public function getDangKy()
    {
        return view('frontend.dangky');
    }
    
    public function getDangNhap()
    {
        return view('frontend.dangnhap');
    }

    public function getGoogleLogin()
    {
        return Socialite::driver('google')->redirect();
    }
    
    public function getGoogleCallback()
    {
        try
        {
            $user = Socialite::driver('google')
            ->setHttpClient(new \GuzzleHttp\Client(['verify' => false]))
            ->stateless()
            ->user();
        }
        catch(Exception $e)
        {
            return redirect()->route('khachhang.dangnhap')->with('warning', 'Lỗi xác thực. Xin vui lòng thử lại!');
        }
            
        $existingUser = NguoiDung::where('email', $user->email)->first();
        if($existingUser)
        {
            // Nếu người dùng đã tồn tại thì đăng nhập
            Auth::login($existingUser, true);
            return redirect()->route('khachhang');
        }
        else
        {
            // Nếu chưa tồn tại người dùng thì thêm mới
            $newUser = NguoiDung::create([
                'name' => $user->name,
                'username' => Str::before($user->email, '@'),
                'email' => $user->email,
                'password' => Hash::make('larashop@2020'), // Gán mật khẩu tự do
            ]);
            
            // Sau đó đăng nhập
            Auth::login($newUser, true);
            return redirect()->route('khachhang');
    
        }    
    }
    
    public function getSearch(Request $request)
    {
          
        $sanpham = SanPham::select( 'sanpham.*',
        DB::raw('(select hinhanh from hinhanh where sanpham_id = sanpham.id  limit 1) as hinhanh'))
        ->where('sanpham.hienthi',1)
        ->where('sanpham.soluong','>',0)
        ->where('sanpham.tensanpham','like', '%' . $request->key . '%')
        ->paginate(9);
        $session_title = $request->key;

        return view('frontend.thuonghieu', compact('sanpham','session_title'));

    }
    public function getSanPham()
    {
          
        $sanpham = SanPham::select( 'sanpham.*',
        DB::raw('(select hinhanh from hinhanh where sanpham_id = sanpham.id  limit 1) as hinhanh'))
        ->where('sanpham.hienthi',1)
        ->where('sanpham.soluong','>',0)
        ->paginate(9);
          
        return view('frontend.thuonghieu', compact('sanpham'));

    }
   
    public function postSanPham(Request $request)
    {
        if($request->select1 == 'BUY')
        {
            $sanpham = SanPham::leftJoin('donhang_chitiet', 'sanpham.id', '=', 'donhang_chitiet.sanpham_id')
                        ->select('sanpham.*',
                            DB::raw('sum(donhang_chitiet.soluongban) AS tongsoluongban'),
                            DB::raw('(select hinhanh from hinhanh where sanpham_id = sanpham.id  limit 1) as hinhanh')
                        )            
                        ->groupBy('sanpham.id')
                        ->orderBy('tongsoluongban', 'desc')
                        ->where('hienthi',1)
                        ->where('sanpham.soluong','>',0)
                        ->paginate(9);

            session()->put('select1', 'BUY');
        }
        elseif($request->select1 == 'NEW') 
        {
            $sanpham = SanPham::select( 'sanpham.*',DB::raw('(select hinhanh from hinhanh where sanpham_id = sanpham.id  limit 1) as hinhanh'))
                    ->orderBy('created_at', 'desc')
                    ->where('hienthi',1)
                    ->where('sanpham.soluong','>',0)
                    ->paginate(9);

            session()->put('select1', 'NEW');
        }
        elseif($request->select1 == 'ASC') 
        {
            $sanpham = SanPham::select( 'sanpham.*',DB::raw('(select hinhanh from hinhanh where sanpham_id = sanpham.id  limit 1) as hinhanh'))
                        ->orderBy('dongia', 'asc')
                        ->where('hienthi',1)
                        ->where('sanpham.soluong','>',0)
                        ->paginate(9);

            session()->put('select1', 'ASC');
        }  
        elseif($request->select1 == 'DESC') 
        {
            $sanpham = SanPham::select( 'sanpham.*',DB::raw('(select hinhanh from hinhanh where sanpham_id = sanpham.id  limit 1) as hinhanh'))
                ->orderBy('dongia', 'desc')
                ->where('hienthi',1)
                ->where('sanpham.soluong','>',0)
                ->paginate(9);

            session()->put('select1', 'DESC');
        }      
        else 
        {
            $sanpham = SanPham::select( 'sanpham.*',DB::raw('(select hinhanh from hinhanh where sanpham_id = sanpham.id  limit 1) as hinhanh'))
            ->where('hienthi',1)
            ->where('sanpham.soluong','>',0)
            ->paginate(9);


            session()->put('select1', 'default');
        }
        
        return view('frontend.sanpham', compact('sanpham'));
    }
    
    public function postTrang(Request $request)
    {
        if($request->select == '12')
        {
            $sanpham = SanPham::select( 'sanpham.*',
             DB::raw('(select hinhanh from hinhanh where sanpham_id = sanpham.id  limit 1) as hinhanh'))
             ->where('sanpham.hienthi',1)
             ->where('sanpham.soluong','>',0)
             ->paginate(12);

            session()->put('select', '12');
        }
        elseif($request->select == '15') 
        {
            $sanpham = SanPham::select( 'sanpham.*',
             DB::raw('(select hinhanh from hinhanh where sanpham_id = sanpham.id  limit 1) as hinhanh'))
             ->where('sanpham.hienthi',1)
             ->where('sanpham.soluong','>',0)
             ->paginate(15);

            session()->put('select', '15');
        }
        elseif($request->select == '18') 
        {
            $sanpham = SanPham::select( 'sanpham.*',
            DB::raw('(select hinhanh from hinhanh where sanpham_id = sanpham.id  limit 1) as hinhanh'))
            ->where('sanpham.hienthi',1)
            ->where('sanpham.soluong','>',0)
            ->paginate(18);

            session()->put('select', '18');
        }
        elseif($request->select == '21') 
        {
            $sanpham = SanPham::select( 'sanpham.*',
             DB::raw('(select hinhanh from hinhanh where sanpham_id = sanpham.id  limit 1) as hinhanh'))
             ->where('sanpham.hienthi',1)
             ->where('sanpham.soluong','>',0)
             ->paginate(21);   

            session()->put('select', '21');
        }
        else 
        {
            $sanpham = SanPham::select( 'sanpham.*',
             DB::raw('(select hinhanh from hinhanh where sanpham_id = sanpham.id  limit 1) as hinhanh'))
             ->where('sanpham.hienthi',1)
             ->where('sanpham.soluong','>',0)
             ->paginate(9);
             
            session()->put('select', '9');
        }
        
        return view('frontend.sanpham', compact('sanpham'));
    }

    public function getSanPham_ChiTiet($tensanpham_slug)
    {
        $sanpham = SanPham::where('tensanpham_slug',$tensanpham_slug)->first();
        $hinhanh = HinhAnh::where('sanpham_id', $sanpham->id)->get();              

        return view('frontend.sanpham_chitiet',compact('sanpham','hinhanh'));
    }
 
    public function getLienHe()
    {
        return view('frontend.lienhe');
    }

    public function getBaiViet_ChiTiet($tieude_slug)
    {
        $baiviet = BaiViet::where('tieude_slug', $tieude_slug)->first();
        $binhluan = BinhLuan::where('baiviet_id', $baiviet->id)->where('hienthi', 1)->get();
        
        // Cập nhật lượt xem
        $idXem = 'BV' . $baiviet->id;
        if(!session()->has($idXem))
        {
            $orm = BaiViet::find($baiviet->id);
            $orm->LuotXem = $orm->luotxem + 1;
            $orm->save();
            session()->put($idXem, 1);
        }
        return view('frontend.baiviet_chitiet',compact('baiviet','binhluan'));
    }

    public  function getBaiViet($chude='')
    {
        if(empty($chude)) // rong
        {
            $baiviet = BaiViet::orderBy('created_at', 'desc')
            ->where([
                        ['hienthi',1],
                        ['kiemduyet', 1],
                    ])
            ->paginate(5);
            $chude = ChuDe::all();
            $session_title = 'Tin tức';

            return view('frontend.baiviet',compact('baiviet','chude','session_title'));
        }
        else
        {
            $machude = ChuDe::where('tenchude_slug',$chude)->first();
            $baiviet = BaiViet::orderBy('created_at', 'desc')
                    ->where([
                                ['hienthi',1],
                                ['kiemduyet', 1],
                                ['chude_id',$machude->id]
                            ])
                    ->paginate(5);
            $chude = ChuDe::all();
            $session_title = $machude->tenchude;

            return view('frontend.baiviet',compact('baiviet','chude','session_title'));
        }
        
    }

    public function postBinhLuan(Request $request, $tieude_slug)
    {
        $baiviet = BaiViet::where('tieude_slug', $tieude_slug)->first();
        $binhluan = BinhLuan::where('baiviet_id', $baiviet->id)->where('hienthi', 1)->get();

        $orm = new BinhLuan();
        $orm->nguoidung_id = Auth::user()->id;
        $orm->baiviet_id = $baiviet->id;
        $orm->noidung = $request->noidung;
        $orm->save();
        session()->flash('success', 'Bình luận của bạn đã được ghi nhận');

        return view('frontend.baiviet_chitiet', compact('baiviet','binhluan'));
    }

    public function LayHinhDauTien($strNoiDung)
	{
		$first_img = "";
		ob_start();
		ob_end_clean();
		$output = preg_match_all('/<img.+src=[\'"]([^\'"]+)[\'"].*>/i', $strNoiDung, $matches);
		if(empty($output))
			return  env('APP_URL')."/storage/app/image/noimage.jpg";
		else
			return $matches[1][0];
	}
    
    public function getGioHang()
    {
        if(Cart::count() <= 0)
            return view('frontend.giohang_rong');
        else
            return view('frontend.giohang');
    }
    
    public function getGioHang_Them($tensanpham_slug)
    {
        //$sanpham = SanPham::where('tensanpham_slug', $tensanpham_slug)->first();

        $sanpham = SanPham::select( 'sanpham.*',
        DB::raw('(select hinhanh from hinhanh where sanpham_id = sanpham.id  limit 1) as hinhanh'))
        ->where('tensanpham_slug', $tensanpham_slug)->first();
        Cart::add([
            'id' => $sanpham->id,
            'name' => $sanpham->tensanpham,
            'price' => $sanpham->dongia,
            'qty' => 1,
            'weight' => 0,
            'options' => [
                'image' => $sanpham->hinhanh
            ]
        ]);

        return redirect()->route('frontend');
    }
    
    public function getGioHang_ThemChiTiet(Request $request, $tensanpham_slug)
    {
        $sanpham = SanPham::select( 'sanpham.*',
        DB::raw('(select hinhanh from hinhanh where sanpham_id = sanpham.id  limit 1) as hinhanh'))
        ->where('tensanpham_slug', $tensanpham_slug)->first();
        Cart::add([
            'id' => $sanpham->id,
            'name' => $sanpham->tensanpham,
            'price' => $sanpham->dongia,
            'qty' => $request->qty,
            'weight' => 0,
            'options' => [
                'image' => $sanpham->hinhanh
            ]
        ]);

        return redirect()->route('frontend');
    }

    public function getGioHang_Xoa($row_id)
    {
        Cart::remove($row_id);
        return redirect()->route('frontend.giohang');
    }
    
    public function getGioHang_XoaTatCa()
    {
        Cart::destroy();
        return redirect()->route('frontend.giohang');
    }
    
    public function getGioHang_Giam($row_id)
    {
        $row = Cart::get($row_id);
        if($row->qty > 1)
        {
            Cart::update($row_id, $row->qty - 1);
        }
        return redirect()->route('frontend.giohang');
    }

    public function getGioHang_Tang($row_id)
    {
       $row = Cart::get($row_id);
		$sanpham = SanPham::find($row->id);

		if($row->qty < $sanpham->soluong )
		{
			Cart::update($row_id, $row->qty + 1);
			return redirect()->route('frontend.giohang');
		}
		else			
		return redirect()->route('frontend.giohang')->with("status",'Sản phẩm <strong>'.$sanpham->tensanpham. '</strong> chỉ còn ' .$sanpham->soluong.'');
    }
   
    public function getDatHang()
    {
        if(!Auth::check())
			return redirect()->route('khachhang.dangnhap');
		else
            return view('frontend.dathang');
    }

    public function postDatHang(Request $request)
    {
        $this->validate($request, [
            'diachigiaohang' => ['required', 'max:255'],
            'dienthoaigiaohang' => ['required','regex:/(84|0[3|5|7|8|9])+([0-9]{8})\b/','min:10','numeric'],
            'email' => ['required', 'string', 'email', 'max:255'],

        ],
        $messages = [
            'diachigiaohang.required' => 'Địa chỉ giao hàng không được bỏ trống.',
            'dienthoaigiaohang.required' => 'Điện thoại giao hàng không được bỏ trống.',
            'email.required' => 'Địa chỉ email không được bỏ trống.',
            'email.email' => 'Địa chỉ email không không đúng.',
            'dienthoaigiaohang.regex' => 'Số điện thoại không đúng.',
            'dienthoaigiaohang.min' => 'Số điện thoại phải đủ 10 số.',
            'dienthoaigiaohang.numeric' => 'Số điện thoại phải là số.',

        ]);
        
        // Lưu vào đơn hàng
        $dh = new DonHang();    
        $dh -> nguoidung_id = Auth::user()->id;
        $dh -> tinhtrang_id = 1;
        $dh -> diachigiaohang = $request->diachigiaohang;
        $dh -> dienthoaigiaohang = $request->dienthoaigiaohang;
        $dh -> chitietgiaohang = $request->chitietgiaohang;
        $dh ->save();
    
        // Lưu vào đơn hàng chi tiết
        foreach(Cart::content() as $value)
        {
            $ct = new DonHang_ChiTiet();
            $ct->donhang_id = $dh->id;
            $ct->sanpham_id = $value->id;
            $ct->soluongban = $value->qty;
            $ct->dongiaban = $value->price;
            $ct->save();

            $sp = SanPham::find($value->id);
            $sp->soluong = $sp->soluong - $value->qty;
            $sp->save();
        }
        Mail::to(Auth::user()->email)->send(new DatHangEmail($dh));
        return redirect()->route('frontend.dathangthanhcong');

    }
    
    public function getDatHangThanhCong()
    {
        $cart = Cart::content();
        $cartsub = Cart::subtotal();
        $cartcount = Cart::count() ;
        // Xóa giỏ hàng khi hoàn tất đặt hàng?
        Cart::destroy();
        
        return view('frontend.dathangthanhcong',compact('cart','cartsub','cartcount'));
    }

    public function getThuongHieu($all = '')
    {
		if($all == 'all')
        {
            $sanpham = SanPham::select( 'sanpham.*',
            DB::raw('(select hinhanh from hinhanh where sanpham_id = sanpham.id  limit 1) as hinhanh'))
            ->where('sanpham.hienthi',1)
            ->paginate(9);
            $session_title = "Thương hiệu";
            return view('frontend.thuonghieu',compact('sanpham','session_title'));

        }
        else
        {
            $thuonghieu = ThuongHieu::where('tenthuonghieu_slug',$all)->first();
            $sanpham = SanPham::select( 'sanpham.*',
                DB::raw('(select hinhanh from hinhanh where sanpham_id = sanpham.id  limit 1) as hinhanh'))
                ->where('sanpham.hienthi',1)->where('thuonghieu_id',$thuonghieu->id)
                ->paginate(9);
            $session_title = $thuonghieu->tenthuonghieu;
            return view('frontend.thuonghieu',compact('sanpham','session_title'));

        }
        
        
    }

    public function getDongHoNam($all = '')
    {
        if($all == 'all')
        {
            $sanpham = SanPham::select( 'sanpham.*',
            DB::raw('(select hinhanh from hinhanh where sanpham_id = sanpham.id  limit 1) as hinhanh'))
            ->where('sanpham.hienthi',1)->where('sanpham.soluong','>',0)->where('gioitinh',1)
            ->paginate(9);
            $session_title = "Nam";
            return view('frontend.thuonghieu',compact('sanpham','session_title'));

        }
        else
        {
            $loai = Loai::where('tenloai_slug',$all)->first();
            $sanpham = SanPham::select( 'sanpham.*',
                DB::raw('(select hinhanh from hinhanh where sanpham_id = sanpham.id  limit 1) as hinhanh'))
                ->where('sanpham.hienthi',1)->where('sanpham.soluong','>',0)->where('loai_id',$loai->id)->where('gioitinh',1)
                ->paginate(9);
            $session_title = $loai->tenloai ;
            return view('frontend.thuonghieu',compact('sanpham','session_title'));

        }
       
    }

    public function getDongHoNu($all = '')
    {
        if($all == 'all')
        {
            $sanpham = SanPham::select( 'sanpham.*',
            DB::raw('(select hinhanh from hinhanh where sanpham_id = sanpham.id  limit 1) as hinhanh'))
            ->where('sanpham.hienthi',1)->where('sanpham.soluong','>',0)->where('gioitinh',2)
            ->paginate(9);
            $session_title = "Nữ";
            return view('frontend.thuonghieu',compact('sanpham','session_title'));

        }   
        else 
        {
            $loai = Loai::where('tenloai_slug',$all)->first();
            $sanpham = SanPham::select( 'sanpham.*',
                DB::raw('(select hinhanh from hinhanh where sanpham_id = sanpham.id  limit 1) as hinhanh'))
                ->where('sanpham.hienthi',1)->where('sanpham.soluong','>',0)->where('loai_id',$loai->id)->where('gioitinh',2)
                ->paginate(9);
            $session_title = $loai->tenloai;
            return view('frontend.thuonghieu',compact('sanpham','session_title'));

        }
       
    }

    public function getDongHoCapDoi($all = '')
    {
        if($all == 'all')
        {
            $sanpham = SanPham::select( 'sanpham.*',
            DB::raw('(select hinhanh from hinhanh where sanpham_id = sanpham.id  limit 1) as hinhanh'))
            ->where('sanpham.hienthi',1)
            ->where('sanpham.soluong','>',0)
            ->where('gioitinh',3)
            ->paginate(9);
            $session_title = "Cặp đôi";
            return view('frontend.thuonghieu',compact('sanpham','session_title'));

        }   
        else 
        {
            $loai = Loai::where('tenloai_slug',$all)->first();
            $sanpham = SanPham::select( 'sanpham.*',
                DB::raw('(select hinhanh from hinhanh where sanpham_id = sanpham.id  limit 1) as hinhanh'))
                ->where('sanpham.hienthi',1)
                ->where('sanpham.soluong','>',0)
                ->where('loai_id',$loai->id)
                ->where('gioitinh',3)
                ->paginate(9);
            $session_title = $loai->tenloai;
            return view('frontend.thuonghieu',compact('sanpham','session_title'));

        }
       
    }

    public function getDongHoTreEm($all = '')
    {
        if($all == 'all')
        {
            $sanpham = SanPham::select( 'sanpham.*',
            DB::raw('(select hinhanh from hinhanh where sanpham_id = sanpham.id  limit 1) as hinhanh'))
            ->where('sanpham.hienthi',1)
            ->where('sanpham.soluong','>',0)
            ->where('gioitinh',4)
            ->paginate(9);
            $session_title = "Trẻ em";
            return view('frontend.thuonghieu',compact('sanpham','session_title'));

        }   
        else 
        {
            $loai = Loai::where('tenloai_slug',$all)->first();
            $sanpham = SanPham::select( 'sanpham.*',
                DB::raw('(select hinhanh from hinhanh where sanpham_id = sanpham.id  limit 1) as hinhanh'))
                ->where('sanpham.hienthi',1)
                ->where('sanpham.soluong','>',0)
                ->where('loai_id',$loai->id)
                ->where('gioitinh',4)
                ->paginate(9);
            $session_title = $loai->tenloai;
            return view('frontend.thuonghieu',compact('sanpham','session_title'));

        }
       
    }
}
