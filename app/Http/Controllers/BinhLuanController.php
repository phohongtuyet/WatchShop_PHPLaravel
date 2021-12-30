<?php

namespace App\Http\Controllers;

use App\Models\BinhLuan;
use App\Models\BaiViet;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;

class BinhLuanController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function getDanhSach($tieude_slug)
    {        
        $baiviet = BaiViet::where('tieude_slug',$tieude_slug)->first();
        $binhluan = BinhLuan::where('baiviet_id',$baiviet->id)->get();

        return view('admin.binhluan.danhsach',compact('binhluan'));
    }

    

    public function getOnOffDuyet($id)
    {
        $orm = BinhLuan::find($id);
        $orm->hienthi = 1 - $orm->hienthi; 
        $orm->save();

        $baiviet = BaiViet::find($orm->baiviet_id);

        return redirect()->route('admin.binhluan',$baiviet->tieude_slug);
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
        $orm->users_id = Auth::user()->id;
        $orm->tieude = $request->tieude;
        $orm->tieude_slug = Str::slug($request->tieude, '-');
        $orm->tomta = $request->tomta;
        $orm->noidung = $request->noidung;
        $orm->save();

        return redirect()->route('admin.baiviet');
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
        $orm->users_id = Auth::user()->id;
        $orm->tieude = $request->tieude;
        $orm->tieude_slug = Str::slug($request->tieude, '-');
        $orm->tomta = $request->tomta;
        $orm->noidung = $request->noidung;
        $orm->LuotXem = $orm->LuotXem;
        $orm->kiemduyet = $orm->kiemduyet;
        $orm->hienthi = $orm->hienthi;
        $orm->save();

        return redirect()->route('admin.baiviet');

    }

    public function getXoa($id)
    {
        $orm = BaiViet::find($id);
        $orm->delete();
    
        return redirect()->route('admin.baiviet')->with('status','Xóa thành công');
    }
}
