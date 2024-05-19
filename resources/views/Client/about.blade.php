@extends('Client.layouts.layout')
@push('css')
    <style>
        .bg-img {
            background-image: url("{{asset(setting('about_image'))}}");
            background-position: center center;
            background-attachment: fixed;
            background-size: cover;
            background-repeat: no-repeat;
            height: 600px;
        }
    </style>
@endpush
@section('content')
    <div id="icons">
    </div>

    <div class="bg-img">
        <div class="header-div w-100 h-100 d-flex align-items-end px-5">
            <div class="rotate-div">
                <h3>
                    @lang('trans.about')
                </h3>
            </div>
        </div>
    </div>


    <div class="container my-lg-5 my-3  section-top ">
        <div class="row align-items-center justify-content-center  my-lg-5 my-3 pt-5">
            <div class="col-lg-6 col-md-4 col-12 position-relative">
                <div class="img-absloute green">
                    <img class="w-100" src="{{ asset('frontEnd/assets/imgs/about/80ccacccb61c76e9a41a1d79b7380338.jpg') }}"
                        loading="lazy" alt="Loading" width="" height="" />
                </div>
            </div>
            <div class="col-lg-6 col-md-8 col-12 position-relative">
                {!! setting('about_' . lang()) !!}
            </div>
            <div class="col-12  my-lg-5 my-3 pt-5">
                <div class=" about-img-css" data-aos="flip-up" data-aos-duration="1500">
                    <h1>
                        <span>M</span>
                        <span>o</span>
                        <span>s</span>
                        <span>t</span>
                        <span>a</span>
                        <span>f</span>
                        <span>a</span>
                        <span>P</span>
                        <span>r</span>
                        <span>e</span>
                        <span>s</span>
                        <span>s</span>
                    </h1>
                </div>

            </div>
        </div>
        {{-- <div class="row align-items-center justify-content-center  my-lg-5 my-3">
            <div class="col-lg-6 col-md-4 col-12 position-relative">
                <div class="img-absloute small-img">
                    <img class="w-100" src="assets/imgs/about/1e8bd030581b1ab0261d3786aa2dd15f.jpg" data-aos="fade-up"
                        data-aos-duration="1500" loading="lazy" alt="Loading" width="" height="" />
                </div>
            </div>
            <div class="col-lg-6 col-md-8 col-12 position-relative">
                <div class="py-2"><img src="assets/imgs/about/quote-up.svg" loading="lazy" alt="Loading" width=""
                        height="" /></div>

                <div class="px-4">
                    <p class="text-secondary fw-bold">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
                        et dolore magna aliqua. Ut enim ad minim
                    </p>
                    <p class="">Lorem ipsum dolor</p>
                </div>
                <div class="py-2 d-flex justify-content-end"><img src="assets/imgs/about/quote-down.svg" loading="lazy"
                        alt="Loading" width="" height="" /></div>
            </div>
        </div>
        <div class="row align-items-center justify-content-center my-lg-5 my-3">

            <div class=" col-12 position-relative">
                <div class="py-2"><img src="assets/imgs/about/shape_109.svg" loading="lazy" alt="Loading" width=""
                        height="" /></div>

                <div class="px-4">
                    <p class="text-secondary fw-bold">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
                        et dolore magna aliqua. Ut enim ad minim </p>
                    <p class="">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                        incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                        ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur
                        adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                        veniam, quis nostrud Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                        incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                        ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur
                        adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                        veniam, quis nostrud </p>
                </div>
            </div>
        </div>
        <div class="row align-items-center justify-content-center my-lg-5 my-3 ">

            <div class=" col-12 position-relative ">

                <div class="px-4">
                    <p class="">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                        incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                        ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur
                        adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                        veniam, quis nostrud Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                        incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                        ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur
                        adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
                        veniam, quis nostrud </p>
                </div>
            </div>
        </div> --}}
    </div>
@endsection
