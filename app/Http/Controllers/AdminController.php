<?php

namespace App\Http\Controllers;

use App\Models\DonHang;
use App\Models\NguoiDung;
use App\Models\SanPham;
use Illuminate\Http\Request;
use Auth;

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

            return view('admin.index',compact('donhang','user','sanpham'));
        }       
        else
            return view('errors.404');

    }
    
    public function getForbidden()
	{
		return view('errors.403');
	}
}
