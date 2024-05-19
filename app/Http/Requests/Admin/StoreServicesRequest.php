<?php

namespace App\Http\Requests\Admin;

use App\Http\Requests\BaseRequest;

class StoreServicesRequest extends BaseRequest
{
    public function rules()
    {
        return [
            'title_ar' => ['required', 'string'],
            'title_en' => ['required', 'string'],
            'desc_ar' => ['required', 'string'],
            'desc_en' => ['required', 'string'],
            'image' => ['required', 'image'],
            'home_image' => ['required', 'image'],
            'arrangment' => ['required', 'string'],
            "desc_home_ar"=>['required', 'string'],
            "desc_home_en"=>['required', 'string'],
            'status' => ['required', 'boolean'],
        ];
    }
}
