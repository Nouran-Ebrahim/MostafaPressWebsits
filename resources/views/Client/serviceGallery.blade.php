@extends('Client.layouts.layout')
@push('css')
    <style>
        .portfolio-item {
            /*width:100%;*/
        }

        .portfolio-item .item {
            /*width:303px;*/
            float: left;
            margin-bottom: 10px;
            display: flex;
            justify-content: center;
            align-items: center;
            max-height: 196px;
            overflow: hidden;
        }

        .section-top-service .row::after {
            display: none
        }
    </style>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fancyapps/ui@5.0/dist/fancybox/fancybox.css" />
@endpush
@section('content')
    <div class="bg-img">
        <div class="header-div w-100 h-100 d-flex align-items-end px-5">
            <div class="rotate-div">
                <h3>
                    @lang('trans.gallery') </h3>
            </div>
        </div>
    </div>

    </div>
    @if ($galley->count() > 0)
        <div class="container my-lg-5 my-3 section-top section-top-service ">
            <h5 class="top-service">
                <span>
                    {{ $service->title() }}
                </span>
            </h5>
            
                            <p  class="mt-4 " style="line-height:normal;font-weight:400">
                                {{ $service->desc() }}
</h6>
                       
            <div class="portfolio-item row gy-3">
                @foreach ($galley as $data)
                    <div class="item selfie col-lg-3 col-md-6 col-12 ">
                        <a href="{{ asset($data->image) }}" class="fancylight popup-btn" data-fancybox="gallery"
                            data-fancybox-group="light">
                            <img class="img-fluid" src="{{ asset($data->image) }}" alt="">
                        </a>
                    </div>
                @endforeach
            </div>

        </div>
    @endif

@endsection
@push('js')
    <script src="https://cdn.jsdelivr.net/npm/@fancyapps/ui@5.0/dist/fancybox/fancybox.umd.js"></script>
    <script>
        Fancybox.bind('[data-fancybox="gallery"]', {
            // Your custom options for a specific gallery
        });
    </script>
@endpush
