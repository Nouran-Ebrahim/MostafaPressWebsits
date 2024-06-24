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
        .about-img-css {
    background-image: url("{{asset(setting('banner_image'))}}");
    height: 350px;
    background-position: center center;
    background-size: cover;
    background-attachment: fixed;
    background-repeat: no-repeat;
    display: flex;
    justify-content: center;
    align-items: center;
    color: var(--mainColor4);
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
                    @lang('trans.About Us')
                </h3>
            </div>
        </div>
    </div>


    <div class="container my-lg-5 my-3  section-top ">
        <div class="row align-items-center justify-content-center  my-lg-5 my-3 pt-5">
            <div class="col-lg-6 col-md-4 col-12 position-relative">
                <div class="img-absloute green">
                    <img class="w-100" src="{{ asset(setting('side_image')) }}"
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
        <div class="row align-items-center justify-content-center  my-lg-5 my-3">
            <div class="col-lg-6 col-md-4 col-12 position-relative">
                <div class="img-absloute small-img">
                    <img class="w-100" src="{{asset(setting('quote_image'))}}" data-aos="fade-up"
                        data-aos-duration="1500" loading="lazy" alt="Loading" width="" height="" />
                </div>
            </div>
            <div class="col-lg-6 col-md-8 col-12 position-relative">
                <div class="py-2"><img src="{{asset('frontEnd/assets/imgs/about/quote-up.svg')}}" loading="lazy" alt="Loading" width=""
                        height="" /></div>

                <div class="px-4">
                    {!! setting('quote_desc_'.lang()) !!}
                </div>
                <div class="py-2 d-flex justify-content-end"><img src="{{asset('frontEnd/assets/imgs/about/quote-down.svg')}}" loading="lazy"
                        alt="Loading" width="" height="" /></div>
            </div>
        </div>
        <div class="row align-items-center justify-content-center my-lg-5 my-3">

            <div class=" col-12 position-relative">
                <div class="py-2"><img src="{{asset('frontEnd/assets/imgs/about/shape_109.svg')}}" loading="lazy" alt="Loading" width=""
                        height="" /></div>

                <div class="px-4">
                    {!! setting('quote2_desc_'.lang()) !!}
                </div>
            </div>
        </div>
        <!--<div class="row align-items-center justify-content-center my-lg-5 my-3 ">-->

        <!--    <div class=" col-12 position-relative ">-->

        <!--        <div class="px-4">-->
        <!--            <p class="">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor-->
        <!--                incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation-->
        <!--                ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur-->
        <!--                adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim-->
        <!--                veniam, quis nostrud Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor-->
        <!--                incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation-->
        <!--                ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur-->
        <!--                adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim-->
        <!--                veniam, quis nostrud </p>-->
        <!--        </div>-->
        <!--    </div>-->
        <!--</div>-->
    </div>
@endsection
