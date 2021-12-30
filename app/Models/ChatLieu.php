<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ChatLieu extends Model
{
    use HasFactory;

    protected $table = 'chatlieu';

    protected $fillable = [
        'tenchatlieu',
        'tenchatlieu_slug',      
    ];
    public function SanPham()
    {
        return $this->hasMany(SanPham::class, 'chatlieu_id', 'id');
    }

}
