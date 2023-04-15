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
        // $subcategory = SubCategory::all();
        // $categories = Category::join('categories', 'sub_categories.category_id', 'categories.id')->select('categories.category_en', 'sub_categories.*')->get();
        // return view('admin.modules.subcategory.index', compact('subcategory', 'categories'));

        $subcategory = SubCategory::with('category')->get();
        return view('admin.modules.subcategory.index', compact('subcategory'));
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
    public function edit(SubCategory $subCategory)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, SubCategory $subCategory)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(SubCategory $subCategory)
    {
        //
    }
}
