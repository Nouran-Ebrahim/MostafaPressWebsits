{{-- <meta charset="utf-8">
<meta name="csrf-token" content="{{ csrf_token() }}">
<title>{{ setting('title_'.lang()) }}</title>
<link rel="canonical" href="{{ url()->full() }}">
<link rel="sitemap" href="/sitemap.xml" title="Sitemap" type="application/xml">
<link href="{{ asset(setting('logo')) }}" rel="shortcut icon">
<meta name="robots" content="max-snippet:-1,max-image-preview:large,max-video-preview:-1">
<meta name="description" content="{{ strip_tags(setting('desc')) }}">
<meta name="keywords" content="{{ strip_tags(setting('keywords')) }}">
<meta name="author" content="{{ setting('title_'.lang()) }}">
<meta name="image" content="{{ asset(setting('logo')) }}">
<meta property="og:title" content="{{ setting('title_'.lang()) }}">
<meta property="og:description" content="{{ strip_tags(setting('desc')) }}">
<meta property="og:locale" content="en">
<meta property="og:image" content="{{ asset(setting('logo')) }}">
<meta property="og:url" content="{{ url()->full() }}">
<meta property="og:site_name" content="{{ setting('title_'.lang()) }}">
<meta property="og:type" content="website">
<meta name="twitter:card" content="{{ setting('title_'.lang()) }}">
<meta name="twitter:title" content="{{ setting('title_'.lang()) }}">
<meta name="twitter:description" content="{{ strip_tags(setting('desc')) }}">
<meta name="twitter:site" content="{{ setting('title_'.lang()) }}">
<link rel="sitemap" href="/sitemap.xml" title="Sitemap" type="application/xml">
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="apple-touch-icon" sizes="180x180" href="{{ asset(setting('logo')) }}">
<link rel="icon" type="image/png" sizes="32x32" href="{{ asset(setting('logo')) }}">
<link rel="icon" type="image/png" sizes="16x16" href="{{ asset(setting('logo')) }}">

{!! setting('snapchat_services') !!}
{!! setting('twitter_services') !!}
{!! setting('facebbok_services') !!}
{!! setting('google_services') !!}
{!! setting('tiktok_services') !!}
{!! setting('instagram_services') !!}

<style> :root {--main--color: {{ setting('main_color') }};} </style>


<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<link rel="stylesheet" href="{{ asset('assets/css/bootstrap.min.css') }}">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.13.2/themes/base/jquery-ui.min.css" integrity="sha512-ELV+xyi8IhEApPS/pSj66+Jiw+sOT1Mqkzlh8ExXihe4zfqbWkxPRi8wptXIO9g73FSlhmquFlUOuMSoXz5IRw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="{{ asset('assets/css/all.min.css') }}">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css" integrity="sha512-yHknP1/AwR+yx26cB1y0cjvQUMvEa2PFzt1c9LlS4pRQ5NOTZFWbhBig+X9G9eYW/8m0/4OXNx8pxJ6z57x0dw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="{{ asset('assets/css/style.css?v=1.1') }}">
<link rel="stylesheet" href="{{ asset('assets/css/Responsive.css') }}">

@stack('css')

<style>
    @import url('https://fonts.cdnfonts.com/css/montserrat');

    body, h1 , h2 , h3 , h4 , h5 , h6 , p , span  {
      font-family: 'Montserrat', sans-serif;
    }

</style>
                

@if (lang('ar'))
    <style>
        .form-check .form-check-input {
            float: right;
            margin-right: -1.5em;
        }
        .breadcrumb-item+.breadcrumb-item::before {
            float: {{ lang('en') ? 'left' : 'right' }};
        }
        .slick-track{
            float: left;
        }
    </style>
        
@endif --}}
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="robots" content="max-snippet:-1,max-image-preview:large,max-video-preview:-1">
<meta name="description"
    content="{{setting('desc_'.lang())}}">
<meta name="keywords"
    content="{{setting('keywords')}}">
<meta name="author" content="{{setting("author")}}">
<meta name="image" content="{{ asset(setting('logo_dark')) }}">
<meta property="og:title" content="{{setting('title_'.lang())}}">
<meta property="og:description"
    content="{{setting('desc_'.lang())}}">
<meta property="og:locale" content="en">
<meta property="og:image" content="{{ asset(setting('logo_dark')) }}">
<meta property="og:url" content="{{ url()->full() }}">
<meta property="og:site_name" content="{{setting('title_'.lang())}}">
<meta property="og:type" content="website">
<meta name="twitter:card" content="{{setting('title_'.lang())}}">
<meta name="twitter:title" content="{{setting('title_'.lang())}}">
<meta name="twitter:description"
    content="{{setting('desc_'.lang())}}">
<meta name="twitter:site" content="{{ setting('title_'.lang()) }}">
{{-- <meta name="csrf-token" content="UA03C1pxmumaEQe8eqQuogEL9x4lDE8HyhaSlguZ"> --}}
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="google-site-verification" content="orJ7ZbMHiPkMYkLCmiZpVFPHiWeJYzxBdmYrqe4q-0E" />
<meta content='max-age=604800' http-equiv='Cache-Control' />
<include expiration='7d' path='*.css' />
<include expiration='7d' path='*.js' />
<include expiration='3d' path='*.gif' />
<include expiration='3d' path='*.jpeg' />
<include expiration='3d' path='*.jpg' />
<include expiration='3d' path='*.png' />
<include expiration='3d' path='*.webp' />
<include expiration='3d' path='*.ico' />
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<link rel="stylesheet" href="{{asset('frontEnd/assets/css/bootstrap.min.css')}}">
<link rel="stylesheet" href="{{asset('frontEnd/assets/css/all.min.css')}}">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css"
    integrity="sha512-yHknP1/AwR+yx26cB1y0cjvQUMvEa2PFzt1c9LlS4pRQ5NOTZFWbhBig+X9G9eYW/8m0/4OXNx8pxJ6z57x0dw=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
<link
    href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
    rel="stylesheet">
<link rel="stylesheet" href="{{asset('frontEnd/assets/css/style.css')}}">
<link rel="stylesheet" href="{{asset('frontEnd/assets/css/Responsive.css')}}">
<meta name="csrf-token" content="{{ csrf_token() }}">
<title>{{ setting('title_' . lang()) }}</title>
@stack('css')