@extends('Admin.layout')
@section('pagetitle', __('trans.services'))
@section('content')

    <form method="POST" action="{{ route('admin.services.update', $Image) }}" enctype="multipart/form-data"
        data-parsley-validate novalidate>
        @csrf
        @method('PUT')
        <div class="row">
            <div class="form-group my-1 col-md-6 col-sm-12">
                <label class="my-1">@lang('trans.title_ar')</label>
                <input type="text" name="title_ar" value="{{ $Image->title_ar }}" required placeholder="@lang('trans.title_ar')"
                    class="form-control">
            </div>
            <div class="form-group my-1 col-md-6 col-sm-12">
                <label class="my-1">@lang('trans.title_en')</label>
                <input type="text" name="title_en" value="{{ $Image->title_en }}" required
                    placeholder="@lang('trans.title_en')" class="form-control">
            </div>
            <div class="form-group my-1 col-md-6 col-sm-12">
                <label class="my-1">@lang('trans.desc_ar')</label>
                <textarea name="desc_ar" placeholder="@lang('trans.desc_ar')" value="{{ $Image->desc_ar }}" class="mceNoEditor form-control">{{ $Image->desc_ar }}</textarea>
            </div>
            <div class="form-group my-1 col-md-6 col-sm-12">
                <label class="my-1">@lang('trans.desc_en')</label>
                <textarea name="desc_en" placeholder="@lang('trans.desc_en')" value="{{ $Image->desc_en }}" class="mceNoEditor form-control">{{ $Image->desc_en }}</textarea>
            </div>
            <div class="form-group my-1 col-md-6 col-sm-12">
                <label class="my-1">@lang('trans.desc_home_ar')</label>
                <textarea name="desc_home_ar" placeholder="@lang('trans.desc_home_ar')" class="mceNoEditor form-control"
                    value="{{ $Image->desc_home_ar }}">{{ $Image->desc_home_ar }}</textarea>
            </div>
            <div class="form-group my-1 col-md-6 col-sm-12">
                <label class="my-1">@lang('trans.desc_home_en')</label>
                <textarea name="desc_home_en" placeholder="@lang('trans.desc_home_en')" class="mceNoEditor form-control"
                    value="{{ $Image->desc_home_en }}">{{ $Image->desc_home_en }}</textarea>
            </div>
            <div class="form-group my-1 col-md-6 col-sm-12">
                <label class="my-1">@lang('trans.arrangment')</label>
                <input required type="text" name="arrangment" value="{{ $Image->arrangment }}"
                    placeholder="@lang('trans.arrangment')" class="form-control">
            </div>
            <div class="form-group my-1 col-md-6 col-sm-12">
                <label class="my-1">@lang('trans.visibility')</label>
                <select class="form-control " required name="status">
                    <option {{ $Image->status == '0' ? 'selected' : '' }} value="0">@lang('trans.hidden')</option>
                    <option {{ $Image->status == '1' ? 'selected' : '' }} value="1">@lang('trans.visible')</option>
                </select>
            </div>

            <div class="form-group my-1 col-md-6 col-sm-12">
                <label class="my-1">@lang('trans.image')</label>
                <label class="file-input btn btn-block btn-secondary btn-file w-100">
                    @lang('trans.Browse')
                    <input accept="image/*" type="file" type="file" name="image">
                </label>
            </div>
            <div class="form-group my-1 col-md-6 col-sm-12">
                <label class="my-1">@lang('trans.home_image')</label>
                <label class="file-input btn btn-block btn-secondary btn-file w-100">
                    @lang('trans.Browse')
                    <input accept="image/*" type="file" type="file" name="home_image">
                </label>
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
