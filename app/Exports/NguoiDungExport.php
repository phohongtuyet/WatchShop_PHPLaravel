<?php

namespace App\Exports;

use App\Models\NguoiDung;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithMapping;
use Maatwebsite\Excel\Concerns\FromQuery;
use Maatwebsite\Excel\Concerns\Exportable;
use Maatwebsite\Excel\Concerns\FromView;
use Illuminate\Contracts\View\View;
use Illuminate\Support\Facades\DB;

class NguoiDungExport implements FromView
{

    use Exportable;

    public function Role(string $role)
    {
        $this->role = $role;
        
        return $this;
    }

    public function view(): View
    {
        if($this->role == 'user')
        {
            return view('exports.khachhang', [
                'invoices' => NguoiDung::query()->select( 'nguoidung.*',
                DB::raw('(select donhang.dienthoaigiaohang from donhang where nguoidung_id = nguoidung.id  limit 1) as dienthoaigiaohang'))
                ->where('role', $this->role)
                ->get()        
            ]); 
        }
        else
        {
            return view('exports.nguoidung', [
                'invoices' => NguoiDung::query()->where('role', $this->role)->get()        
            ]);
        }
        
    }
}
