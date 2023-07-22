<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Admin\Video;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class VideoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $videos = Video::all();
        return view('admin.modules.video.index', compact('videos'));
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
            'title' => 'required|unique:videos',
            'embed_code' => 'required',
            'type' => 'required'
        ]);
        $data = new Video;
        $data->title = $request->title;
        $data->embed_code = $request->embed_code;
        $data->type = $request->type;
        $data->save();



        flash()->addSuccess('Video added successfully.');
        return redirect()->back();
    }

    /**
     * Display the specified resource.
     */
    public function show(Video $video)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $data = Video::find($id);
        return view('admin.modules.video.edit', compact('data'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {

        $request->validate([
            'title' => 'nullable',
            'embed_code' => 'nullable',
            'type' => 'nullable',
        ]);
        Video::where('id', $id)->update($request->only(['title', 'embed_code', 'type']));

        flash()->addSuccess('Video updated successfully.');

        return redirect()->route('video.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        Video::where('id', $id)->delete();
        flash()->addSuccess('Video deleted successfully.');
        return redirect()->back();
    }
}
