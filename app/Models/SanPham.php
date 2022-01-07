<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SanPham extends Model
{
    use HasFactory;

    protected $table = 'sanpham';

    protected $fillable = [
        'loai_id',
        'thuonghieu_id',
        'chatlieu_id',
        'tensanpham',
        'tensanpham_slug',
        'gioitinh',
        'soluong',
        'dongia',
        'hinhanh',
        'motasanpham',
    ];
 
    public function Loai()
    {
        return $this->belongsTo(Loai::class, 'loai_id', 'id');
    }
    
    public function ThuongHieu()
    {
        return $this->belongsTo(ThuongHieu::class, 'thuonghieu_id', 'id');
    }

    public function ChatLieu()
    {
        return $this->belongsTo(ChatLieu::class, 'chatlieu_id', 'id');
    }

    public function HinhAnh()
    {
        return $this->hasMany(HinhAnh::class, 'sanpham_id', 'id');
    }

    public function DonHang_ChiTiet()
    {
        return $this->hasMany(DonHang_ChiTiet::class, 'sanpham_id', 'id');
    }

}
