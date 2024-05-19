<?php

namespace App\Http\Requests\Admin;

use App\Http\Requests\BaseRequest;

class StorePartnerRequest extends BaseRequest
{
    public function rules()
    {
        return [
            'image' => ['required'],

            'status' => ['required', 'boolean'],
        ];
    }
}
