@extends('Client.layouts.layout')
@push('css')
    <style>
        .bg-img.bg-policy {
            background-image: url("{{ asset(setting('privacy_image')) }}");
        }
    </style>
@endpush
@section('content')
    <div id="icons">
    </div>

    <div class="bg-img bg-policy">
        <div class="header-div w-100 h-100 d-flex align-items-end px-5">
            <div class="rotate-div">
                <h3>
                    @lang('trans.Privacy Policy') </h3>
            </div>
        </div>
    </div>

    </div>
    <div class="container my-lg-5 my-3 section-top">
        <div class="row my-lg-4 my-3">
            <h5 class="top-service my-5">
                <span>
                    @lang('trans.Privacy Policy')
                </span>
            </h5>
        </div>
       
        {!! setting('privacy_' . lang()) !!}
    </div>

    </div>
@endsection
