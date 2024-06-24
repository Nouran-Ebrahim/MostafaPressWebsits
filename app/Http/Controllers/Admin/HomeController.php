<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index(Request $request)
    {
        $parteners = DB::table('partners')->where('status',1)->count();
        $statistics = DB::table('statistics')->where('status', 1)->count();
        $step_successes = \App\Models\StepSuccess::where('status', 1)->count();

        $Service = \App\Models\Service::where('status', 1)->count();
        $admins = \App\Models\Admin::where('status', 1)->count();
        $currentOrdersCount = DB::table('orders')->where('status', 1)->whereIn('follow', [0, 1, 2])->count();
        $previousOrdersCount = DB::table('orders')->where('status', 1)->whereIn('follow', [3])->count();
        $sliderCount = \App\Models\Slider::count();

        return view('Admin.home', compact(

            'Service',
            'admins',
            'currentOrdersCount',
            'previousOrdersCount',
            'sliderCount',
            'parteners',
            'step_successes',
            'statistics',
        ));

    }
}
