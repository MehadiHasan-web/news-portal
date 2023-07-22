<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Admin\Photo;
use Intervention\Image\ImageManagerStatic as Image;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;

class PhotoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $photos = Photo::all();
        return view('admin.modules.photos.index', compact('photos'));
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

        $validatedData = $request->validate([
            'title' => 'required|string',
            'photo' => 'required',
            'type' => 'required',
        ]);

        $photo = new Photo;

        $photo->title = $request->title;
        $photo->type = $request->type;

        $image = $request->file('photo');


        if ($image->isValid()) {
            $image_name = date('d-m-Y') . uniqid() . '.' . $image->getClientOriginalExtension();
            $image_path = "public/photos_gallery/" . $image_name;
            $image->move("public/photos_gallery/", $image_name);

            $resized_image = Image::make($image_path)->resize(500, 310)->save($image_path);
            // Set the photo image path
            $photo->photo = $image_path;
            $photo->save();
            flash()->addSuccess('Photo added successfully.');
        } else {
            flash()->error('Failed to upload image.');
        }

        return redirect()->back();
    }

    /**
     * Display the specified resource.
     */
    public function show(Photo $photo)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $data = Photo::find($id);
        return view('admin.modules.photos.edit', compact('data'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $validatedData = $request->validate([
            'title' => 'nullable',
            'photo' => 'nullable|image|mimes:jpeg,png,jpg,gif', // Add image validation rules here
            'type' => 'nullable',
        ]);

        $photo = Photo::find($id);

        $photo->title = $request->title;
        $photo->type = $request->type;

        $image = $request->file('photo');
        $oldimage = $request->oldimage;

        if ($image) {
            $image_name = date('d-m-Y') . uniqid() . '.' . $image->getClientOriginalExtension();
            $image_path = "public/photos_gallery/" . $image_name;

            if ($image->isValid() && $image->move("public/photos_gallery", $image_name)) {
                $resized_image = Image::make(public_path($image_path))->resize(500, 310)->save();
                $photo->photo = $image_path;

                if ($oldimage && File::exists(public_path($oldimage))) {
                    File::delete(public_path($oldimage));
                }

                flash()->addSuccess('Photo updated successfully.');
            }
        } else {
            $photo->photo = $oldimage;
            flash()->addSuccess('Photo updated successfully.');
        }

        $photo->save();
        return redirect()->route('photo.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $photo = Photo::where('id', $id)->first();
        unlink($photo->photo);
        Photo::where('id', $id)->delete();
        flash()->addSuccess('Photo deleted successfully.');
        return redirect()->back();
    }
}
