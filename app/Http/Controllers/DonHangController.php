<?php

namespace App\Http\Controllers;

use App\Models\DonHang;
use App\Models\DonHang_ChiTiet;
use App\Models\TinhTrang;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DonHangController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function getDanhSach()
    {
        $donhang = DonHang::orderBy('created_at', 'desc')->get();
        return view('admin.donhang.danhsach', compact('donhang'));
    }

    public function getDanhSachDonHangMoi()
    {
        $donhang = DonHang::where('tinhtrang_id', '1')->get();
        return view('admin.donhang.moi', compact('donhang'));
    }
    
    public function getThem()
    {

    }
    
    public function postThem(Request $request)
    {
       
    }
    
    public function getSua($id)
    {
        $donhang = DonHang::find($id);
        return view('admin.donhang.sua', compact('donhang'));
    }
    
    public function postSua(Request $request, $id)
    {
        $this->validate($request, [
            'dienthoai' => ['required', 'max:20'],
            'diachi' => ['required', 'max:255'],
            'tinhtrang' => ['required'],
        ]);
            
        $orm = DonHang::find($id);
        $orm->dienthoaigiaohang = $request->dienthoai;
        $orm->diachigiaohang = $request->diachi;
        $orm->tinhtrang_id = $request->tinhtrang;
        $orm->save();
        
        return redirect()->route('admin.donhang');
        
    }
    
    public function getXoa($id)
    {
        $orm = DonHang::find($id);
        $orm->delete();
        
        $chitiet = DonHang_ChiTiet::where('donhang_id', $orm->id)->first();
        $chitiet->delete();
        
        return redirect()->route('donhang');
    }

    public function postTrangThai(Request $request, $id)
    {
        $orm = DonHang::find($id);

        if($request->select == 10)
        {
            $orm->tinhtrang_id = 10;
            $orm->save();

            session()->put('select', 'thanhcong');
        }
        elseif($request->select == 9) 
        {
            $orm->tinhtrang_id = 9;
            $orm->save();
            session()->put('select', 'dachuyenhoan');
        }
        elseif($request->select == 8) 
        {
            $orm->tinhtrang_id = 8;
            $orm->save();
            session()->put('select', 'dangchuyenhoan');
        }
        elseif($request->select == 7) 
        {
            $orm->tinhtrang_id = 7;
            $orm->save();       
            session()->put('select', 'thatbai');
        }
        elseif($request->select == 6) 
        {
            $orm->tinhtrang_id = 6;
            $orm->save();     
            session()->put('select', 'dangchuyen');
        }
        elseif($request->select == 5) 
        {
            $orm->tinhtrang_id = 5;
            $orm->save();  
            session()->put('select', 'chodinhan');
        }
        elseif($request->select == 4) 
        {
            $orm->tinhtrang_id = 4;
            $orm->save();      
            session()->put('select', 'dangdonggoi');
        }
        elseif($request->select == 3) 
        {
            $orm->tinhtrang_id = 3;
            $orm->save();       
            session()->put('select', 'dahuy');
        }
        elseif($request->select == 2) 
        {
            $orm->tinhtrang_id = 2;
            $orm->save();
            session()->put('select', 'dangxacnhan');
        }
        else
        {
            $orm->tinhtrang_id = 1;
            $orm->save();
            session()->put('select', 'moi');
        }

        return redirect()->route('admin.donhang');
    }
    
    public function getDoanhThu()
    {
        return view('admin.donhang.doanhthu');
    }

    public function postDoanhThu(Request $request)
    {
       
 
        $doanhthu = DonHang_ChiTiet::leftJoin('donhang', 'donhang.id', '=', 'donhang_chitiet.donhang_id')
        ->leftJoin('sanpham', 'sanpham.id', '=', 'donhang_chitiet.sanpham_id')
        ->select('sanpham.*',
                  DB::raw('sum(donhang_chitiet.soluongban) AS tongsoluongban'),
                  DB::raw('(select donhang_chitiet.dongiaban from donhang_chitiet limit 1) as dongiaban')
                )
        ->where([
            ['donhang.created_at', '>=', $request->dateStart],
            ['donhang.created_at', '<=', $request->dateEnd],
        ])
        ->groupBy('sanpham.id')
        ->get();
 
        $session_title_dateStart = $request->dateStart;
        $session_title_dateEnd = $request->dateEnd;
        
        return view('admin.donhang.dsdoanhthu',compact('doanhthu','session_title_dateStart','session_title_dateEnd'));
    }
}
