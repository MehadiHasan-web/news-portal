<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Admin\Website;
use Illuminate\Http\Request;

class WebsiteController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $websites = Website::all();
        // dd($websites);
        return view('admin.modules.website.index', compact('websites'));
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
            'website_name' => 'required|unique:websites',
            'website_link' => 'required|unique:websites',
        ]);
        $data = new Website;
        $data->website_name = $request->website_name;
        $data->website_link = $request->website_link;
        $data->save();



        flash()->addSuccess('Website added successfully.');
        return redirect()->back();
    }

    /**
     * Display the specified resource.
     */
    public function show(Website $website)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Website $website, $id)
    {
        $data = Website::where('id', $id)->first();
        return view('admin.modules.website.edit', compact('data'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Website $website, $id)
    {
        // Validate the form data
        $request->validate([
            'website_name' => 'nullable',
            'website_link' => 'nullable',
        ]);

        Website::where('id', $id)->update($request->only(['website_name', 'website_link']));


        // Add a success message to the session
        flash()->addSuccess('Website updated successfully.');

        // Redirect back to the index page
        return redirect()->route('importantWebsite.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Website $website, $id)
    {
        $website->where('id', $id)->delete();
        flash()->addSuccess('Website deleted successfully.');
        return redirect()->back();
    }
}
