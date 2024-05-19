<?php

namespace App\Http\Requests\Admin;

use App\Http\Requests\BaseRequest;

class UpdateStepSuccessRequest extends BaseRequest
{
    public function rules()
    {
        return [
            'title_ar' => ['required', 'string'],
            'title_en' => ['required', 'string'],
            'desc_ar' => ['required', 'string'],
            'desc_en' => ['required', 'string'],
            'status' => ['required', 'boolean'],
        ];
    }
}
