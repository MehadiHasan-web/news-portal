<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Admin\Category;
use App\Models\Admin\SubCategory;
use Illuminate\Http\Request;

class SubCategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $subcategory = SubCategory::with('category')->get();
        $categories = Category::all();
        return view('admin.modules.subcategory.index', compact('subcategory', 'categories'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'subcategory_en' => 'required|max:55',
            'subcategory_bn' => 'required|max:55',
            'category_id' => 'required'
        ]);
        $data = new SubCategory;
        $data->sub_category_en = $request->subcategory_en;
        $data->sub_category_bn = $request->subcategory_bn;
        $data->category_id = $request->category_id;
        $data->save();

        flash()->addSuccess('Subcategory added successfully.');
        return redirect()->back();
    }

    /**
     * Display the specified resource.
     */
    public function show(SubCategory $subCategory)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $data = SubCategory::where('id', $id)->first();
        $categories = Category::get();
        return view('admin.modules.subcategory.edit', compact('data', 'categories'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        // Validate the form data
        $request->validate([
            'sub_category_bn' => 'required|max:55',
            'sub_category_en' => 'required|max:55',
            'category_id' => 'required|max:55',
        ]);

        // Retrieve the subcategory record to update
        $subCategory = SubCategory::findOrFail($id);

        // Update the subcategory record with the new data
        $subCategory->sub_category_bn = $request->sub_category_bn;
        $subCategory->sub_category_en = $request->sub_category_en;
        $subCategory->category_id = $request->category_id;
        $subCategory->save();

        // Add a success message to the session
        flash()->addSuccess('Subcategory updated successfully.');

        // Redirect back to the index page
        return redirect()->route('subcategory.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        SubCategory::where('id', $id)->delete();
        flash()->addSuccess('Subcategory deleted successfully.');
        return redirect()->back();
    }
}
