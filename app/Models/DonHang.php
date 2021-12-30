<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DonHang extends Model
{
    use HasFactory;
    protected $table = 'donhang';
 
    public function TinhTrang()
    {
        return $this->belongsTo(TinhTrang::class, 'tinhtrang_id', 'id');
    }
    
    public function NguoiDung()
    {
        return $this->belongsTo(NguoiDung::class, 'nguoidung_id', 'id');
    }
    
    public function DonHang_ChiTiet()
    {
        return $this->hasMany(DonHang_ChiTiet::class, 'donhang_id', 'id');
    }

}
