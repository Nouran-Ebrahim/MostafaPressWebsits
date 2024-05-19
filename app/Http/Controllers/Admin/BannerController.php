<?php

namespace App\Http\Controllers\Admin;

use App\Functions\Upload;
use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\UpdateImageRequest;
use App\Models\Slider;
use App\Models\Banner;
use App\Models\BannerImage;

use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;
use App\Http\Requests\Admin\StoreBannerRequest;
use App\Http\Requests\Admin\UpdateBannerRequest;

class BannerController extends Controller
{
    public function index(Request $request)
    {
        // dd(1);
        if ($request->ajax()) {
            $Models = Banner::latest();

            return DataTables::of($Models)
                ->addColumn('action', function ($Model) {
                    $data = '';
                    $data .= '<a style="color: #000;" target="_blank" href="' . route('admin.banners.edit', $Model) . '"><i class="fa-solid fa-pen-to-square"></i></a>';

                    $data .= '<form class="formDelete" method="POST" action="' . route('admin.banners.destroy', $Model) . '">
                                ' . csrf_field() . '
                                <input name="_method" type="hidden" value="DELETE">
                                <button type="button" class="btn btn-flat show_confirm" data-toggle="tooltip" title="Delete"><i class="fa-solid fa-eraser"></i></button>
                            </form>';

                    return $data;
                })
                ->editColumn('status', function ($Model) {
                    return '<input class="toggle" type="checkbox" onclick="toggleswitch(' . $Model->id . ',\'banners\')" ' . ($Model->status ? 'checked' : '') . '>';
                })
                ->escapeColumns('action', 'checkbox', 'image')
                ->addIndexColumn()
                ->addColumn('checkbox', function ($Model) {
                    return '<input type="checkbox" class="DTcheckbox" value="' . $Model->id . '">';
                })
                ->toJson();
        }

        return view('Admin.banner.index');
    }

    public function create(Request $request)
    {
        return view('Admin.banner.create');
    }

    public function store(StoreBannerRequest $request)
    {
        $banner = Banner::create([
            'desc_ar' => $request->desc_ar,
            'desc_en' => $request->desc_en,
            'status' => $request->status ? 1 : 0,

        ]);



        if ($request->images) {
            foreach ($request->images as $key => $img) {
                bannerImage::create([
                    'image' => Upload::UploadFile($img, 'banner'),
                    'banner_id' => $banner->id,
                ]);
            }
        }

        alert()->success(__('trans.addedSuccessfully'));

        return redirect()->back();
    }

    public function show($id)
    {
        $Image = Slider::latest()->findOrFail($id);

        return view('Admin.banner.show', compact('Image'));
    }

    public function edit($id, Request $request)
    {
        $Image = Banner::latest()->findOrFail($id);

        return view('Admin.banner.edit', compact('Image'));
    }
    public function deleteGalleryPhoto(Request $request)
    {
        // dd( $request->all());
        Upload::deleteImage($request->image);
        $data = BannerImage::where('banner_id', $request->product_id)->where('image', $request->image)->first();
        $status = $data->delete();
        // dd($data);


    }
    public function update(UpdateBannerRequest $request, $id)
    {
        $Image = Banner::latest()->findOrFail($id);
        $Image->update([

            'desc_ar' => $request->desc_ar,
            'desc_en' => $request->desc_en,
            'status' => $request->status ? 1 : 0,
        ]);
        if ($request->hasFile('images')) {
            foreach ($request->images as $key => $img) {
                BannerImage::create([
                    'image' => Upload::UploadFile($img, 'banner'),
                    'banner_id' => $Image->id,
                ]);
            }
        }

        alert()->success(__('trans.updatedSuccessfully'));

        return redirect()->back();
    }

    public function destroy($id)
    {
        Banner::latest()->where('id', $id)->delete();
    }
}
