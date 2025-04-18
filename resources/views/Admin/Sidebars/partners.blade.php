<li class="nav-item @if(str_contains(Route::currentRouteName(), 'partners')) active @endif">
    <a class="collapsed" href="#0" class="" data-bs-toggle="collapse" data-bs-target="#partners" aria-controls="partners" aria-expanded="true" aria-label="Toggle navigation">
        <span class="icon text-center">
            <i style="width: 20px;" class="fa-solid fa-layer-group mx-2"></i>
        </span>
        <span class="text">{{ __('trans.partners') }}</span>
    </a>
    <ul id="partners" class="dropdown-nav mx-4 collapse" style="">
        <li><a href="{{ route('admin.partners.index') }}">{{ __('trans.viewAll') }}</a></li>
        <li><a href="{{ route('admin.partners.create') }}">{{ __('trans.add') }}</a></li>
    </ul>
</li>