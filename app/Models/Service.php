<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Functions\Upload;

class Service extends BaseModel
{
    protected $guarded = [];

    public static function boot()
    {
        parent::boot();
        static::deleting(function ($Model) {
            if ($Model->image) {
                Upload::deleteImage($Model->image);
            }
        });
    }
}
