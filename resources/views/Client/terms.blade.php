@extends('Client.layouts.layout')
@push('css')
    <style>
        .bg-img.bg-terms {
            background-image: url("{{asset(setting('terms_image'))}}");
        }
    </style>
@endpush
@section('content')
    <div id="icons">
    </div>

    <div class="bg-img bg-terms">
        <div class="header-div w-100 h-100 d-flex align-items-end px-5">
            <div class="rotate-div">
                <h3>
                    @lang('trans.Terms & Conditions')</h3>
            </div>
        </div>
    </div>

    </div>
    <div class="container my-lg-5 my-3 section-top">
        <div class="row my-lg-4 my-3">
            <h5 class="top-service my-5">
                <span>
                    @lang('trans.Terms & Conditions')
                </span>
            </h5>
        </div>

        <div class="row my-lg-4 my-3">


            
            {!! setting('terms_'.lang()) !!}
        </div>

    </div>

    </div>
@endsection
