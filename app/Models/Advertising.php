<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Advertising extends BaseModel
{
    protected $guarded = [];
    public function images()
    {
        return $this->hasMany(AdvertisingImage::class);
    }
    public function slider()
    {
        return $this->hasMany(AdvertisingSlider::class);
    }
}
