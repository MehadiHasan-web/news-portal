<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Admin\Category;
use App\Models\Admin\District;
use App\Models\Admin\Post;
use App\Models\Admin\SubCategory;
use App\Models\Admin\SubDistrict;
use Illuminate\Http\Request;
use Intervention\Image\ImageManagerStatic as Image;
use Illuminate\Http\UploadedFile;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {

        // $post = DB::table('posts')
        //     ->join('categories', 'posts.cat_id', 'categories.id')
        //     ->join('sub_categories', 'posts.subcat_id', 'sub_categories.id')
        //     ->join('districts', 'posts.dist_id', 'districts.id')
        //     ->join('sub_districts', 'posts.subdist_id', 'sub_districts.id')
        //     ->get();

        // $post = DB::table('posts')
        //     ->join('categories', 'posts.cat_id', 'categories.id')
        //     ->join('sub_categories', 'posts.subcat_id', 'sub_categories.id')
        //     ->select('posts.*', 'categories.category_bn', 'sub_categories.sub_category_bn')
        //     ->get();

        $post = DB::table('posts')
            ->leftJoin('categories', 'posts.cat_id', '=', 'categories.id')
            ->leftJoin('sub_categories', 'posts.subcat_id', '=', 'sub_categories.id')
            ->select('posts.*', 'categories.category_bn', 'sub_categories.sub_category_bn')
            ->orderBy('created_at', 'desc')
            ->paginate(5);
        // ->get();
        $categories = Category::orderBy('created_at', 'desc')->get();
        $district = District::orderBy('created_at', 'desc')->get();
        // dd($district);
        // return response()->json($post);
        return view('admin.modules.posts.index', compact('post', 'categories', 'district'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $categories =  Category::all();
        $districts = District::all();
        return view('admin.modules.posts.create', compact('categories', 'districts'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // dd($request->category);

        $validatedData = $request->validate([
            'title_bn' => 'required|string|max:255',
            'title_en' => 'required|string|max:255',
            'category' => 'required|integer',
            'subcategory' => 'nullable|integer',
            'dist_id' => 'nullable|integer',
            'subdistrict' => 'nullable',
            'photo' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048',
            'tags_bn' => 'nullable|string|max:255',
            'tags_en' => 'nullable|string|max:255',
            'details_bn' => 'required|string',
            'details_en' => 'required|string',
        ]);

        $post = new Post;

        $post->cat_id = $request->category;
        $post->subcat_id = $request->subcategory;
        $post->dist_id = $request->dist_id;
        $post->subdist_id = $request->subdistrict;
        $post->title_en = $request->title_en;
        $post->title_bn = $request->title_bn;
        $post->tags_bn = $request->tags_bn;
        $post->tags_en = $request->tags_en;
        $post->details_en = $request->details_en;
        $post->details_bn = $request->details_bn;
        $post->headline = $request->headline;
        $post->first_section = $request->first_section;
        $post->first_section_thumbnail = $request->first_section_thumb;
        $post->big_thumbnail = $request->bigthumbnail;
        $post->post_date = date("d-m-Y");
        $post->post_month = date("F");
        $post->user_id = auth()->id();

        $image = $request->file('photo');
        $image_name = date('d-m-Y') . uniqid() . '.' . $image->getClientOriginalExtension();
        $image_path = "public/postimages/" . $image_name;

        if ($image->isValid() && $image->move("public/postimages/", $image_name)) {

            $resized_image = Image::make($image_path)->resize(500, 310)->save($image_path);

            $post->image = $image_path;
            $post->save();
            flash()->addSuccess('Post added successfully.');
        } else {

            echo "Failed to upload image.";
        }

        return redirect()->route('post.index');
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        // $post = Post::findOrFail($id);
        $id = explode(',', $id);
        $post = DB::table('posts')
            ->join('categories', 'posts.cat_id', 'categories.id')
            ->join('sub_categories', 'posts.subcat_id', 'sub_categories.id')
            ->select('posts.*', 'categories.category_bn', 'sub_categories.sub_category_bn')
            ->whereIn('posts.id', $id)
            ->get();
        dd($post);
        return view('admin.modules.posts.show', compact('post'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $categories =  Category::all();
        $districts = District::all();
        $post = Post::find($id);
        $subdistrict = SubDistrict::where('district_id', $post->dist_id)->get();
        $subcategories = SubCategory::where('category_id', $post->cat_id)->get();


        return view('admin.modules.posts.edit', compact('categories', 'districts', 'post', 'subcategories', 'subdistrict'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        // dd($request->all());
        $validatedData = $request->validate([
            'title_bn' => 'required|string|max:255',
            'title_en' => 'required|string|max:255',
            'category' => 'required|integer',
            'subcategory' => 'nullable|integer',
            'dist_id' => 'nullable|integer',
            'subdistrict' => 'nullable',
            'photo' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
            'tags_bn' => 'nullable|string|max:255',
            'tags_en' => 'nullable|string|max:255',
            'details_bn' => 'required|string',
            'details_en' => 'required|string',
        ]);

        $post = Post::find($id);

        $post->cat_id = $request->category;
        $post->subcat_id = $request->subcategory;
        $post->dist_id = $request->dist_id;
        $post->subdist_id = $request->subdistrict;
        $post->title_en = $request->title_en;
        $post->title_bn = $request->title_bn;
        $post->tags_bn = $request->tags_bn;
        $post->tags_en = $request->tags_en;
        $post->details_en = $request->details_en;
        $post->details_bn = $request->details_bn;
        $post->headline = $request->headline;
        $post->first_section = $request->first_section;
        $post->first_section_thumbnail = $request->first_section_thumb;
        $post->big_thumbnail = $request->bigthumbnail;

        $image = $request->file('photo');
        $oldimage = $request->oldimage;

        if ($image) {
            $image_name = date('d-m-Y') . uniqid() . '.' . $image->getClientOriginalExtension();
            $image_path = "public/postimages/" . $image_name;

            if ($image->isValid() && $image->move("public/postimages/", $image_name)) {
                $resized_image = Image::make(public_path($image_path))->resize(500, 310)->save();
                $post->image = $image_path;

                if ($oldimage && File::exists($oldimage)) {
                    File::delete($oldimage);
                }

                flash()->addSuccess('Post updated successfully.');
            }
        } else {
            $post->image = $oldimage;
            flash()->addSuccess('Post updated successfully.');
        }

        $post->update();
        return redirect()->route('post.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $post = Post::where('id', $id)->first();
        unlink($post->image);
        Post::where('id', $id)->delete();
        flash()->addSuccess('Post deleted successfully.');
        return redirect()->back();
    }
}
