<li class="nav-item @if(str_contains(Route::currentRouteName(), 'adds')) active @endif">
    <a class="collapsed" href="#0" class="" data-bs-toggle="collapse" data-bs-target="#adds" aria-controls="adds" aria-expanded="true" aria-label="Toggle navigation">
        <span class="icon text-center">
            <i style="width: 20px;" class="fa-solid fa-photo-film mx-2"></i>
        </span>
        <span class="text">{{ __('trans.adds') }}</span>
    </a>
    <ul id="adds" class="dropdown-nav mx-4 collapse" style="">
        <li><a href="{{ route('admin.adds.index') }}">{{ __('trans.viewAll') }}</a></li>
        <li><a href="{{ route('admin.adds.create') }}">{{ __('trans.add') }}</a></li>
    </ul>
</li>