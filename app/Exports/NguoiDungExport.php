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
        return view('exports.nguoidung', [
            'invoices' => NguoiDung::query()->where('role', $this->role)->get()        
        ]);
    }
}
