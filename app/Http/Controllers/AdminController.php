<?php

namespace App\Http\Controllers;

use App\Models\DonHang;
use App\Models\NguoiDung;
use App\Models\SanPham;
use Illuminate\Http\Request;
use Auth;
use Carbon\Carbon;
use App\Models\DonHang_ChiTiet;
use Illuminate\Support\Facades\DB;

class AdminController extends Controller
{
    public function __construct()
    {
        $this->middleware(['auth','verified']);
    }
    
    public function getHome()
    {
        if(Auth::user()->role == 'admin' || Auth::user()->role == 'staff')
        {
            $donhang = DonHang::where('tinhtrang_id',1)->get();
            $user = NguoiDung::all();
            $sanpham = SanPham::where('soluong',0)->get();

            $doanhthu = DonHang_ChiTiet::leftJoin('donhang', 'donhang.id', '=', 'donhang_chitiet.donhang_id')
                ->leftJoin('sanpham', 'sanpham.id', '=', 'donhang_chitiet.sanpham_id')
                ->select('sanpham.*',
                        DB::raw('sum(donhang_chitiet.soluongban) AS tongsoluongban'),
                        DB::raw('(select donhang_chitiet.dongiaban from donhang_chitiet limit 1) as dongiaban')
                        )
                ->where([
                    ['donhang.created_at', '>=', Carbon::now()],
                    ['donhang.created_at', '<=', Carbon::now()],
                ])
                ->groupBy('sanpham.id')
                ->get();
            return view('admin.index',compact('donhang','user','sanpham','doanhthu'));
        }       
        else
            return view('errors.404');

    }
    
    public function getForbidden()
	{
		return view('errors.403');
	}
}
