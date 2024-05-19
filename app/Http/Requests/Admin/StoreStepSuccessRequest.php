<?php

namespace App\Http\Requests\Admin;

use App\Http\Requests\BaseRequest;

class StoreStepSuccessRequest extends BaseRequest
{
    public function rules()
    {
        return [
            'title_ar' => ['required', 'string'],
            'title_en' => ['required', 'string'],
            'desc_ar' => ['required', 'string'],
            'desc_en' => ['required', 'string'],
            'image' => ['required', 'image'],
            
            'status' => ['required', 'boolean'],
        ];
    }
}
