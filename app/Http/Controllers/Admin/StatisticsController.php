<?php

namespace App\Http\Controllers\Admin;

use App\Functions\Upload;
use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\UpdateImageRequest;
use App\Models\Slider;
use App\Models\Statistics;
use App\Models\AdvertisingImage;

use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;
use App\Http\Requests\Admin\StoreStatisticsRequest;
use App\Http\Requests\Admin\UpdateStatisticsRequest;

class StatisticsController extends Controller
{
    public function index(Request $request)
    {
        // dd(1);
        if ($request->ajax()) {
            $Models = Statistics::latest();

            return DataTables::of($Models)
                ->addColumn('action', function ($Model) {
                    $data = '';
                    $data .= '<a style="color: #000;" target="_blank" href="' . route('admin.statistics.edit', $Model) . '"><i class="fa-solid fa-pen-to-square"></i></a>';

                    $data .= '<form class="formDelete" method="POST" action="' . route('admin.statistics.destroy', $Model) . '">
                                ' . csrf_field() . '
                                <input name="_method" type="hidden" value="DELETE">
                                <button type="button" class="btn btn-flat show_confirm" data-toggle="tooltip" title="Delete"><i class="fa-solid fa-eraser"></i></button>
                            </form>';

                    return $data;
                })
                ->editColumn('status', function ($Model) {
                    return '<input class="toggle" type="checkbox" onclick="toggleswitch('.$Model->id.',\'statistics\')" '.($Model->status ? 'checked' : '').'>';
                })
                ->addColumn('image', function ($Model) {
                    return '<a class="image-popup-no-margins image-column" href="' . image_path($Model['image']) . '">
                        <img src="' . image_path($Model['image']) . '" style="max-height: 150px;max-width: 150px">
                    </a>';
                })
                ->escapeColumns('action', 'checkbox', 'image')
                ->addIndexColumn()
                ->addColumn('checkbox', function ($Model) {
                    return '<input type="checkbox" class="DTcheckbox" value="' . $Model->id . '">';
                })
                ->toJson();
        }

        return view('Admin.statistics.index');
    }

    public function create(Request $request)
    {
        return view('Admin.statistics.create');
    }

    public function store(StoreStatisticsRequest $request)
    {
        $Statistics = Statistics::create([
            'title_ar' => $request->title_ar,
            'title_en' => $request->title_en,
            'number' => $request->number,
            'status' => $request->status ? 1 : 0,

        ]);



        if ($request->image) {
           $Statistics->image= Upload::UploadFile($request->image, 'Statistics');
           $Statistics->save();
        }

        alert()->success(__('trans.addedSuccessfully'));

        return redirect()->back();
    }

    public function show($id)
    {
        $Image = Slider::latest()->findOrFail($id);

        return view('Admin.statistics.show', compact('Image'));
    }

    public function edit($id, Request $request)
    {
        $Image = Statistics::latest()->findOrFail($id);

        return view('Admin.statistics.edit', compact('Image'));
    }
    public function deleteGalleryPhoto(Request $request)
    {
        // dd( $request->all());
        // Upload::deleteImage($request->image);
        $data = AdvertisingImage::where('advertising_id', $request->product_id)->where('image', $request->image)->first();
        $status = $data->delete();
        // dd($data);


    }
    public function update(UpdateStatisticsRequest $request, $id)
    {
        $Statistics = Statistics::latest()->findOrFail($id);
        $Statistics->update([
            'title_ar' => $request->title_ar,
            'title_en' => $request->title_en,
             'number'=> $request->number,
            'status' => $request->status ? 1 : 0,
        ]);
        if ($request->image) {
            Upload::deleteImage($Statistics->image);
            $Statistics->image= Upload::UploadFile($request->image, 'Statistics');
            $Statistics->save();
         }

        alert()->success(__('trans.updatedSuccessfully'));

        return redirect()->back();
    }

    public function destroy($id)
    {
        Statistics::latest()->where('id', $id)->delete();
    }
}
