<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\StorePartnerRequest;
use App\Http\Requests\Admin\UpdatePartnerRequest;
use App\Models\Partner;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;
use App\Functions\Upload;

class PartnerController extends Controller
{
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $Models = Partner::latest();

            return DataTables::of($Models)
                ->addColumn('action', function ($Model) {
                    $data = '';
                    $data .= '<a style="color: #000;" target="_blank" href="' . route('admin.partners.edit', $Model) . '"><i class="fa-solid fa-pen-to-square"></i></a>';

                    $data .= '<form class="formDelete" method="POST" action="' . route('admin.partners.destroy', $Model) . '">
                                ' . csrf_field() . '
                                <input name="_method" type="hidden" value="DELETE">
                                <button type="button" class="btn btn-flat show_confirm" data-toggle="tooltip" title="Delete"><i class="fa-solid fa-eraser"></i></button>
                            </form>';

                    return $data;
                })
                ->addColumn('image', function ($Model) {
                    return '<a class="image-popup-no-margins image-column" href="' . image_path($Model['image']) . '">
                        <img src="' . image_path($Model['image']) . '" style="max-height: 150px;max-width: 150px">
                    </a>';
                })
                ->editColumn('status', function ($Model) {
                    return '<input class="toggle" type="checkbox" onclick="toggleswitch(' . $Model->id . ',\'partners\')" ' . ($Model->status ? 'checked' : '') . '>';
                })
                ->escapeColumns('action', 'checkbox', 'image')
                ->addIndexColumn()
                ->addColumn('checkbox', function ($Model) {
                    return '<input type="checkbox" class="DTcheckbox" value="' . $Model->id . '">';
                })
                ->toJson();
        }

        return view('Admin.partners.index');
    }

    public function create()
    {
        return view('Admin.partners.create');
    }

    public function store(StorePartnerRequest $request)
    {
        $Statistics = Partner::create([

            'status' => $request->status ? 1 : 0,
        ]);



        if ($request->image) {
            $Statistics->image = Upload::UploadFile($request->image, 'Partners');
            $Statistics->save();
        }
        alert()->success(__('trans.addedSuccessfully'));

        return redirect()->back();
    }

    public function show($id)
    {
        $Delivry = Partner::find($id);

        return view('Admin.partners.show', compact('Delivry'));
    }

    public function edit($id)
    {
        $Delivry = Partner::find($id);

        return view('Admin.partners.edit', compact('Delivry'));
    }

    public function update(UpdatePartnerRequest $request, $id)
    {
        
       
        $Statistics = Partner::find($id);

        $Statistics->update([
            'status' => $request->status ? 1 : 0,
        ]);

        if ($request->image) {
            Upload::deleteImage($Statistics->image);
            $Statistics->image = Upload::UploadFile($request->image, 'Partners');
            $Statistics->save();
        }
        alert()->success(__('trans.updatedSuccessfully'));
        return redirect()->back();
    }

    public function destroy($id)
    {
        $Delivry = Partner::find($id);
        $Delivry->delete();
    }
}
