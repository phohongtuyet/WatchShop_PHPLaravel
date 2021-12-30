<?php

namespace App\Http\Controllers;

use App\Models\BaiViet;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;

class BaiVietController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function getDanhSach()
    {        
        $baiviet = BaiViet::orderBy('created_at', 'desc')->get();
        return view('admin.baiviet.danhsach',compact('baiviet'));
    }

    public function getOnOffHienThi($id)
    {
        $orm = BaiViet::find($id);
        $orm->hienthi = 1 - $orm->hienthi; 
        $orm->save();

        return redirect()->route('admin.baiviet');
    }

    public function getOnOffDuyet($id)
    {
        $orm = BaiViet::find($id);
        $orm->kiemduyet = 1 - $orm->kiemduyet; 
        $orm->save();

        return redirect()->route('admin.baiviet');
    }

    public function getOnOffBinhLuan($id)
    {
        $orm = BaiViet::find($id);
        $orm->binhluan = 1 - $orm->binhluan; 
        $orm->save();

        return redirect()->route('admin.baiviet');
    }

    public function getThem()
    {
        return view('admin.baiviet.them');
    }

    public function postThem(Request $request)
    {
        $this->validate($request, [
            'tieude' => ['required','string', 'unique:baiviet'],
            'noidung' => ['required'],
        ]);
           
        $orm = new BaiViet();
        $orm->nguoidung_id = Auth::user()->id;
        $orm->tieude = $request->tieude;
        $orm->tieude_slug = Str::slug($request->tieude, '-');
        $orm->tomtat = $request->tomtat;
        $orm->noidung = $request->noidung;
        $orm->save();

        return redirect()->route('admin.baiviet')->with('status','Thêm mới thành công');
    }

    public function getSua($id)
    {
        $baiviet = BaiViet::find($id);
        return view('admin.baiviet.sua', compact('baiviet'));
    }

    public function postSua(Request $request, $id)
    {
        $this->validate($request, [
            'tieude' => ['required', 'string', 'unique:baiviet,tieude,'.$id],
            'noidung' => ['required'],
        ]);
           
        $orm = BaiViet::find($id);
        $orm->nguoidung_id = Auth::user()->id;
        $orm->tieude = $request->tieude;
        $orm->tieude_slug = Str::slug($request->tieude, '-');
        $orm->tomtat = $request->tomtat;
        $orm->noidung = $request->noidung;
        $orm->luotxem = $orm->luotxem;
        $orm->binhluan = $orm->binhluan;
        $orm->kiemduyet = $orm->kiemduyet;
        $orm->hienthi = $orm->hienthi;
        $orm->save();

        return redirect()->route('admin.baiviet')->with('status','Cập nhật thành công');

    }

    public function getXoa($id)
    {
        $orm = BaiViet::find($id);
        $orm->delete();
    
        return redirect()->route('admin.baiviet')->with('status','Xóa thành công');
    }
}
