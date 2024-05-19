{{-- <div class="py-5 container-lg" style="background: #686868;max-width: 100% !important;">
    <div class="row justify-content-between" >
        <div class="col-md-2 col-12 d-flex ">
            <ul class="p-0 fs-6 ">
                <li class="py-1">
                    <a href="{{ route('client.home') }}" class="text-white">
                        @lang('trans.Home')
                    </a>
                </li>
                <li class="py-1">
                    <a href="{{ route('client.about') }}" class="text-white">
                        @lang('trans.about_us')
                    </a>
                </li>
            </ul>
        </div>
        <div class="col-md-2 col-12 ">
            <ul class="p-0 fs-6 ">
                <li class="py-1">
                    <a href="{{ route('client.product_care') }}" class="text-white">
                        @lang('trans.product_care')
                    </a>
                </li>
                <li class="py-1">
                    <a href="{{ route('client.terms') }}" class="text-white">
                        @lang('trans.terms')
                    </a>
                </li>
            </ul>
        </div>
        <div class="col-md-2 col-12 d-flex ">
            <ul class="p-0 fs-6 ">
                <li class="py-1">
                    <a role="button" data-bs-toggle="modal" data-bs-target="#filter" class="text-white">
                        @lang('trans.SizeGuide')
                    </a>
                </li>
                <li class="py-1">
                    <a href="{{ route('client.privacy') }}" class="text-white">
                        @lang('trans.privacy')
                    </a>
                </li>
            </ul>
        </div>
        <div class="col-md-2 col-12 d-flex ">
            <ul class="p-0 fs-6 ">
                <li class="py-1">
                    <a href="{{ route('client.contact') }}" class="text-white">
                        @lang('trans.contact_us')
                    </a>
                </li>
            </ul>
        </div>
        <div class="col-md-3 col-12">
            <h4 class="p-lg-2 py-2 text-white fs-6">
                @lang('trans.Get_in_Touch')
            </h4>
            <ul class="social d-flex p-0">
                @foreach (SocialMediaIcons()->sortBy('icon') as $item)
                    <li>
                        <a href="{{ $item->link }}" class="main_link mx-2" aria-hidden="true">
                            <span>
                                @if (str_contains($item->icon, 'emcan'))
                                    <img style="width: 20px;border-radius: 50%;" alt="{{ str_replace('fa-brands', '', str_replace('fa-solid', '', str_replace('fa-regular', '', str_replace(' ', '-', $item->name)))) }}" class="h4 mx-2 point" src='{{ $item->icon }}'/>
                                @else
                                    <i class="h4 mx-2 point pt-2 {{ $item->icon }} icon"></i>
                                @endif
                            </span>
                        </a>
                    </li>
                @endforeach
            </ul>
        </div>
    </div>

    <div class="row justify-content-center">
        <div class="col-md-7 col-12 text-center fs-6 border-top py-2 text-uppercase">
            @Bymariams
        </div>
        <div class="col-md-7 col-12 text-center  emcan">
            @lang('trans.copyrights') <span class=""> <a class="text-white" href="https://www.instagram.com/by.mariams">Mariams</a> </span>
        </div>

    </div>

</div>
<div class="modal fade " id="filter" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">

        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="container-fluid">

                    <div class="row fs-6">
                        <table class="table text-center">
                            <thead>
                                <tr>
                                    <th scope="col">Size (uS)</th>
                                    <th scope="col">Size # (uS)</th>
                                    <th scope="col">Bust (in)</th>
                                    <th scope="col">Waist (in)</th>
                                    <th scope="col">Hips (in)</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>XS</td>
                                    <td>2-4</td>
                                    <td>30-33</td>
                                    <td>22-25</td>
                                    <td>@32-35</td>

                                </tr>
                                <tr>
                                    <td>S</td>
                                    <td>2-4</td>
                                    <td>30-33</td>
                                    <td>22-25</td>
                                    <td>@32-35</td>

                                </tr>
                                <tr>
                                    <td>M</td>
                                    <td>2-4</td>
                                    <td>30-33</td>
                                    <td>22-25</td>
                                    <td>@32-35</td>
                                </tr>
                                <tr>
                                    <td>l</td>
                                    <td>2-4</td>
                                    <td>30-33</td>
                                    <td>22-25</td>
                                    <td>@32-35</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> --}}
<div id="footer">
    <footer>
        <div class="container py-5">
            <div class="row justify-content-between" data-aos="fade-up">
                <div class="col-md-4 col-12 text-white d-flex flex-md-row flex-column align-items-start gap-3">
                    <a class="navbar-brand py-2 text-center  m-0" href="index.html">
                        <img class width="70" src="{{ asset(setting('logo')) }}" loading="lazy" alt="description" width
                            height />
                    </a>
                    <p>{{setting('desc_'.lang())}}</p>
                </div>
                <div class="col-md-3 col-12 ">
                    <ul class="p-0 fs-6 list-footer">
                        <li class="py-1">
                            <a href="{{ route('client.home') }}">
                                @lang('trans.home')
                            </a>
                        </li>
                        <li class="py-1">
                            <a href="{{ route('client.about') }}">
                                @lang('trans.about')
                            </a>
                        </li>
                        <li class="py-1">
                            <a href="{{ route('client.services') }}">
                                @lang('trans.services')
                            </a>
                        </li>
                        <li class="py-1">
                            <a href="{{ route('client.contact') }}">
                                @lang('trans.Contact Us')
                            </a>
                        </li>
                        <li class="py-1">
                            <a href="{{ route('client.terms') }}">
                                @lang('trans.terms')
                            </a>
                        </li>
                        <li class="py-1">
                            <a href="{{ route('client.privacy') }}">
                                @lang('trans.Privacy Policy')
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="col-md-4 col-12 ">
                    <h4 class>@lang('trans.Get_in_Touch')</h4>

                    <ul class="social d-flex px-0">
                        @foreach (SocialMediaIcons() as $data)
                            <li>
                                <a href="{{ $data->link }}">
                                    <i class="{{ $data->icon }} icon"></i>
                                </a>
                            </li>
                        @endforeach


                    </ul>
                </div>
                <div class="col-md-3 col-12 px-0">

                </div>
            </div>
        </div>

        <div class="container py-3">

            <div class="row justify-content-center border-top border-light text-white-50 py-4 fw-medium gy-3">
                <div class="col-md-4 col-12 text-center fs-6   ">
                    © {{date('Y')}} <a class href="{{route('client.home')}}"> {{setting('title_'.lang())}}</a>. @lang('trans.copyrights')
                </div>
                <div class="col-md-4 col-12 text-center  emcan">
                    @lang('trans.Powared by')<span class> <a style="color:#489339;opacity: 1;" href="https://emcan-group.com/en">@lang('trans.emcan')</a> </span>
                </div>
                <div class="col-md-4 col-12 text-center  emcan">
                    <ul class="p-0 fs-6 list-footer list-data-footer flex-nowrap">
                        <li class="py-1">
                            <a href="{{ route('client.terms') }}">
                                @lang('trans.Terms & Conditions')
                            </a>
                        </li>
                        <li class="py-1">
                            <a href="{{ route('client.privacy') }}">
                                @lang('trans.Privacy Policy')
                            </a>
                        </li>
                    </ul>
                </div>
            </div>

        </div>
    </footer>
</div>
