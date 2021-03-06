<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BinhLuan extends Model
{
    use HasFactory;

    protected $table = 'binhluan';
 
    public function BaiViet()
    {
        return $this->hasMany(BaiViet::class, 'baiviet_id', 'id');
    }

    public function NguoiDung()
    {
        return $this->belongsTo(NguoiDung::class, 'nguoidung_id', 'id');
    }
}
