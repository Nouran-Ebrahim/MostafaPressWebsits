@extends('Admin.layout')
@section('pagetitle', __('trans.partners'))
@section('content')
    <form method="POST" action="{{ route('admin.partners.store') }}" enctype="multipart/form-data" data-parsley-validate novalidate>
        @csrf
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
                    <option value="0">@lang('trans.hidden')</option>
                    <option selected value="1">@lang('trans.visible')</option>
                </select>
            </div>
            <div class="clearfix"></div>
            <div class="form-group col-12 m-b-0 text-center mx-auto mt-2">
                <button class="main-btn waves-effect waves-light" type="submit">@lang('trans.add')</button>
            </div>
        </div>
    </form>
@endsection
