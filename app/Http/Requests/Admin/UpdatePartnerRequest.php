<?php

namespace App\Http\Requests\Admin;

use App\Http\Requests\BaseRequest;

class UpdatePartnerRequest extends BaseRequest
{
    public function rules()
    {
        return [
          
            'status' => ['nullable', 'boolean'],
        ];
    }
}
