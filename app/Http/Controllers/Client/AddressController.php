<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use App\Models\Address;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Stevebauman\Location\Facades\Location;

class AddressController extends Controller
{
    public function index()
    {
        return redirect()->route('client.profile');
    }

    public function create()
    {
        $Location = Location::get(request()->ip());

        return view('Client.address.create', [
            'lat' => $Location ? $Location->latitude : 0,
            'long' => $Location ? $Location->longitude : 0,
        ]);
    }

    public function store(Request $request)
    {

        DB::table('addresses')->insert([
            'client_id' => auth('client')->id(),
        ] + $request->except('_token', '_method'));

        alert()->success(__('trans.addedSuccessfully'));

        return redirect()->route('client.profile');
    }

    public function edit($id)
    {
        $address = Address::findOrFail($id);
        $Location = Location::get(request()->ip());

        return view('Client.address.edit', [
            'address' => $address,
            'lat' => $Location ? $Location->latitude : 0,
            'long' => $Location ? $Location->longitude : 0,
        ]);
    }

    public function update(Request $request, $id)
    {
        Address::where('id', $id)->update($request->except('_token', '_method'));

        alert()->success(__('trans.updatedSuccessfully'));

        return redirect()->route('client.profile', 'address');
    }

    public function destroy($id)
    {
        Address::where('id', $id)->delete();
        alert()->success(__('trans.DeletedSuccessfully'));

        return redirect()->back();
    }
}
