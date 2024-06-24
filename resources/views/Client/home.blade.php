@extends('Client.layouts.layout')
@push('css')
    @if (lang() == 'ar')
        <style>
            .slick-track {
                float: left;
            }
        </style>
    @endif
    <link href="https://vjs.zencdn.net/8.10.0/video-js.css" rel="stylesheet" />
@endpush
@section('content')
    {{-- @isset($Sliders[0])    
    @php($Slider = $Sliders[0])
    <div class="container-fluid mb-1 section-top p-0">
        <img class="w-100 d-none d-md-block" src="{{ asset($Slider->image_lg) }}">
        <img class="w-100 d-md-none" src="{{ asset($Slider->image_sm) }}">
    </div>
@endisset
@if ($MostSelling->count())
    <div class="container my-1" data-aos="fade-up">
        <div class="row">
            <div class="col-12 ">
                <h3 class="py-4  fw-bold text-black fw-bolder">
                    @lang('trans.mostselling')
                </h3>
            </div>
        </div>
        <div>
            <div class=" slider2 regular row">
                @foreach ($MostSelling as $Product)        
                    <div class=" col-6 p-2">
                        <a href="{{ route('client.product',$Product) }}">
                            <div class="card  border-0 rounded-0  position-relative ">
                                <div class="d-flex align-items-center">
                                    <img class="w-100 h-auto" src="{{ asset($Product->RandomImage() ?? setting('logo')) }}" />
                                </div>
                            </div>
                        </a>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
@endif
@if ($Popular->count())
<div class="container my-1" data-aos="fade-up">
    <div class="row">
        <div class="col-12 d-flex justify-content-between align-items-center">
            <h3 class="py-4 fw-bold">
                @lang('trans.popular')
            </h3>
            <a class="text-black text-decoration-underline" href="{{ route('client.shop') }}">@lang('trans.all')</a>
        </div>
    </div>
    <div class="row ">
        <div class=" slick-slider slider-title regular ">
            @foreach ($Popular as $Product)       
                <div class=" p-2  position-relative">
                    @include('Client.layouts.product',['Product'=>$Product])
                </div>
            @endforeach
        </div>
    </div>
</div>
@endif
@isset($Sliders[1])    
    @php($Slider = $Sliders[1])
    <div class="container-fluid mb-5 section-top p-0">
        <img class="w-100 d-none d-md-block" src="{{ asset($Slider->image_lg) }}">
        <img class="w-100 d-md-none" src="{{ asset($Slider->image_sm) }}">
    </div>
@endisset
@if ($Offers->count())
<div class="container my-1" data-aos="fade-up">
    <div class="row">
        <div class="col-12 d-flex justify-content-between align-items-center">
            <h3 class="py-4 fw-bold">@lang('trans.offers')</h3>
            <a class="text-black text-decoration-underline" href="{{ route('client.shop') }}">@lang('trans.all')</a>
        </div>
    </div>
    <div class="row ">
        <div class=" slick-slider slider-title regular ">
            @foreach ($Offers as $Product)     
                <div class=" p-2   position-relative ">
                    @include('Client.layouts.product',['Product'=>$Product])
                </div>
            @endforeach
        </div>
    </div>
</div>
@endif --}}
    <div
        class="loading-screen  position-fixed top-0 start-0 end-0 bottom-0 bg-white justify-content-center align-items-center">
        <img src="{{ asset('frontEnd/assets/imgs/home/loading.gif') }}"
            data-src="{{ asset('frontEnd/assets/imgs/home/actual-image.jpg') }}" loading="lazy" alt="Loading" width height>

    </div>
    <div class="container-fluid my-lg-5 my-2 slider-home">
        @if ($advertising)
            <div class="row flex-lg-row flex-column-reverse align-items-center gy-3">

                <div class="col-lg-6 col-12">

                    <div class="row  gap-2">
                        <div class="col-12">
                            <h2 class="fw-bold">
                                {{ $advertising['title_' . lang()] }}
                            </h2>
                        </div>
                        <div class="col-12">
                            <h3 class="fw-semibold">
                                {{ $advertising->desc() }}</h3>
                            </h3>
                        </div>

                    </div>
                </div>
                <div class="col-lg-6 col-12">
                    <div id="carouselExample" class="carousel slide p-0">
                        <div class="carousel-inner">
                            @foreach ($advertising->slider as $key => $value)
                                <div class="carousel-item {{ $key == 0 ? 'active' : '' }}">
                                    <div class="content-slider">
                                    @if ($value->type == 'video')
                                        <video style="    width: 100%;    object-fit: cover; " id="my-video"
                                            class="video-js rounded-2" autoplay muted preload="auto" width=""
                                            height="auto" data-setup="{}">
                                            <source src="{{ asset($value->file) }}" type="video/mp4" />
                                            <source src="{{ asset($value->file) }}" type="video/webm" />
                                            <p class="vjs-no-js">
                                                To view this video please enable JavaScript, and consider upgrading to a
                                                web browser that
                                                <a href="https://videojs.com/html5-video-support/" target="_blank">supports
                                                    HTML5
                                                    video</a>
                                            </p>
                                        </video>
                                    @else
                                        <img src="{{ asset($value->file) }}" class="d-block w-100" alt="...">
                                    @endif
</div>
                                </div>
                            @endforeach


                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample"
                            data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExample"
                            data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                    </div>
                </div>
            </div>
        @endif
    </div>
    <div class="container my-lg-5 my-2 ">
        @if ($advertising)
            <div class="row justify-content-center">
                @foreach ($advertising->images as $image)
                    <div class="col-lg-3 col-md-4 col-6 ">
                        <div class="p-3">
                            <img class="rounded-5 w-100 " data-aos="fade-up" data-aos-duration="3000"
                                data-aos-anchor-placement="center-bottom" src="{{ asset($image->image) }}" loading="lazy"
                                alt="Loading" width height />
                        </div>
                    </div>
                @endforeach


            </div>
        @endif
        @if ($Statistics->count() > 0)
            <div class="row justify-content-around gy-3 rating" id="Rating">
                @foreach ($Statistics as $data)
                    <div class="col-md-3 col-sm-6 col-12 ">
                        <div class="rounded-card bg-black d-flex p-3  gap-3 align-items-center">
                            <div class>
                                <span
                                    class="img-icon d-flex justify-content-center align-items-center m-auto rounded-circle">
                                    <img src="{{ asset($data->image) }}" loading="lazy" alt="Loading" width height>
                                </span>
                            </div>
                            <div>
                                <h3 class="text-white h5 text-start"><span>+</span><span
                                        class="counter">{{ $data->number }}</span></h3>
                                <p class="text-white h6">{{ $data->title() }}</p>

                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        @endif

    </div>

    <div class="bg-Secondary-color marquee mb-5 position-relative py-2">
        <div class="slick-slide ">
            <div class=" d-flex align-items-center justify-content-center">

                <span class=" text-white  text-uppercase ">
                    @lang('trans.Progress')
                </span>
                <span class="px-2">
                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                        xmlns="http://www.w3.org/2000/svg">
                        <path
                            d="M6.59964 11.923C11.6723 2.46869 17.9886 2.35967 20.5127 3.48695C21.64 6.01105 21.531 12.3274 12.0767 17.4C11.9787 16.8364 11.4334 15.3599 10.0366 13.9631C8.63976 12.5663 7.16328 12.021 6.59964 11.923Z"
                            stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                        <path
                            d="M13.3496 16.95C15.1881 17.85 15.3844 19.4638 15.6391 21C15.6391 21 19.4898 18.1535 17.0267 14.25"
                            stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                        <path
                            d="M7.04999 10.7269C6.14999 8.88844 4.53618 8.69215 3.00003 8.43746C3.00003 8.43746 5.84653 4.58682 9.75 7.04993"
                            stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                        <path
                            d="M6.01812 14.9113C5.50629 15.4231 4.63617 16.9074 5.25037 18.75C7.09297 19.3642 8.57729 18.4941 9.08913 17.9823"
                            stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                        <path
                            d="M17.3008 8.45007C17.3008 7.48357 16.5173 6.70007 15.5508 6.70007C14.5843 6.70007 13.8008 7.48357 13.8008 8.45007C13.8008 9.41657 14.5843 10.2001 15.5508 10.2001C16.5173 10.2001 17.3008 9.41657 17.3008 8.45007Z"
                            stroke="white" stroke-width="1.5" />
                    </svg>
                </span>
            </div>
        </div>
        <div class="slick-slide ">
            <div class=" d-flex align-items-center justify-content-center">

                <span class=" text-white  text-uppercase ">
                    @lang('trans.development')
                </span>
                <span class="px-2">
                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                        xmlns="http://www.w3.org/2000/svg">
                        <path
                            d="M6.59964 11.923C11.6723 2.46869 17.9886 2.35967 20.5127 3.48695C21.64 6.01105 21.531 12.3274 12.0767 17.4C11.9787 16.8364 11.4334 15.3599 10.0366 13.9631C8.63976 12.5663 7.16328 12.021 6.59964 11.923Z"
                            stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                        <path
                            d="M13.3496 16.95C15.1881 17.85 15.3844 19.4638 15.6391 21C15.6391 21 19.4898 18.1535 17.0267 14.25"
                            stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                        <path
                            d="M7.04999 10.7269C6.14999 8.88844 4.53618 8.69215 3.00003 8.43746C3.00003 8.43746 5.84653 4.58682 9.75 7.04993"
                            stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                        <path
                            d="M6.01812 14.9113C5.50629 15.4231 4.63617 16.9074 5.25037 18.75C7.09297 19.3642 8.57729 18.4941 9.08913 17.9823"
                            stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                        <path
                            d="M17.3008 8.45007C17.3008 7.48357 16.5173 6.70007 15.5508 6.70007C14.5843 6.70007 13.8008 7.48357 13.8008 8.45007C13.8008 9.41657 14.5843 10.2001 15.5508 10.2001C16.5173 10.2001 17.3008 9.41657 17.3008 8.45007Z"
                            stroke="white" stroke-width="1.5" />
                    </svg>
                </span>
            </div>
        </div>
        <div class="slick-slide ">
            <div class=" d-flex align-items-center justify-content-center">

                <span class=" text-white  text-uppercase ">
                    @lang('trans.Innovation')
                </span>
                <span class="px-2">
                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                        xmlns="http://www.w3.org/2000/svg">
                        <path
                            d="M6.59964 11.923C11.6723 2.46869 17.9886 2.35967 20.5127 3.48695C21.64 6.01105 21.531 12.3274 12.0767 17.4C11.9787 16.8364 11.4334 15.3599 10.0366 13.9631C8.63976 12.5663 7.16328 12.021 6.59964 11.923Z"
                            stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                        <path
                            d="M13.3496 16.95C15.1881 17.85 15.3844 19.4638 15.6391 21C15.6391 21 19.4898 18.1535 17.0267 14.25"
                            stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                        <path
                            d="M7.04999 10.7269C6.14999 8.88844 4.53618 8.69215 3.00003 8.43746C3.00003 8.43746 5.84653 4.58682 9.75 7.04993"
                            stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                        <path
                            d="M6.01812 14.9113C5.50629 15.4231 4.63617 16.9074 5.25037 18.75C7.09297 19.3642 8.57729 18.4941 9.08913 17.9823"
                            stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                        <path
                            d="M17.3008 8.45007C17.3008 7.48357 16.5173 6.70007 15.5508 6.70007C14.5843 6.70007 13.8008 7.48357 13.8008 8.45007C13.8008 9.41657 14.5843 10.2001 15.5508 10.2001C16.5173 10.2001 17.3008 9.41657 17.3008 8.45007Z"
                            stroke="white" stroke-width="1.5" />
                    </svg>

                </span>
            </div>
        </div>
        <div class="slick-slide ">
            <div class=" d-flex align-items-center justify-content-center">

                <span class=" text-white  text-uppercase ">
                    @lang('trans.efficiency')
                </span>
                <span class="px-2">
                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                        xmlns="http://www.w3.org/2000/svg">
                        <path
                            d="M6.59964 11.923C11.6723 2.46869 17.9886 2.35967 20.5127 3.48695C21.64 6.01105 21.531 12.3274 12.0767 17.4C11.9787 16.8364 11.4334 15.3599 10.0366 13.9631C8.63976 12.5663 7.16328 12.021 6.59964 11.923Z"
                            stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                        <path
                            d="M13.3496 16.95C15.1881 17.85 15.3844 19.4638 15.6391 21C15.6391 21 19.4898 18.1535 17.0267 14.25"
                            stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                        <path
                            d="M7.04999 10.7269C6.14999 8.88844 4.53618 8.69215 3.00003 8.43746C3.00003 8.43746 5.84653 4.58682 9.75 7.04993"
                            stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                        <path
                            d="M6.01812 14.9113C5.50629 15.4231 4.63617 16.9074 5.25037 18.75C7.09297 19.3642 8.57729 18.4941 9.08913 17.9823"
                            stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                        <path
                            d="M17.3008 8.45007C17.3008 7.48357 16.5173 6.70007 15.5508 6.70007C14.5843 6.70007 13.8008 7.48357 13.8008 8.45007C13.8008 9.41657 14.5843 10.2001 15.5508 10.2001C16.5173 10.2001 17.3008 9.41657 17.3008 8.45007Z"
                            stroke="white" stroke-width="1.5" />
                    </svg>

                </span>
            </div>
        </div>
        <div class="slick-slide ">
            <div class=" d-flex align-items-center justify-content-center">

                <span class=" text-white  text-uppercase ">
                    @lang('trans.leadership')
                </span>
                <span class="px-2">
                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                        xmlns="http://www.w3.org/2000/svg">
                        <path
                            d="M6.59964 11.923C11.6723 2.46869 17.9886 2.35967 20.5127 3.48695C21.64 6.01105 21.531 12.3274 12.0767 17.4C11.9787 16.8364 11.4334 15.3599 10.0366 13.9631C8.63976 12.5663 7.16328 12.021 6.59964 11.923Z"
                            stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                        <path
                            d="M13.3496 16.95C15.1881 17.85 15.3844 19.4638 15.6391 21C15.6391 21 19.4898 18.1535 17.0267 14.25"
                            stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                        <path
                            d="M7.04999 10.7269C6.14999 8.88844 4.53618 8.69215 3.00003 8.43746C3.00003 8.43746 5.84653 4.58682 9.75 7.04993"
                            stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                        <path
                            d="M6.01812 14.9113C5.50629 15.4231 4.63617 16.9074 5.25037 18.75C7.09297 19.3642 8.57729 18.4941 9.08913 17.9823"
                            stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                        <path
                            d="M17.3008 8.45007C17.3008 7.48357 16.5173 6.70007 15.5508 6.70007C14.5843 6.70007 13.8008 7.48357 13.8008 8.45007C13.8008 9.41657 14.5843 10.2001 15.5508 10.2001C16.5173 10.2001 17.3008 9.41657 17.3008 8.45007Z"
                            stroke="white" stroke-width="1.5" />
                    </svg>

                </span>
            </div>
        </div>
        <div class="slick-slide ">
            <div class=" d-flex align-items-center justify-content-center">

                <span class=" text-white  text-uppercase ">
                    @lang('trans.continuity')
                </span>
                <span class="px-2">
                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                        xmlns="http://www.w3.org/2000/svg">
                        <path
                            d="M6.59964 11.923C11.6723 2.46869 17.9886 2.35967 20.5127 3.48695C21.64 6.01105 21.531 12.3274 12.0767 17.4C11.9787 16.8364 11.4334 15.3599 10.0366 13.9631C8.63976 12.5663 7.16328 12.021 6.59964 11.923Z"
                            stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                        <path
                            d="M13.3496 16.95C15.1881 17.85 15.3844 19.4638 15.6391 21C15.6391 21 19.4898 18.1535 17.0267 14.25"
                            stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                        <path
                            d="M7.04999 10.7269C6.14999 8.88844 4.53618 8.69215 3.00003 8.43746C3.00003 8.43746 5.84653 4.58682 9.75 7.04993"
                            stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                        <path
                            d="M6.01812 14.9113C5.50629 15.4231 4.63617 16.9074 5.25037 18.75C7.09297 19.3642 8.57729 18.4941 9.08913 17.9823"
                            stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                        <path
                            d="M17.3008 8.45007C17.3008 7.48357 16.5173 6.70007 15.5508 6.70007C14.5843 6.70007 13.8008 7.48357 13.8008 8.45007C13.8008 9.41657 14.5843 10.2001 15.5508 10.2001C16.5173 10.2001 17.3008 9.41657 17.3008 8.45007Z"
                            stroke="white" stroke-width="1.5" />
                    </svg>

                </span>
            </div>
        </div>
    </div>
    @if ($Services->count() > 0)
        <div class="container my-lg-5 my-3">
            <div class="row">
                <div class="col-12 text-center ">
                    <h3 class="py-4 fw-bold ">@lang('trans.OUR SERVICES')</h3>

                </div>
            </div>
            <div class="row  justify-content-center align-items-center gy-3">
                @foreach ($Services as $service)
                    <div class=" col-md-4 col-12 " data-aos="flip-left">
                     <a href="{{ route('client.serviceGallery', $service->id) }}" class="text-black">

                        <div class="gray-div text-center  border rounded-5 py-4 px-3">
                            <div class="d-flex justify-content-center align-items-center m-auto ">
                                    <img src="{{ asset($service->home_image) }}"
                                        style="    max-height: 100px;max-width:150px">
                             

                            </div>
                            <h5 class="py-3 fw-bold">{{ $service->title() }}</h5>
                            <p class=" lh-base">{{ mb_strimwidth($service['desc_home_' . lang()], 0, 40, '...') }}</p>
                        </div>
                           </a>
                    </div>
                @endforeach


            </div>
                        <div class="row  justify-content-center align-items-center text-center my-3">
     <a  href="{{route('client.services')}}" class="text-decoration-underline text-black">
     @lang('trans.see more')
     </a>


            </div>
        </div>
    @endif
    @if ($partners->count() > 0)
        <div class="bg-Secondary-color  my-lg-5 my-3 position-relative py-5">
            <div class="container">
                <div class="row slider1 regular">
                    @foreach ($partners as $partner)
                        <div class="p-2">
                            <div class=" d-flex align-items-center justify-content-center img-slider">
                                <img src="{{ asset($partner->image) }}" loading="lazy" alt="Loading" width height />
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>

        </div>
    @endif
    @if ($Banner)
        <div class="container my-lg-5 my-3">
            <div class="row  justify-content-center align-items-center">

                <div class=" col-md-7 col-12 " data-aos="flip-left">
                    <div class>
                        {!! $Banner->desc() !!}
                    </div>
                </div>
                <div class=" col-md-5 col-12 d-flex gap-4 img-top-container">
                    @foreach ($Banner->images as $bannerImage)
                        <div class>
                            <img class="w-100 border-5" data-aos="flip-right" src="{{ asset($bannerImage->image) }}"
                                loading="lazy" alt="Loading" width height />
                        </div>
                    @endforeach


                </div>
            </div>
        </div>
    @endif
    @if ($steps->count() > 0)
        <div class="container my-lg-5 my-3 container-reverse-store">
            <h3 class="py-4 fw-bold ">@lang('trans.StepSuccess')</h3>
            @foreach ($steps as $key => $value)
                @if ($key == 0)
                    <div class="row  align-items-center my-lg-5 my-2">
                        <div class=" col-md-7 col-12 " data-aos="flip-left">
                            <div class="gray-div flex-row  row border rounded-5 gap-lg-5 gap-2 py-lg-2 py-1 px-lg-4 px-2">
                                <div class="d-flex  align-items-center col-4 img-success">
                                    <img class="rounded-4 " src="{{ asset($value->image) }}" loading="lazy"
                                        alt="Loading" width height />
                                </div>
                                <div class=" col-7 ">
                                    <h5 class="py-3 fw-bold">{{ $value->title() }}</h5>
                                    <p class=" lh-base">{{ $value->desc() }}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                @else
                    <div class="row  align-items-center my-lg-5 my-2">
                        <div class=" col-md-7 col-12 " data-aos="flip-left">
                            <div class="gray-div flex-row  row d-flex border rounded-5 gap-lg-5 gap-2 py-lg-2 py-1 px-lg-4 px-2">
                                <div class="d-flex col-4 align-items-center m-auto img-success">
                                    <img class="rounded-4" src="{{ asset($value->image) }}" loading="lazy"
                                        alt="Loading" width height />
                                </div>
                                <div class=" col-7 ">
                                    <h5 class="py-3 fw-bold">{{ $value->title() }}</h5>
                                    <p class=" lh-base">{{ $value->desc() }}</p>
                                </div>
                            </div>
                        </div>
                        <div class=" col-md-5 col-12 d-lg-block d-none" data-aos="flip-left">
                            <div class="d-flex justify-content-center align-items-center ">
                                <svg class="arrow" width="91" height="182" viewBox="0 0 91 182" fill="none"
                                    xmlns="http://www.w3.org/2000/svg">
                                    <path
                                        d="M43.1747 3C20.1823 43.539 -26.125 110.664 28.8509 146.132C42.3183 154.82 56.2595 153.877 71.61 153.877C72.2732 153.877 87.6281 151.413 85.9338 150.057C81.3968 146.428 54.9906 124.629 72.2467 138.598C74.0722 140.076 88.162 148.018 88.162 150.482C88.162 157.194 63.475 173.683 58.4534 178.705"
                                        stroke="#1C1C1C" stroke-width="5" stroke-linecap="round" />
                                </svg>
                            </div>
                        </div>

                    </div>
                @endif
            @endforeach


        </div>
    @endif

@endsection


@push('js')
    <script src="https://vjs.zencdn.net/8.10.0/video.min.js"></script>
    <script>
        var lang = localStorage.getItem('Language');
        var Diriction = false;
        if (lang == "العربية") {
            Diriction = true;
        }

        $(".slider1").slick({
            infinite: true,
            slidesToShow: 5,
            slidesToScroll: 1,
            autoplay: true,
            arrows: false,
            dots: false,
            rtl: Diriction,
            autoplaySpeed: 1000,
            responsive: [{
                    breakpoint: 1024,
                    settings: {
                        slidesToShow: 2,
                        infinite: true,
                    },
                },
                {
                    breakpoint: 719,
                    settings: {
                        slidesToShow: 1,
                    },
                }
            ],
        });



        document.addEventListener("DOMContentLoaded", function() {
            const productCards = document.querySelectorAll('.slider-title .card');

            function initializeProductCard(card) {
                const colorButtons = card.querySelectorAll('.color');

                const defaultButton = Array.from(colorButtons).find(button => button.classList.contains('active'));
                if (defaultButton) {
                    changeProductImage(defaultButton, card);
                }

                colorButtons.forEach(button => {
                    button.addEventListener('click', function() {
                        handleButtonClick(colorButtons, this);
                        changeProductImage(this, card);
                    });
                });
            }

            function handleButtonClick(buttons, currentButton) {
                buttons.forEach(btn => {
                    if (btn !== currentButton) {
                        btn.classList.remove('active');
                    }
                });
                currentButton.classList.toggle('active');
            }

            function changeProductImage(button, card) {
                const newImageSrc = button.getAttribute('data-img');
                const productImage = card.querySelector('.img-card img');
                productImage.src = newImageSrc;
            }

            // Initialize each product card
            productCards.forEach(card => {
                initializeProductCard(card);
            });
        });
        $(document).ready(() => {
            $(".loading-screen").fadeOut(1000);
        });
        var lang = localStorage.getItem('Language');
        var Diriction = false;
        if (lang == "ar") {
            Diriction = true;
        }
        $('.marquee').slick({
            speed: 2000,
            autoplay: true,
            autoplaySpeed: 100,
            centerMode: true,
            cssEase: 'linear',
            slidesToShow: 1,
            slidesToScroll: 1,
            variableWidth: true,
            infinite: true,
            initialSlide: 1,
            rtl: Diriction,

            arrows: false

        });
        $('.marquee2').slick({
            speed: 2000,
            autoplay: true,
            autoplaySpeed: 100,
            centerMode: true,
            cssEase: 'linear',
            rtl: Diriction,
            slidesToShow: 1,
            slidesToScroll: 1,
            variableWidth: true,
            infinite: true,
            initialSlide: 1,
            arrows: false

        });

        function animateCounter(counterElement, targetValue, durationInSeconds) {
            let currentValue = 0;
            const totalFrames = durationInSeconds;
            const step = Math.ceil(targetValue / totalFrames);

            function updateCounter() {
                if (currentValue < targetValue) {
                    currentValue += step;
                    counterElement.textContent = currentValue;
                    setTimeout(updateCounter, 100);
                } else {
                    currentValue = targetValue;
                    counterElement.textContent = targetValue;
                }
            }
            updateCounter();
        }

        function initCounters() {
            const counters = document.querySelectorAll('.counter');
            counters.forEach((counter, index) => {
                const targetValue = parseInt(counter.textContent.trim(), 10);
                animateCounter(counter, targetValue, 30);
            });
        }

        $(document).ready(() => {
            let containerRating = $(".rating").offset().top;
            let countersInitialized = false;
            $(window).scroll(function() {
                let windowScroll = $(window).scrollTop();
                if (windowScroll > containerRating - 550 && !countersInitialized) {
                    initCounters();
                    countersInitialized = true;
                }
            })
            $("#backTop").click(function() {
                $("html,body").scrollTop(0);
            })
        });
    </script>
    {{-- <script>
        AOS.init({
            once: true
        })

        document.addEventListener('DOMContentLoaded', function() {
            var seeAllProductLinks = document.querySelectorAll('.seeall-product');

            seeAllProductLinks.forEach(function(link) {
                link.addEventListener('click', function() {
                    console.log("hi");

                    var container = this.closest('.container');
                    var h3Element = container.querySelector('h3');
                    var activeLinkText = h3Element.textContent.trim();
                    localStorage.setItem('activeLinkText', activeLinkText);
                });
            });
        });

        $(".slick-slider").slick({
            infinite: true,
            slidesToShow: 4,
            slidesToScroll: 1,
            autoplay: true,
            arrows: false,
            dots: false,
            autoplaySpeed: 1000,
            responsive: [{
                breakpoint: 1024,
                settings: {
                    slidesToShow: 3,
                    infinite: true,
                },
            }, {
                breakpoint: 919,
                settings: {
                    slidesToShow: 2,
                },
            }],
        });

        $(document).on("click", ".list-group-item .toggle", function() {
            $(this).parent().find('ul').toggleClass('d-none');
        });
    </script> --}}
@endpush
