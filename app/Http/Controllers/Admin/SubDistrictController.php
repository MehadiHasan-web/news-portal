<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Admin\District;
use App\Models\Admin\SubDistrict;
use Illuminate\Http\Request;

class SubDistrictController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $subdistricts = SubDistrict::with('district')->get();
        $districts = District::all();
        return view('admin.modules.subdistrict.index', compact('subdistricts', 'districts'));
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
        // dd($request->all());
        $validated = $request->validate([
            'district_id' => 'required',
            'subdistrict_en' => 'required|max:55',
            'subdistrict_bn' => 'required|max:55',

        ]);

        SubDistrict::create([
            'district_id' => $request->district_id,
            'subdistrict_en' => $request->subdistrict_en,
            'subdistrict_bn' => $request->subdistrict_bn
        ]);

        flash()->addSuccess('Sub District added successfully.');
        return redirect()->back();
    }

    /**
     * Display the specified resource.
     */
    public function show(SubDistrict $subDistrict)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $data = SubDistrict::find($id);
        $districts = District::get();
        return view('admin.modules.subdistrict.edit', compact('data', 'districts'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        // Validate the form data
        $request->validate([
            'subdistrict_en' => 'required|max:55',
            'subdistrict_bn' => 'required|max:55',
            'district_id' => 'required',
        ]);
        SubDistrict::find($id)->update($request->all());

        // Add a success message to the session
        flash()->addSuccess('Subdistrict updated successfully.');

        // Redirect back to the index page
        return redirect()->route('subdistrict.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(SubDistrict $subDistrict)
    {
        //
    }
}
