@extends('Admin.layout')

@section('pagetitle',__('trans.banners'))



@section('content')
<form method="POST" action="{{ route('admin.banners.store') }}" enctype="multipart/form-data" data-parsley-validate>
    @csrf
    <div class="row">


        <div class="form-group my-1 col-md-6 col-sm-12">
            <label class="my-1">@lang('trans.desc_ar')</label>
            <textarea name="desc_ar" placeholder="@lang('trans.desc_ar')" class=" form-control">{{ old('desc_ar') }}</textarea>
        </div>
        <div class="form-group my-1 col-md-6 col-sm-12">
            <label class="my-1">@lang('trans.desc_en')</label>
            <textarea name="desc_en" placeholder="@lang('trans.desc_en')" class=" form-control">{{ old('desc_en') }}</textarea>
        </div>

      

        <div class="form-group my-1 col-md-6 col-sm-12">
            <label class="my-1">@lang('trans.visibility')</label>
            <select class="form-control " required name="status">
                <option value="0">@lang('trans.hidden')</option>
                <option selected value="1">@lang('trans.visible')</option>
            </select>
        </div>
       
        <div class="form-group my-1 col-md-6 col-sm-12">
            <label class="my-1">@lang('trans.images')</label>
            <label class="file-input btn btn-block btn-secondary btn-file w-100">
                @lang("trans.Browse")
                <input accept="image/*" type="file" type="file" name="images[]" multiple>
            </label>
        </div>

        
        <div class="clearfix"></div>
    
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

@include('Admin.MultiSelect')
@endsection
