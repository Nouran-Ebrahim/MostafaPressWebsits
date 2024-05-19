<?php

namespace App\Http\Requests\Admin;

use App\Http\Requests\BaseRequest;

class StoreBannerRequest extends BaseRequest
{
    public function rules()
    {
        $rules = [
            'desc_ar' => ['required', 'string'],
            'desc_en' => ['required', 'string'],

            'status' => ['required', 'boolean'],

            'images' => ['required', 'array'],
            'images.*' => ['required', 'image'],
        ];

        

        return $rules;
    }
}
