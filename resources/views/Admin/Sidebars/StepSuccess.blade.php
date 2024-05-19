<li class="nav-item @if(str_contains(Route::currentRouteName(), 'StepSuccess')) active @endif">
    <a class="collapsed" href="#0" class="" data-bs-toggle="collapse" data-bs-target="#StepSuccess" aria-controls="StepSuccess" aria-expanded="true" aria-label="Toggle navigation">
        <span class="icon text-center">
            <i style="width: 20px;" class="fa-solid fa-photo-film mx-2"></i>
        </span>
        <span class="text">{{ __('trans.StepSuccess') }}</span>
    </a>
    <ul id="StepSuccess" class="dropdown-nav mx-4 collapse" style="">
        <li><a href="{{ route('admin.StepSuccess.index') }}">{{ __('trans.viewAll') }}</a></li>
        <li><a href="{{ route('admin.StepSuccess.create') }}">{{ __('trans.add') }}</a></li>
    </ul>
</li>