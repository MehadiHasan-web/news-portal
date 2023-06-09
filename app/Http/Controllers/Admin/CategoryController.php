<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Admin\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $categories = Category::all();
        return view('admin.modules.category.index', compact('categories'));
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
            'category_en' => 'required|unique:categories|max:55',
            'category_bn' => 'required|unique:categories|max:55',
        ]);
        $data = new Category;
        $data->category_en = $request->category_en;
        $data->category_bn = $request->category_bn;
        $data->save();



        flash()->addSuccess('Category added successfully.');
        return redirect()->back();
    }

    /**
     * Display the specified resource.
     */
    public function show(Category $category)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $data = Category::where('id', $id)->first();
        return view('admin.modules.category.edit', compact('data'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Category $category)
    {
        // Validate the form data
        $request->validate([
            'category_en' => 'required|max:55',
            'category_bn' => 'required|max:55',
        ]);

        // Update the category with the new data
        $category->category_en = $request->category_en;
        $category->category_bn = $request->category_bn;
        $category->save();

        // Add a success message to the session
        flash()->addSuccess('Category updated successfully.');

        // Redirect back to the index page
        return redirect()->route('category.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {

        Category::where('id', $id)->delete();
        flash()->addSuccess('Category deleted successfully.');
        return redirect()->back();
    }
}
