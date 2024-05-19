@extends('Admin.layout')
@section('pagetitle', __('trans.categories'))
@section('content')
    <form method="POST" action="{{ route('admin.categories.update',$categoryMethod) }}" enctype="multipart/form-data">
        @csrf
        @method('PUT')
        <div class="row">
            <div class="col text-center">
                <img width="200px" src="{{ asset($categoryMethod->image) }}" alt="item" class="changeimage">
            </div>
        </div>
        <div class="row">
            <div class=" col-md-6">
                <label for="title_ar">@lang('trans.title_ar')</label>
                <input id="title_ar" type="text" name="title_ar" required placeholder="@lang('trans.title_ar')"
                    class="form-control" value="{{ $categoryMethod['title_ar'] }}">
            </div>
            <div class=" col-md-6">
                <label for="title_en">@lang('trans.title_en')</label>
                <input id="title_en" type="text" name="title_en" required placeholder="@lang('trans.title_en')"
                    class="form-control" value="{{ $categoryMethod['title_en'] }}">
            </div>
            <div class=" col-md-6">
                <label for="visibility">@lang('trans.visibility')</label>
                <select class="form-control" required id="visibility" name="status">
                    <option {{ $categoryMethod['status'] == 0 ? 'selected' : '' }} value="0">@lang('trans.hidden')</option>
                    <option {{ $categoryMethod['status'] == 1 ? 'selected' : '' }} value="1">@lang('trans.visible')</option>
                </select>
            </div>

            <div class="clearfix"></div>
            <div class="col-12 my-3">
                <div class="button-group">
                    <button type="submit" class="main-btn btn-hover w-100 text-center">
                        {{ __('trans.Submit') }}
                    </button>
                </div>
            </div>
        </div>
    </form>
@endsection
