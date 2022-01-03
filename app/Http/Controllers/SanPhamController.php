<?php

namespace App\Http\Controllers;

use App\Models\SanPham;
use Illuminate\Http\Request;
use App\Models\ChatLieu;
use App\Models\ThuongHieu;
use App\Models\Loai;
use App\Models\HinhAnh;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;
use File;
use App\Imports\SanPhamImport;
use App\Exports\SanPhamExport;
use Excel;

class SanPhamController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function getDanhSach()
    {
        $sanpham = SanPham::all();
        return view('admin.sanpham.danhsach', compact('sanpham'));
    }

    public function getOnOffHienThi($id)
    {
        $orm = SanPham::find($id);
        $orm->hienthi = 1 - $orm->hienthi; 
        $orm->save();

        return redirect()->route('admin.sanpham');
    }

    // Nhập từ Excel
    public function postNhap(Request $request)
    {
        Excel::import(new SanPhamImport, $request->file('file_excel'));
        
        return redirect()->route('admin.sanpham');
    }
    
    // Xuất ra Excel
    public function getXuat()
    {
        return Excel::download(new SanPhamExport, 'danh-sach-san-pham.xlsx');
    }

    public function getThem()
    {
        $chatlieu = ChatLieu::all();
        $thuonghieu = ThuongHieu::all();
        $loai = Loai::all();

        return view('admin.sanpham.them', compact('chatlieu','thuonghieu','loai'));
    }
    
    public function postThem(Request $request)
    {
        $this->validate($request,[
           'thuonghieu_id' => ['required'],
           'chatlieu_id' => ['required'],
           'loai_id' => ['required'],
           'gioitinh' => ['required'],
           'tensanpham' =>['required','max:255','unique:sanpham'],
           'soluong' =>['required','numeric','min:1'],
           'dongia' =>['required','numeric','min:200000'],
       ],
       $messages = [
        'thuonghieu_id.required' => 'Chưa chọn thương hiêu.',
        'chatlieu_id.required' => 'Chưa chọn chất liệu.',
        'loai_id.required' => 'Chưa chọn loại.',
        'tensanpham.required' => 'Tên sản phẩm không được bỏ trống.',
        'soluong.required' => 'Số lượng không được bỏ trống.',
        'dongia.required' => 'Đơn giá không được bỏ trống.',
        'gioitinh.required' => 'Chưa chọn đối tượng sử dụng.',
        'soluong.min' => 'Số lượng tối thiểu là 1.',
        'dongia.min' => 'Đơn giá tối thiểu là 200000.',

    ]);

        $orm = new SanPham();
        $orm->thuonghieu_id = $request->thuonghieu_id;
        $orm->chatlieu_id = $request->chatlieu_id;
        $orm->loai_id = $request->loai_id;
        $orm->tensanpham = $request->tensanpham;
        $orm->tensanpham_slug = Str::slug($request->tensanpham, '-');
        $orm->gioitinh = $request->gioitinh;
        $orm->soluong = $request->soluong;
        $orm->dongia = $request->dongia;
        $orm->motasanpham = $request->motasanpham;
        $orm->save();

        if ($request->hasfile('HinhAnh')) {
            $images = $request->file('HinhAnh');
    
            foreach($images as $image) 
            {
                $extension = $image->getClientOriginalName();                
                $fileName = Str::slug($request->tensanpham, '-'). '-' . $extension;
                $path = Storage::putFileAs('sanpham', $image, $fileName);

                $img = new HinhAnh();
                $img->hinhanh = $path;
                $img->sanpham_id = $orm->id;
                $img->save();
                
            }
            
        }
        return redirect()->route('admin.sanpham')->with('status', 'Thêm mới thành công');;
    }
    
    public function getSua($id)
    {
        $sanpham = SanPham::find($id);
        $thuonghieu = ThuongHieu::all();
        $chatlieu = ChatLieu::all();
        $loai = Loai::all();
        $hinhanh = HinhAnh::where('sanpham_id', $id)->get();
        $img = HinhAnh::where('sanpham_id', $id)->first();
        
        return view('admin.sanpham.sua', compact('sanpham','thuonghieu','chatlieu','hinhanh','loai','img'));
    }
    
    public function postSua(Request $request, $id)
    {   
        $this->validate($request,[
            'thuonghieu_id' => ['required'],
            'chatlieu_id' => ['required'],
            'loai_id' => ['required'],
            'tensanpham' =>['required','max:255','unique:sanpham,tensanpham,' .$id],
            'soluong' =>['required','numeric'],
            'dongia' =>['required','numeric'],
        ]);
 
        $orm = SanPham::find($id);
        $orm->loai_id = $request->loai_id;
        $orm->thuonghieu_id = $request->thuonghieu_id;
        $orm->chatlieu_id = $request->chatlieu_id;
        $orm->tensanpham = $request->tensanpham;
        $orm->tensanpham_slug = Str::slug($request->tensanpham, '-');
        $orm->gioitinh = $request->gioitinh;
        $orm->soluong = $request->soluong;
        $orm->dongia = $request->dongia;
        $orm->motasanpham = $request->motasanpham;
        $orm->save();
        
        if(!empty($request->hasfile('HinhAnh')))
        {
            if ($request->hasfile('HinhAnh')) 
            {
                $img = HinhAnh::where('sanpham_id',$id)->get();
                foreach($img as $value)
                {
                    Storage::delete($value->hinhanh);
                    $value->delete();
                }
                
                $images = $request->file('HinhAnh');           
                foreach($images as $image) 
                {               
                    $extension = $image->getClientOriginalName();                
                    $fileName = Str::slug($request->tensanpham, '-'). '-' . $extension;
                    $path = Storage::putFileAs('sanpham', $image, $fileName);
                    
                    $img = new HinhAnh();
                    $img->hinhanh = $path;
                    $img->sanpham_id = $orm->id;
                    $img->save();
                    
                }
            }      
        }
    
        return redirect()->route('admin.sanpham')->with('status', 'Cập nhật thành công');;
    }
    
    public function getXoa($id)
    {
        $img = HinhAnh::where('sanpham_id', $id)->get();

        foreach($img as $anh)
        {
            Storage::delete($anh->hinhanh);
        }

        $orm = SanPham::find($id);
        $orm->delete();     

        return redirect()->route('admin.sanpham')->with('status', 'Xóa thành công');;

    }
}