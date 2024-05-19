<?php

namespace App\Http\Controllers\Admin;

use App\Functions\Upload;
use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\UpdateImageRequest;
use App\Models\Slider;
use App\Models\Advertising;
use App\Models\AdvertisingImage;

use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;
use App\Http\Requests\Admin\StoreAdvertisingRequest;
use App\Http\Requests\Admin\UpdateAdvertisingRequest;

class AdvertisingController extends Controller
{
    public function index(Request $request)
    {
        // dd(1);
        if ($request->ajax()) {
            $Models = Advertising::latest();

            return DataTables::of($Models)
                ->addColumn('action', function ($Model) {
                    $data = '';
                    $data .= '<a style="color: #000;" target="_blank" href="' . route('admin.adds.edit', $Model) . '"><i class="fa-solid fa-pen-to-square"></i></a>';

                    $data .= '<form class="formDelete" method="POST" action="' . route('admin.adds.destroy', $Model) . '">
                                ' . csrf_field() . '
                                <input name="_method" type="hidden" value="DELETE">
                                <button type="button" class="btn btn-flat show_confirm" data-toggle="tooltip" title="Delete"><i class="fa-solid fa-eraser"></i></button>
                            </form>';

                    return $data;
                })
                ->editColumn('status', function ($Model) {
                    return '<input class="toggle" type="checkbox" onclick="toggleswitch(' . $Model->id . ',\'advertisings\')" ' . ($Model->status ? 'checked' : '') . '>';
                })
                ->escapeColumns('action', 'checkbox', 'image')
                ->addIndexColumn()
                ->addColumn('checkbox', function ($Model) {
                    return '<input type="checkbox" class="DTcheckbox" value="' . $Model->id . '">';
                })
                ->toJson();
        }

        return view('Admin.advertising.index');
    }

    public function create(Request $request)
    {
        return view('Admin.advertising.create');
    }

    public function store(StoreAdvertisingRequest $request)
    {
        $Advertising = Advertising::create([
            'title_ar' => $request->title_ar,
            'title_en' => $request->title_en,
            'desc_ar' => $request->desc_ar,
            'desc_en' => $request->desc_en,
            'status' => $request->status ? 1 : 0,

        ]);



        if ($request->images) {
            foreach ($request->images as $key => $img) {
                AdvertisingImage::create([
                    'image' => Upload::UploadFile($img, 'Advertising'),
                    'advertising_id' => $Advertising->id,
                ]);
            }
        }

        alert()->success(__('trans.addedSuccessfully'));

        return redirect()->back();
    }

    public function show($id)
    {
        $Image = Slider::latest()->findOrFail($id);

        return view('Admin.advertising.show', compact('Image'));
    }

    public function edit($id, Request $request)
    {
        $Image = Advertising::latest()->findOrFail($id);

        return view('Admin.advertising.edit', compact('Image'));
    }
    public function deleteGalleryPhoto(Request $request)
    {
        // dd( $request->all());
        Upload::deleteImage($request->image);
        $data = AdvertisingImage::where('advertising_id', $request->product_id)->where('image', $request->image)->first();
        $status = $data->delete();
        // dd($data);


    }
    public function update(UpdateAdvertisingRequest $request, $id)
    {
        $Image = Advertising::latest()->findOrFail($id);
        $Image->update([
            'title_ar' => $request->title_ar,
            'title_en' => $request->title_en,
            'desc_ar' => $request->desc_ar,
            'desc_en' => $request->desc_en,
            'status' => $request->status ? 1 : 0,
        ]);
        if ($request->hasFile('images')) {
            foreach ($request->images as $key => $img) {
                AdvertisingImage::create([
                    'image' => Upload::UploadFile($img, 'Advertising'),
                    'advertising_id' => $Image->id,
                ]);
            }
        }

        alert()->success(__('trans.updatedSuccessfully'));

        return redirect()->back();
    }

    public function destroy($id)
    {
        Slider::latest()->where('id', $id)->delete();
    }
}
