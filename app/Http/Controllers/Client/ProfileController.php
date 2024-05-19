<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use App\Models\Order;
use Illuminate\Http\Request;

class ProfileController extends Controller
{
    public function profile(Request $request)
    {
        $currentOrders = Order::with('Products')->where('client_id', auth('client')->id())->whereIn('status', [0, 1])->whereIn('follow', [0, 1, 2])->latest()->get();
        $previousOrders = Order::with('Products')->where([['client_id', auth('client')->id()]])->whereIn('status', [1])->whereIn('follow', [3])->latest()->get();
        $Client = auth('client')->user();
        $addresses = $Client->addresses;

        return view('Client.profile', compact('currentOrders', 'previousOrders', 'Client', 'addresses'));
    }

    public function update(Request $request)
    {
        $client = auth('client')->user();
        $client->name = $request->name;
        $client->email = $request->email;
        if ($request->has('password') && ! empty($request->password)) {
            $client->password = bcrypt($request->password);
        }
        $client->save();
        alert()->success(__('trans.profileUpdated'));

        return redirect()->route('client.profile');
    }
}
