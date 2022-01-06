<?php

namespace App\Exports;

use App\Models\SanPham;
use Maatwebsite\Excel\Concerns\FromCollection;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use Illuminate\Support\Facades\DB;

class SanPhamExport implements FromView
                                
{
    public function view(): View
    {
        return view('exports.sanpham', [
            'sanpham' =>  SanPham::select('sanpham.*', 
                DB::raw('CONCAT(hinhanh,"?",hinhanh) AS hinhanh'))
                ->join('hinhanh','sanpham.id','=','hinhanh.sanpham_id')
                ->get()
        ]);

    }
}
