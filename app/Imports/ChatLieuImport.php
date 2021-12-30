<?php

namespace App\Imports;

use App\Models\ChatLieu;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Illuminate\Support\Str;

class ChatLieuImport implements ToModel,WithHeadingRow
{
    
    public function model(array $row)
    {
        return new ChatLieu([ 
            'tenchatlieu' => $row['tenchatlieu'],
            'tenchatlieu_slug' => Str::slug($row['tenchatlieu']),
        ]);
    }
}
