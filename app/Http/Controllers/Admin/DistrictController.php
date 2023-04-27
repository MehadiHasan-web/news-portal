<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Admin\District;
use Illuminate\Http\Request;

class DistrictController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $districts = District::all();
        return view('admin.modules.district.index', compact('districts'));
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
            'district_en' => 'required|max:55',
            'district_bn' => 'required|max:55',
        ]);
        $data = new District;
        $data->district_en = $request->district_en;
        $data->district_bn = $request->district_bn;
        $data->save();

        flash()->addSuccess('District added successfully.');
        return redirect()->back();
    }

    /**
     * Display the specified resource.
     */
    public function show(District $district)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $data = District::where('id', $id)->first();
        return view('admin.modules.district.edit', compact('data'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, District $district)
    {
        // Validate the form data
        $request->validate([
            'district_en' => 'required|max:55',
            'district_bn' => 'required|max:55',
        ]);

        // Update the category with the new data
        $district->district_en = $request->district_en;
        $district->district_bn = $request->district_bn;
        $district->save();

        // Add a success message to the session
        flash()->addSuccess('District updated successfully.');

        // Redirect back to the index page
        return redirect()->route('district.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        District::where('id', $id)->delete();
        flash()->addSuccess('District deleted successfully.');
        return redirect()->back();
    }
}
