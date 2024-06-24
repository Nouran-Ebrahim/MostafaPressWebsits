<?php

namespace App\Http\Controllers\Admin;

use App\Functions\Upload;
use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\StoreServicesRequest;
use App\Models\Service;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;
use App\Http\Requests\Admin\UpdateServicesRequest;
use App\Models\ServiceImage;

class ServicesController extends Controller
{
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $Models = Service::latest();

            return DataTables::of($Models)
                ->addColumn('action', function ($Model) {
                    $data = '';
                    $data .= '<a style="color: #000;" target="_blank" href="' . route('admin.services.edit', $Model) . '"><i class="fa-solid fa-pen-to-square"></i></a>';

                    $data .= '<form class="formDelete" method="POST" action="' . route('admin.services.destroy', $Model) . '">
                                ' . csrf_field() . '
                                <input name="_method" type="hidden" value="DELETE">
                                <button type="button" class="btn btn-flat show_confirm" data-toggle="tooltip" title="Delete"><i class="fa-solid fa-eraser"></i></button>
                            </form>';

                    return $data;
                })
                ->addColumn('image', function ($Model) {
                    return '<a class="image-popup-no-margins" href="' . image_path($Model['image']) . '">
                        <img src="' . image_path($Model['image']) . '" style="max-height: 150px;max-width: 150px">
                    </a>';
                })
                ->editColumn('status', function ($Model) {
                    return '<input class="toggle" type="checkbox" onclick="toggleswitch(' . $Model->id . ',\'services\')" ' . ($Model->status ? 'checked' : '') . '>';
                })

                ->escapeColumns('action', 'checkbox', 'image')
                ->addIndexColumn()
                ->addColumn('checkbox', function ($Model) {
                    return '<input type="checkbox" class="DTcheckbox" value="' . $Model->id . '">';
                })
                ->toJson();
        }

        return view('Admin.services.index');
    }

    public function create(Request $request)
    {
        return view('Admin.services.create');
    }
    public function deleteServicePhoto(Request $request)
    {
        // dd( $request->all());
        Upload::deleteImage($request->image);
        $data = ServiceImage::where('service_id', $request->product_id)->where('image', $request->image)->first();
        $status = $data->delete();
        // dd($data);


    }
    public function store(StoreServicesRequest $request)
    {
        $Statistics = Service::create([
            'title_ar' => $request->title_ar,
            'title_en' => $request->title_en,
            'desc_ar' => $request->desc_ar,
            'desc_en' => $request->desc_en,
            
            'desc_home_ar' => $request->desc_home_ar,
            'desc_home_en' => $request->desc_home_en,
            'status' => $request->status ? 1 : 0,
        ]);



        if ($request->image) {
            $Statistics->image = Upload::UploadFile($request->image, 'services');
            $Statistics->save();
        }
        if ($request->home_image) {
            $Statistics->home_image = Upload::UploadFile($request->home_image, 'services');
            $Statistics->save();
        }
        if ($request->images) {
            foreach ($request->images as $key => $img) {
                ServiceImage::create([
                    'image' => Upload::UploadFile($img, 'services'),
                    'service_id' => $Statistics->id,
                ]);
            }
        }
        alert()->success(__('trans.addedSuccessfully'));

        return redirect()->back();
    }

    public function show($id)
    {
        $Image = Service::latest()->findOrFail($id);

        return view('Admin.sliders.show', compact('Image'));
    }

    public function edit($id, Request $request)
    {
        $Image = Service::latest()->findOrFail($id);

        return view('Admin.services.edit', compact('Image'));
    }

    public function update(UpdateServicesRequest $request, $id)
    {
        // dd($request->all());
        $Image = Service::latest()->findOrFail($id);
        $Image->update([
            'title_ar' => $request->title_ar,
            'title_en' => $request->title_en,
            'desc_ar' => $request->desc_ar,
            'desc_en' => $request->desc_en,

            'desc_home_ar' => $request->desc_home_ar,
            'desc_home_en' => $request->desc_home_en,
            'status' => $request->status ? 1 : 0,
        ]);
        if ($request->hasFile('image')) {
            Upload::deleteImage($Image->image);
            $Image->image = Upload::UploadFile($request->image, 'services');
            $Image->save();
        }
        if ($request->hasFile('home_image')) {
            Upload::deleteImage($Image->home_image);
            $Image->home_image = Upload::UploadFile($request->home_image, 'services');
            $Image->save();
        }
        if ($request->hasFile('images')) {
            foreach ($request->images as $key => $img) {
                ServiceImage::create([
                    'image' => Upload::UploadFile($img, 'services'),
                    'service_id' => $Image->id,
                ]);
            }
        }
        alert()->success(__('trans.updatedSuccessfully'));

        return redirect()->back();
    }

    public function destroy($id)
    {
        Service::latest()->where('id', $id)->delete();
    }
}
