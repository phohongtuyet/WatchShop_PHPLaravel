<?php

namespace App\Exports;

use App\Models\NguoiDung;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithMapping;
use Maatwebsite\Excel\Concerns\FromQuery;
use Maatwebsite\Excel\Concerns\Exportable;

class NguoiDungExport implements FromQuery
{

    use Exportable;

    public function Role(string $role)
    {
        $this->role = $role;
        
        return $this;
    }

    public function headings(): array
    {
        return [
            'Họ và tên',
            'email',
        ];
    }
    
    public function map($row): array
    {
        return [
            $row->name,
            $row->email,
        ];
    }
   
    public function query()
    {
        return NguoiDung::query()->where('role', $this->role);
        
    }
}
