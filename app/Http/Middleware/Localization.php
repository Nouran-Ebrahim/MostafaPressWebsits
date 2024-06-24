<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\DB;

class Localization
{
    public function handle(Request $request, Closure $next)
    {
        if (session()->has('locale')) {
            App::setLocale(session()->get('locale'));
        }
        // if (session()->has('locale')) {
        //     $locale = session()->get('locale');
        // } else {
        //     // Fetch the default language from the settings table
        //     $locale = DB::table('settings')->where('key', 'default_language')->value('value');
        //     if ($locale) {
        //         session()->put('locale', $locale);
        //     }
        // }

        // // Set the locale
        // App::setLocale($locale);

        return $next($request);
    }
}
