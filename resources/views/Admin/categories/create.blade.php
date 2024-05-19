@extends('Admin.layout')
@section('pagetitle', __('trans.categories'))
@section('content')
<form method="POST" action="{{ route('admin.categories.store') }}" enctype="multipart/form-data" data-parsley-validate novalidate>
    @csrf
    <div class="row">
        <div class="col-md-6">
            <label for="title_ar">@lang('trans.title_ar')</label>
            <input type="text" name="title_ar" id="title_ar" class="form-control" required data-buttonname="btn-primary">
        </div>
        <div class="col-md-6">
            <label for="title_en">@lang('trans.title_en')</label>
            <input type="text" name="title_en" id="title_en" class="form-control" required data-buttonname="btn-primary">
        </div>

        <div class="col-md-6">
            <label for="visibility">@lang('trans.visibility')</label>
            <select class="form-control" required id="visibility" name="status">
                <option selected value="1">@lang('trans.visible')</option>
                <option value="0">@lang('trans.hidden')</option>
            </select>
        </div>

        <div class="clearfix"></div>
        <div class="row mx-auto">
            <div class="col-sm-12 my-4">
                <div class="text-center p-20 ">
                    <button type="submit" class="main-btn">{{ __('trans.add') }}</button>
                    <button type="reset" class="btn btn-secondary">{{ __('trans.cancel') }}</button>
                </div>
            </div>
        </div>
    </div>
</form>

@endsection
