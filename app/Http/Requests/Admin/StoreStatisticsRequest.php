<?php

namespace App\Http\Requests\Admin;

use App\Http\Requests\BaseRequest;

class StoreStatisticsRequest extends BaseRequest
{
    public function rules()
    {
        $rules = [
            'title_ar' => ['required', 'string'],
            'title_en' => ['required', 'string'],

            'number' => ['required', 'numeric'],

            'status' => ['required', 'boolean'],

            'image' => ['required', 'image'],

        ];

        

        return $rules;
    }
}
