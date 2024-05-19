<li class="nav-item @if(str_contains(Route::currentRouteName(), 'banners')) active @endif">
    <a class="collapsed" href="#0" class="" data-bs-toggle="collapse" data-bs-target="#banners" aria-controls="banners" aria-expanded="true" aria-label="Toggle navigation">
        <span class="icon text-center">
            <i style="width: 20px;" class="fa-solid fa-photo-film mx-2"></i>
        </span>
        <span class="text">{{ __('trans.banners') }}</span>
    </a>
    <ul id="banners" class="dropdown-nav mx-4 collapse" style="">
        <li><a href="{{ route('admin.banners.index') }}">{{ __('trans.viewAll') }}</a></li>
        <li><a href="{{ route('admin.banners.create') }}">{{ __('trans.add') }}</a></li>
    </ul>
</li>