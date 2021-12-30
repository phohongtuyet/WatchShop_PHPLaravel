<?php

namespace App\Exports;
use App\Models\SanPham;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithMapping;

class SanPhamExport implements FromCollection,
                                WithHeadings,
                                WithMapping
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function headings(): array
    {
        return [
            'Mã loại',
            'thuonghieu',
            'chatlieu',
            'Tên sản phẩm',
            'Tên sản phẩm khong dấu',
            'gioitinh',
            'Số lượng',
            'Đơn giá',
            'Hình ảnh',
        ];
    }
    
    public function map($row): array
    {
        return [
                $row->loaisanpham_id,
                $row->thuonghieu_id,
                $row->chatlieu_id,
                $row->tensanpham,
                $row->tensanpham_slug,
                $row->gioitinh,
                $row->soluong,
                $row->dongia,
        ];
    }

    public function collection()
    {
        return SanPham::all();
    }
}
