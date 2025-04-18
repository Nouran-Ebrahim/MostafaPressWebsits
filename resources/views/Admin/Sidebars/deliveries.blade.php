<li class="nav-item @if(str_contains(Route::currentRouteName(), 'deliveries')) active @endif">
    <a class="collapsed" href="#0" class="" data-bs-toggle="collapse" data-bs-target="#deliveries" aria-controls="deliveries" aria-expanded="true" aria-label="Toggle navigation">
        <span class="icon text-center">
            <i style="width: 20px;" class="fa-solid fa-truck mx-2"></i>
        </span>
        <span class="text">{{ __('trans.deliveries') }}</span>
    </a>
    <ul id="deliveries" class="dropdown-nav mx-4 collapse" style="">
        <li><a href="{{ route('admin.deliveries.index') }}">{{ __('trans.viewAll') }}</a></li>
    </ul>
</li>