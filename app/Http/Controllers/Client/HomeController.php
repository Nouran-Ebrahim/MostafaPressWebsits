<?php

namespace App\Http\Controllers\Client;

use App\Functions\WhatsApp;
use App\Http\Controllers\Controller;
use App\Mail\OrderSummary;
use App\Models\Address;
use App\Models\Cart;
use App\Models\Category;
use App\Models\Client;
use App\Models\Color;
use App\Models\Contact;
use App\Models\Partner;
use App\Models\Service;
use App\Models\Order;
use App\Models\Product;
use App\Models\Size;
use App\Models\Slider;
use App\Models\StepSuccess;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Str;
use Stevebauman\Location\Facades\Location;
use App\Models\Advertising;
use App\Models\Statistics;
use App\Models\Banner;

class HomeController extends Controller
{
    public function home(Request $request)
    {
        $Sliders = Slider::get();
        $Popular = Product::where('popular', 1)->get();
        $MostSelling = Product::where('most_selling', 1)->get();
        $Offers = Product::query()->where('from', '<', now())->where('to', '>', now())->get();
        $advertising = Advertising::where('status', 1)->whereHas('images')->whereHas('slider')->latest()->first();
        $Statistics = Statistics::where('status', 1)->get();
        $Services = Service::where('status', 1)->whereHas('images')->latest()->get()->take(6);
        $partners = Partner::where('status', 1)->get();
        $Banner = Banner::where('status', 1)->whereHas('images')->latest()->first();
        $steps = StepSuccess::where('status', 1)->get();
        return view('Client.home', compact('Sliders', 'Services', "steps", 'Banner', 'partners', 'advertising', 'Statistics', 'MostSelling', 'Popular', 'Offers'));
    }


    public function services(Request $request)
    {
        $services = Service::where('status', 1)->whereHas('images')->get();

        return view('Client.services', compact('services'));
    }
    public function serviceGallery(Request $request)
    {
        // dd( request('id'));
        $service = Service::where('id', request('id'))->with('images')->first();
        $galley = $service->images;
        // dd($galley);
        return view('Client.serviceGallery', compact('galley','service'));
    }

    public function product($id, Request $request)
    {
        $Product = Product::Active()->where('id', $id)->firstorfail();
        $RelatedProducts = Product::whereNot('id', $Product->id)->orderBy('title_' . lang())->get();

        return view('Client.product', compact('Product', 'RelatedProducts'));
    }

    public function contact(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|string',
            'email' => 'required|email|regex:/^([a-z0-9+-]+)(.[a-z0-9+-]+)*@([a-z0-9-]+.)+[a-z]{2,6}$/ix',
            'message' => 'required',
            'subject' => 'required',
            'phone' => ["numeric", "required"],
        ]);

        Contact::create($request->all());
        toast(__('trans.We Will Contact You as soon as possible'), 'success');

        return back();
    }

    public function about(Request $request)
    {
        return view('Client.about');
    }

    public function AddToCart(Request $request)
    {
        $Cart = Cart::where([
            'client_id' => client_id(),
            'product_id' => $request->product_id,
            'size_id' => $request->size_id,
            'color_id' => $request->color_id,
            'Quantity' => $request->quantity,
            'note' => $request->note,
        ])->first();
        if ($Cart) {
            Cart::where('id', $Cart->id)->increment('quantity', $request->quantity);
        } else {
            Cart::create([
                'client_id' => client_id(),
                'product_id' => $request->product_id,
                'size_id' => $request->size_id,
                'color_id' => $request->color_id,
                'Quantity' => $request->quantity,
                'note' => $request->note,
            ]);
        }

        toast(__('trans.addedSuccessfully'), 'success');

        return back();
    }

    public function confirm(Request $request)
    {
        $Cart = Cart::where('client_id', client_id())->with('Product', 'Color', 'Size')->get();
        $Location = Location::get(request()->ip());
        $Addresses = Address::where('client_id', client_id())->get();

        return view('Client.confirm', [
            'Cart' => $Cart,
            'Addresses' => $Addresses,
            'lat' => $Location ? $Location->latitude : 0,
            'long' => $Location ? $Location->longitude : 0,
        ]);
    }

    public function cart()
    {
        $Cart = Cart::where('client_id', client_id())->with('Product', 'Color', 'Size')->get();

        return view('Client.cart', compact('Cart'));
    }

    public function deleteitem()
    {
        Cart::where('client_id', client_id())->where('id', request('id'))->delete();
        $cart_count = Cart::where('client_id', client_id())->count();

        return response()->json([
            'success' => true,
            'type' => 'success',
            'cart_count' => $cart_count,
            'message' => __('trans.DeletedSuccessfully'),
        ]);
    }

    public function minus()
    {
        if (request('count')) {
            Cart::where('client_id', client_id())->where('id', request('id'))->update(['quantity' => request('count')]);
            $cart_count = Cart::where('client_id', client_id())->count();

            return response()->json([
                'success' => true,
                'type' => 'success',
                'cart_count' => $cart_count,
                'message' => __('trans.updatedSuccessfully'),
            ]);
        } else {
            $cart_count = Cart::where('client_id', client_id())->count();

            return response()->json([
                'success' => false,
                'type' => 'error',
                'cart_count' => $cart_count,
                'message' => __('trans.sorry_there_was_an_error'),
            ]);
        }
    }

    public function plus()
    {
        $CartItem = Cart::where('client_id', client_id())->where('id', request('id'))->increment('quantity', 1);
        $cart_count = Cart::where('client_id', client_id())->count();

        return response()->json([
            'success' => true,
            'type' => 'success',
            'cart_count' => $cart_count,
            'message' => __('trans.updatedSuccessfully'),
        ]);
    }

    public function submit($delivery_id, Request $request)
    {
        $Client = auth('client')->user();

        if ($delivery_id == 1) {
            $Address = Address::where('id', $request->address_id)->first();
            if (!$Address) {
                $Address = Address::create([
                    'client_id' => $Client->id,
                    'lat' => $request->lat,
                    'long' => $request->long,
                    'additional_directions' => $request->additional_directions,
                ]);
            }
        } else {
            $Address = null;
        }

        $Cart = Cart::where('client_id', client_id())->with('Product', 'Color')->get();
        $sub_total = 0;
        $sub_total_exclusive_vat = 0;
        $discount = 0;
        foreach ($Cart as $key => $CartItem) {
            $Product = $CartItem->Product->first();
            $sub_total += ($Product->CalcPrice()) * $CartItem->quantity;
            $discount += ($Product->Price() - $Product->CalcPrice()) * $CartItem->quantity;
            if ($CartItem->Product->VAT == 'exclusive') {
                $sub_total_exclusive_vat += ($Product->CalcPrice()) * $CartItem->quantity;
            }
        }
        $vat = $sub_total_exclusive_vat / 100 * setting('VAT');
        $delivery_cost = $Address ? $Address->Region()->select('delivery_cost')->value('delivery_cost') : 0;
        if ($sub_total > 0) {

            $Order = Order::create([
                'client_id' => $Client->id,
                'delivery_id' => $delivery_id,
                'address_id' => $Address ? $Address->id : null,
                'payment_id' => $request->payment_id,
                'status' => $request->payment_id > 1 ? 5 : 0,
                'follow' => 0,

                'sub_total' => $sub_total,
                'discount' => $discount,
                'discount_percentage' => 0,
                'vat' => $vat,
                'vat_percentage' => setting('VAT'),
                'coupon' => 0,
                'coupon_percentage' => 0,
                'charge_cost' => $delivery_cost,
                'net_total' => $sub_total + $vat + $delivery_cost,

            ]);

            foreach ($Cart as $key => $CartItem) {
                $Product = $CartItem->Product->first();
                $ProPrice = ($Product->CalcPrice());

                $OrderProduct = $Order->OrderProducts()->create([
                    'product_id' => $CartItem->Product->id,
                    'size_id' => $CartItem->size_id > 0 ? $CartItem->size_id : null,
                    'color_id' => $CartItem->color_id > 0 ? $CartItem->color_id : null,
                    'price' => $ProPrice,
                    'quantity' => $CartItem->quantity,
                    'total' => $ProPrice * $CartItem->quantity,
                    // 'note' => $CartItem->note,
                ]);

                if ($request->payment_id == 1) {
                    $CartItem->delete();
                }
            }

            if ($request->payment_id == 1) {

                WhatsApp::SendOrder($Order);
                try {
                    Mail::to(['apps@emcan-group.com', setting('email'), $Client->email])->send(new OrderSummary($Order));
                } catch (\Throwable $th) {
                }
                alert()->success(__('trans.order_added_successfully'));

                return redirect()->route('client.success', $Order->id);
            } else {
                $TapController = new \App\Http\Controllers\Payment\TapController();

                return redirect()->away($TapController->VerifyTapTransaction($Order->id));
            }
        }

        return redirect()->route('client.home');
    }


    public function success($id, Request $request)
    {
        $Order = Order::findorfail($id);
        return view('Client.success', compact('Order'));
    }

    public function washList(Request $request)
    {
        $Client = auth('client')->user();
        $Products = $Client->WashList()
            ->paginate(25);
        return view('Client.washList', compact('Products'));
    }
    public function ToggleFav(Request $request)
    {
        $Client = auth('client')->user();
        if ($Client) {
            if ($Client->WashList()->where('product_id', $request->id)->count()) {
                $Client->WashList()->detach($request->product_id);
            } else {
                $Client->WashList()->attach($request->product_id);
            }
        } else {
            $washList = session()->get('washList') ?? [];
            if ($washList) {
                if (in_array($request->product_id, $washList)) {
                    unset($washList[array_search($request->product_id, $washList)]);
                } else {
                    $washList[] = $request->product_id;
                }
            } else {
                $washList[] = $request->product_id;
            }

            session()->put('washList', $washList);
        }

    }

}
