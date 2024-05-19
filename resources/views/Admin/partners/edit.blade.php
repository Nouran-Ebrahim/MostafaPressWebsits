@extends('Admin.layout')
@section('pagetitle', __('trans.partners'))
@section('content')
<form method="POST" action="{{ route('admin.partners.update',$Delivry) }}" enctype="multipart/form-data" data-parsley-validate novalidate>
    @csrf
    @method('PUT')
    <div class="row">
        

        <div class="form-group my-1 col-md-6 col-sm-12">
            <label class="my-1">@lang('trans.image')</label>
            <label class="file-input btn btn-block btn-secondary btn-file w-100">
                @lang('trans.Browse')
                <input accept="image/*" type="file" type="file" name="image">
            </label>
        </div>
        <div class="form-group my-1 col-md-6 col-sm-12">
            <label class="my-1">@lang('trans.visibility')</label>
            <select class="form-control " required name="status">
                <option {{ $Delivry->status == '0' ? 'selected' : '' }} value="0">@lang('trans.hidden')</option>
                <option {{ $Delivry->status == '1' ? 'selected' : '' }} value="1">@lang('trans.visible')</option>
            </select>
        </div>
        <div class="clearfix"></div>
        <div class="col-12 my-4">
            <div class="button-group">
                <button type="submit" class="main-btn btn-hover w-100 text-center">
                    {{ __('trans.Submit') }}
                </button>
            </div>
        </div>
    </div>
</form>
@endsection
