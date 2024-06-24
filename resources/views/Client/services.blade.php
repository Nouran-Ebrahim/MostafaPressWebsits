@extends('Client.layouts.layout')

@section('content')
    <div class="bg-img">
        <div class="header-div w-100 h-100 d-flex align-items-end px-5">
            <div class="rotate-div">
                <h3>
                    @lang('trans.services') </h3>
            </div>
        </div>
    </div>

    </div>
    @if ($services->count()>0)
    <div class="container my-lg-5 my-3 section-top section-top-service ">
        <h5 class="top-service">
            <span>
                @lang('trans.What Services do we offer?')
            </span>
        </h5>
        @foreach ($services as $data)
        <div class="row align-items-center justify-content-center my-lg-5 my-3 py-lg-5 py-2">
            <div class="col-lg-6 col-md-4 col-12  ">
                <div class="img-absloute small-img-sevice ">
                    <a href="{{route('client.serviceGallery',$data->id)}}" class="text-dark">                        <img class="" src="{{asset($data->image)}}" data-aos="flip-up" data-aos-duration="1500"
                        loading="lazy" alt="Loading" width="" height="" />
                    </a>
                </div>

            </div>
            <div class="col-lg-6 col-md-8 col-12 ">
                                                        

                <h2 class="text-start Secondary-color">{{ str_pad($loop->iteration, 2, '0', STR_PAD_LEFT) }}</h2>
                <h5 class="text-start fw-normal my-4">“{{$data->title()}}”</h5>
                <p class=" border border-success rounded-2 p-4 text-black-50 service-describtion">
                    <span>
                {{$data->desc()}}
</span>
<br>
<a href="{{route('client.serviceGallery',$data->id)}}"> 
<span class="text-decoration-underline text-black seemore"> @lang('trans.see more')</span>
</a>
                </p>
            </div>
        </div>
        @endforeach
        

    </div>
    @endif

@endsection
