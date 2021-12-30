<?php

namespace App\Http\Controllers;

use App\Models\ChatLieu;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Imports\ChatLieuImport;
use Excel;
class ChatLieuController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function getDanhSach()
    {
        $chatlieu = ChatLieu::all();
        return view('admin.chatlieu.danhsach',compact('chatlieu'));
    }

    // Nhập từ Excel
    public function postNhap(Request $request)
    {
        Excel::import(new ChatLieuImport, $request->file('file_excel'));

        return redirect()->route('admin.chatlieu');
    }

    public function getThem()
    {
        return view('admin.chatlieu.them');
    }

    public function postThem(Request $request)
    {
        $this->validate($request, [
            'tenchatlieu' => ['required', 'max:255', 'unique:chatlieu'],
        ], 
        $messages = [
            'required' => 'Tên chất liệu không được bỏ trống.',
            'unique' => 'Tên chất liệu đã có trong hệ thống.',
        ]);
           
        $orm = new ChatLieu();
        $orm->tenchatlieu = $request->tenchatlieu;
        $orm->tenchatlieu_slug = Str::slug($request->tenchatlieu, '-');
        $orm->save();

        return redirect()->route('admin.chatlieu')->with('status', 'Thêm mới thành công');
    }

    public function getSua($id)
    {
        $chatlieu = ChatLieu::find($id);
        return view('admin.chatlieu.sua', compact('chatlieu'));
    }

    public function postSua(Request $request, $id)
    {
        $this->validate($request, [
            'tenchatlieu' => ['required', 'max:255', 'unique:chatlieu,tenchatlieu,'.$id],
        ],
        $messages = [
            'required' => 'Tên chất liệu không được bỏ trống.',
            'unique' => 'Tên chất liệu đã có trong hệ thống.',
        ]);
           
        $orm = ChatLieu::find($id);
        $orm->tenchatlieu = $request->tenchatlieu;
        $orm->tenchatlieu_slug = Str::slug($request->tenchatlieu, '-');
        $orm->save();

        return redirect()->route('admin.chatlieu')->with('status', 'Cập nhật thành công');

    }

    public function getXoa($id)
    {
        $orm = ChatLieu::find($id);
        $orm->delete();
    
        return redirect()->route('admin.chatlieu')->with('status', 'Xóa thành công');
    }
}
