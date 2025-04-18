<?php

namespace App\Http\Controllers\Admin;

use App\Functions\Upload;
use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\StoreProductRequest;
use App\Http\Requests\Admin\UpdateProductRequest;
use App\Models\Category;
use App\Models\Color;
use App\Models\Product;
use App\Models\ProductImage;
use App\Models\Size;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class ProductController extends Controller
{
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $Products = Product::orderBy('arrangement')->with(['Images']);

            return DataTables::of($Products)
                ->addColumn('action', function ($Model) {
                    $data = '';
                    $data .= '<a style="color: #000;" target="_blank" href="'.route('admin.products.edit', $Model).'"><i class="fa-solid fa-pen-to-square"></i></a>';

                    $data .= '<form class="formDelete" method="POST" action="'.route('admin.products.destroy', $Model).'">
                                    '.csrf_field().'
                                    <input name="_method" type="hidden" value="DELETE">
                                    <button type="button" class="btn btn-flat show_confirm" data-toggle="tooltip" title="Delete"><i class="fa-solid fa-eraser"></i></button>
                                </form>';

                    return $data;
                })
                ->addColumn('title', function ($Model) {
                    return '<a target="_blank" href="'.route('admin.products.edit', $Model).'">'.$Model->title().'</a>';
                })
                ->addColumn('image', function ($Model) {
                    return '<a class="image-popup-no-margins" href="'.image_path($Model->RandomImage()).'">
                        <img src="'.image_path($Model->RandomImage()).'" style="max-height: 150px;max-width: 150px">
                    </a>';
                })
                ->editColumn('status', function ($Model) {
                    return '<input class="toggle" type="checkbox" onclick="toggleswitch('.$Model->id.',\'products\')" '.($Model->status ? 'checked' : '').'>';
                })
                ->editColumn('popular', function ($Model) {
                    return '<input class="toggle" type="checkbox" onclick="toggleswitch('.$Model->id.',\'products\',\'popular\')" '.($Model->popular ? 'checked' : '').'>';
                })

                ->editColumn('most_selling', function ($Model) {
                    return '<input class="toggle" type="checkbox" onclick="toggleswitch('.$Model->id.',\'products\',\'most_selling\')" '.($Model->most_selling ? 'checked' : '').'>';
                })
                ->editColumn('price', function ($Product) {
                    return $Product->price.' '.Country()->currancy_code;
                })
                ->filter(function ($instance) use ($request) {
                    if ($request->title && ! is_null($request->title)) {
                        $instance->where('title_ar', 'LIKE', '%'.$request->title.'%')
                            ->orwhere('title_ar', 'LIKE', '%'.$request->title.'%');
                    }
                    if ($request->title && ! is_null($request->title)) {
                        $instance->where('title_ar', 'LIKE', '%'.$request->title.'%')->orwhere('title_en', 'LIKE', '%'.$request->title.'%');
                    }
                    if (! is_null($request->discount)) {
                        if (! $request->boolean('discount')) {
                            $instance->whereDoesntHave('Discount');
                        } elseif ($request->boolean('discount')) {
                            $instance->whereHas('Discount');
                        }
                    }
                    if ($request->price_from && ! is_null($request->price_from)) {
                        $instance->where('price', '>=', $request->price_from);
                    }
                    if ($request->price_to && ! is_null($request->price_to)) {
                        $instance->where('price', '<=', $request->price_to);
                    }

                    if ($request->time_from && ! is_null($request->time_from)) {
                        $instance->where('created_at', '>=', $request->time_from);
                    }
                    if ($request->time_to && ! is_null($request->time_to)) {
                        $instance->where('created_at', '<=', $request->time_to);
                    }

                    if ($request->sort && ! is_null($request->sort)) {
                        $instance->orderBy($request->sort_key, $request->sort);
                    } else {
                        $instance->latest();
                    }
                })
                ->escapeColumns('action', 'checkbox', 'image')
                ->addIndexColumn()
                ->addColumn('checkbox', function ($Model) {
                    return '<input type="checkbox" class="DTcheckbox" value="'.$Model->id.'">';
                })
                ->toJson();
        }

        return view('Admin.products.index');
    }

    public function create()
    {
        $Sizes = Size::get();
        $Colors = Color::get();

        $Categories = Category::get();

        return view('Admin.products.create', compact('Categories', 'Sizes', 'Colors'));
    }

    public function store(StoreProductRequest $request)
    {
        $Product = Product::create([
            'title_ar' => $request->title_ar,
            'title_en' => $request->title_en,
            'desc_ar' => $request->desc_ar,
            'desc_en' => $request->desc_en,
            'code' => $request->code,
            'VAT' => $request->VAT,
            'most_selling' => $request->most_selling ? 1 : 0,
            'popular' => $request->popular ? 1 : 0,
            'status' => $request->status ? 1 : 0,
            'price' => $request->price,
            'discount' => $request->discount,
            'from' => $request->from,
            'to' => $request->to,
        ]);

        $Product->Categories()->sync($request->categories);
        $Product->Sizes()->sync($request->sizes);
        $Product->Colors()->sync($request->colors);

        if ($request->images) {
            foreach ($request->images as $key => $img) {
                ProductImage::create([
                    'image' => Upload::UploadFile($img, 'products'),
                    'product_id' => $Product->id,
                ]);
            }
        }

        if ($request->filter == 'has_size') {
            ProductImage::where('product_id', $Product->id)->update(['color_id' => null]);
        }

        alert()->success(__('trans.addedSuccessfully'));

        return redirect()->back();
    }

    public function show($id)
    {
        $Product = Product::where('id', $id)->with('Images')->first();

        return view('Admin.products.show', compact('Product'));
    }

    public function edit($id)
    {
        $Product = Product::with('Images')->findorfail($id);
        $Sizes = Size::Active()->get();
        $Colors = Color::Active()->get();
        $Categories = Category::get();

        return view('Admin.products.edit', compact('Categories', 'Sizes', 'Colors', 'Product'));
    }

    public function update(UpdateProductRequest $request, $id)
    {
        $Product = Product::findorfail($id);
        $Product->update([
            'title_ar' => $request->title_ar,
            'title_en' => $request->title_en,
            'desc_ar' => $request->desc_ar,
            'desc_en' => $request->desc_en,
            'code' => $request->code,
            'VAT' => $request->VAT,

            'most_selling' => $request->most_selling ? 1 : 0,
            'popular' => $request->popular ? 1 : 0,
            'status' => $request->status ? 1 : 0,

            'price' => $request->price,
            'discount' => $request->discount,
            'from' => $request->from,
            'to' => $request->to,
        ]);

        $Product->Categories()->sync($request->categories);
        $Product->Sizes()->sync($request->sizes);
        $Product->Colors()->sync($request->colors);
        if ($request->images) {
            foreach ($request->images as $key => $img) {
                ProductImage::create([
                    'image' => Upload::UploadFile($img, 'products'),
                    'product_id' => $Product->id,
                ]);
            }
        }

        alert()->success(__('trans.updatedSuccessfully'));

        // return redirect()->route('admin.products.edit',$Product->id + 1);
        return redirect()->back();
    }

    public function destroy($id)
    {
        $Product = Product::where('id', $id)->first();
        $Product->delete();
    }

    public function switchProductMainImage($product_id, $image_id, Request $request)
    {
        $success = ProductImage::where('product_id', $product_id)->update(['main' => 0]);
        $success = ProductImage::where('product_id', $product_id)->where('id', $image_id)->update(['main' => 1]);

        return response()->json($success);
    }
}
