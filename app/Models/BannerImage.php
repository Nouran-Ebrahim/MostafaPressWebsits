<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BannerImage extends BaseModel
{
    protected $guarded = [];
    public function banner()
    {
        return $this->belongsTo(Banner::class);
    }
}
