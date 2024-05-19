<?php

namespace App\Http\Controllers\Admin;

use App\Functions\Upload;
use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\StoreStepSuccessRequest;
use App\Models\StepSuccess;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;
use App\Http\Requests\Admin\UpdateStepSuccessRequest;

class StepController extends Controller
{
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $Models = StepSuccess::latest();

            return DataTables::of($Models)
                ->addColumn('action', function ($Model) {
                    $data = '';
                    $data .= '<a style="color: #000;" target="_blank" href="' . route('admin.StepSuccess.edit', $Model) . '"><i class="fa-solid fa-pen-to-square"></i></a>';

                    $data .= '<form class="formDelete" method="POST" action="' . route('admin.StepSuccess.destroy', $Model) . '">
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
                    return '<input class="toggle" type="checkbox" onclick="toggleswitch(' . $Model->id . ',\'step_successes\')" ' . ($Model->status ? 'checked' : '') . '>';
                })

                ->escapeColumns('action', 'checkbox', 'image')
                ->addIndexColumn()
                ->addColumn('checkbox', function ($Model) {
                    return '<input type="checkbox" class="DTcheckbox" value="' . $Model->id . '">';
                })
                ->toJson();
        }

        return view('Admin.StepSuccess.index');
    }

    public function create(Request $request)
    {
        return view('Admin.StepSuccess.create');
    }

    public function store(StoreStepSuccessRequest $request)
    {
        $Statistics = StepSuccess::create([
            'title_ar' => $request->title_ar,
            'title_en' => $request->title_en,
            'desc_ar' => $request->desc_ar,
            'desc_en' => $request->desc_en,
            'status' => $request->status ? 1 : 0,
        ]);



        if ($request->image) {
            $Statistics->image = Upload::UploadFile($request->image, 'StepSuccess');
            $Statistics->save();
        }
       
        alert()->success(__('trans.addedSuccessfully'));

        return redirect()->back();
    }

    public function show($id)
    {
        $Image = StepSuccess::latest()->findOrFail($id);

        return view('Admin.sliders.show', compact('Image'));
    }

    public function edit($id, Request $request)
    {
        $Image = StepSuccess::latest()->findOrFail($id);

        return view('Admin.StepSuccess.edit', compact('Image'));
    }

    public function update(UpdateStepSuccessRequest $request, $id)
    {
        // dd($request->all());
        $Image = StepSuccess::latest()->findOrFail($id);
        $Image->update([
            'title_ar' => $request->title_ar,
            'title_en' => $request->title_en,
            'desc_ar' => $request->desc_ar,
            'desc_en' => $request->desc_en,
            
            'status' => $request->status ? 1 : 0,
        ]);
        if ($request->image) {
            Upload::deleteImage($Image->image);
            $Image->image = Upload::UploadFile($request->image, 'StepSuccess');
            $Image->save();
        }
        
        alert()->success(__('trans.updatedSuccessfully'));

        return redirect()->back();
    }

    public function destroy($id)
    {
        StepSuccess::latest()->where('id', $id)->delete();
    }
}
