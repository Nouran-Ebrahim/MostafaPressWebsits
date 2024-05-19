@extends('Client.layouts.layout')
@section('content')
    <div id="icons">
    </div>

    <div class="bg-img">
        <div class="header-div w-100 h-100 d-flex align-items-end px-5">
            <div class="rotate-div">
                <h3>
                    @lang('trans.Contact Us') </h3>
            </div>
        </div>
    </div>

    </div>
    <div class="container my-lg-5 my-3 section-top">
        <div class="row ">
            <div class="col-lg-4 d-flex">
                <div class="d-flex bg-black py-3 px-4 text-white gap-2  w-100">
                    <span><i class="fa-solid fa-location-dot"></i></span>
                    <span><a class="text-white"
                            href="https://www.google.com/maps/place/%D8%B4%D8%A7%D8%B1%D8%B9+%D8%A7%D9%84%D9%81%D8%B1%D8%B2%D8%AF%D9%82%D8%8C+%D8%BA%D8%A8%D9%8A%D8%B1%D8%A9%D8%8C+%D8%A7%D9%84%D8%B1%D9%8A%D8%A7%D8%B6+12664%D8%8C+%D8%A7%D9%84%D8%B3%D8%B9%D9%88%D8%AF%D9%8A%D8%A9%E2%80%AD/@24.623197,46.7350244,17z/data=!3m1!4b1!4m6!3m5!1s0x3e2f044bb22c04a5:0x9c6229404ccc4bd!8m2!3d24.623197!4d46.7350244!16s%2Fg%2F1vy7f1cr?entry=ttu">{{setting('address')}}</a></span>

                </div>

            </div>
            <div class="col-lg-4 d-flex">
                <div class="d-flex bg-black p-4 text-white gap-2  w-100">
                    <span><i class="fa-solid fa-envelope"></i></span>
                    <span><a class="text-white" href="mailto:{{ setting('email') }}">{{ setting('email') }}</a></span>

                </div>
            </div>
            <div class="col-lg-4 d-flex">
                <div class="d-flex bg-black p-4 text-white gap-2  w-100">
                    <span><i class="fa-solid fa-phone"></i></span>
                    <span><a class="text-white" href="tel:{{ setting('phone') }}">{{ setting('phone') }}</a></span>

                </div>
            </div>

        </div>

        <div class="row align-items-center justify-content-center my-lg-5 my-3 py-5">
            <div class="col-lg-6 col-md-4 col-12  h-auto">
                <iframe
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3627.014155615924!2d46.73502440000001!3d24.623197!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3e2f044bb22c04a5%3A0x9c6229404ccc4bd!2z2LTYp9ix2Lkg2KfZhNmB2LHYstiv2YLYjCDYutio2YrYsdip2Iwg2KfZhNix2YrYp9i2IDEyNjY02Iwg2KfZhNiz2LnZiNiv2YrYqQ!5e0!3m2!1sar!2seg!4v1715511184439!5m2!1sar!2seg"
                    width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"
                    referrerpolicy="no-referrer-when-downgrade"></iframe>

            </div>
            <div class="col-lg-6 col-md-8 col-12 ">
                <form method="POST" action="{{ route('client.contact') }}" class="row">
                    @csrf
                    <div class=" col-12">
                        <label for="email" class="form-label fw-semibold">@lang('trans.name')</label>
                        <div class="input-group mb-3">
                            <input value="{{old('name')}}" name="name" type="text" class="form-control rounded-1" id="name">
                        </div>
                        @error('name')
                            <p class="alert alert-danger " style='color:red;'>{{ $message }}</p>
                        @enderror
                    </div>
                    <div class=" col-12">
                        <label for="email" class="form-label fw-semibold">@lang('trans.email')</label>
                        <div class="input-group mb-3">
                            <input value="{{old('email')}}" type="email" name="email" class="form-control rounded-1 " id="email">
                        </div>
                        @error('email')
                            <p class="alert alert-danger " style='color:red;'>{{ $message }}</p>
                        @enderror
                    </div>
                    <div class=" col-12">
                        <label for="phonenumber" class="form-label fw-semibold">@lang('trans.Phone Number')</label>
                        <div class="input-group mb-3">
                            <input value="{{old('phone')}}" type="text" name="phone" class="form-control rounded-1 " id="phonenumber">
                        </div>
                        @error('phone')
                            <p class="alert alert-danger " style='color:red;'>{{ $message }}</p>
                        @enderror
                    </div>
                    <div class=" col-12">
                        <label for="subject" class="form-label fw-semibold">@lang('trans.subject')</label>
                        <div class="input-group mb-3">
                            <input value="{{old('subject')}}" name="subject" type="text" class="form-control rounded-1 " id="subject">
                        </div>
                        @error('subject')
                            <p class="alert alert-danger " style='color:red;'>{{ $message }}</p>
                        @enderror
                    </div>
                    <div class=" col-12">
                        <label for="subject" class="form-label fw-semibold">@lang('trans.message')</label>
                        <div class="input-group mb-3">
                            <textarea name="message" class="form-control rounded-1 " rows="3" style="resize: none;" id="Message">

</textarea>
                            
                        </div>
                        @error('message')
                                <p class="alert alert-danger " style='color:red;'>{{ $message }}</p>
                            @enderror
                    </div>
                    <div class=" col-12 d-flex justify-content-center align-items-center">
                        <button type="submit"
                            class="bg-red text-decoration-none text-white text-center  rounded-1 py-2 explore  m-auto my-2"
                            href="tel:966 460 345">@lang('trans.send')</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection
