<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Admin\Category;
use App\Models\Admin\District;
use App\Models\Admin\Post;
use Illuminate\Http\Request;
// use App\Http\Controllers\Admin\URL;

class SearchController extends Controller
{
    public function Search(Request $request)
    {


        $categories = Category::all();
        $district = District::all();
        // return view('admin.modules.posts.search', compact('post', 'categories', 'district'));

        $searchTerm = $request->input('search');

        $posts = Post::where('title_bn', 'like', '%' . $searchTerm . '%')->get();
        $output = '';
        foreach ($posts as $post) {
            $output .= '

        <div class="row g-0 p-2 border mt-2 position-relative shadow-sm">
            <div class="col-md-2">
                <img src="' . asset($post->image) . '" style="width: 150px; height:auto;" alt="" class="border-rounded">
            </div>
          <div class="col-md-10 px-3">
                <div class="">
                    <h5 class=""><a class="text-decoration-none" href="' . route('post.show', $post->id) . '">' . $post->title_bn . '</a></h5>
                    <p class="">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    <div class="d-flex">
                        <p class=" ">' . $post->category_bn . '</p>
                        <p class="m-0 ms-2"><small class="text-muted">|| ' . \Carbon\Carbon::parse($post->created_at)->diffForHumans() . '</small></p>
                    </div>
                </div>
                <div class="btn-group dropstart position-absolute top-0 end-0 m-2">
                    <button type="button" class="btn btn-sm btn-light text-dark border border-secondary rounded" data-bs-toggle="dropdown" aria-expanded="false">

                        <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                            <path stroke-linecap="round" stroke-linejoin="round" d="M10.5 6h9.75M10.5 6a1.5 1.5 0 11-3 0m3 0a1.5 1.5 0 10-3 0M3.75 6H7.5m3 12h9.75m-9.75 0a1.5 1.5 0 01-3 0m3 0a1.5 1.5 0 00-3 0m-3.75 0H7.5m9-6h3.75m-3.75 0a1.5 1.5 0 01-3 0m3 0a1.5 1.5 0 00-3 0m-9.75 0h9.75" />
                        </svg>


                    </button>

                </div>
          </div>
        </div>';
        }

        // dd($posts->title_bn);
        return response()->json($output);
    }
}
