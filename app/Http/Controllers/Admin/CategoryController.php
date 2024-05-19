<?php

namespace App\Http\Controllers\Admin;

use App\Functions\Upload;
use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\StoreCategoryRequest;
use App\Http\Requests\Admin\UpdateCategoryRequest;
use App\Models\Category;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class CategoryController extends Controller
{
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $Categories = Category::latest();

            return Datatables::of($Categories)
                ->addColumn('action', function ($Category) {
                    return '<a href="'.route('admin.categories.edit', $Category).'"><i class="fa-solid fa-pen-to-square"></i></a>';
                })
                ->addColumn('image', function ($Model) {
                    return '<a class="image-popup-no-margins" href="'.$Model['image'].'">
                        <img src="'.$Model['image'].'" style="max-height: 150px;max-width: 150px">
                    </a>';
                })
                ->editColumn('status', function ($Model) {
                    return '<input class="toggle" type="checkbox" onclick="toggleswitch('.$Model->id.',\'categories\')" '.($Model->status ? 'checked' : '').'>';
                })
                ->addIndexColumn()
                ->addColumn('checkbox', function ($Model) {
                    return '<input type="checkbox" class="DTcheckbox" value="'.$Model->id.'">';
                })
                ->escapeColumns('action', 'checkbox', 'status')
                ->make(true);
        }

        return view('Admin.categories.index');
    }

    public function create()
    {
        return view('Admin.categories.create');
    }

    public function store(StoreCategoryRequest $request)
    {
        $Category = Category::latest()->create($request->validated());
        if ($request->hasFile('image')) {
            $Category->image = Upload::UploadFile($request['image'], 'Categories');
            $Category->save();
        }
        alert()->success(__('trans.addedSuccessfully'));

        return redirect()->back();
    }

    public function show(Category $Category)
    {
        return view('Admin.categories.show', compact('Category'));
    }

    public function edit($id)
    {
        $Category = Category::latest()->where('id', $id)->firstorfail();

        return view('Admin.categories.edit', compact('Category'));
    }

    public function update(UpdateCategoryRequest $request, $id)
    {
        $Category = Category::latest()->where('id', $id)->firstorfail();
        $Category->update($request->validated());
        if ($request->hasFile('image')) {
            $Category->image = Upload::UploadFile($request['image'], 'Categories');
            $Category->save();
        }
        alert()->success(__('trans.updatedSuccessfully'));

        return redirect()->back();
    }

    public function destroy($id)
    {
        Category::latest()->where('id', $id)->delete();
    }
}
