<?php

namespace App\Models;
use App\Functions\Upload;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ServiceImage extends BaseModel
{


    protected $guarded = [];

    public function service()
    {
        return $this->belongsTo(Service::class);
    }

    protected static function boot()
    {
        parent::boot();
        static::deleting(function ($Model) {
            if ($Model->image) {
                Upload::deleteImage($Model->image);
            }
        });
    }
}
