<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Admin\Category;
use App\Models\Admin\Post;
use Illuminate\Support\Facades\DB;

class SinglePostController extends Controller
{
    public function SinglePost($id, $slug)
    {
        $categories = Category::all();
        $post = DB::table('posts')
            ->Join('categories', 'posts.cat_id', '=', 'categories.id')
            ->Join('sub_categories', 'posts.subcat_id', '=', 'sub_categories.id')
            ->select('posts.*', 'categories.category_bn', 'categories.category_en', 'sub_categories.sub_category_bn', 'sub_categories.sub_category_en')
            ->orderBy('created_at', 'desc')
            ->where('posts.id', $id)
            ->first();

        // $morePost = Post::where('cat_id', $post->cat_id)->get();

        // dd($morePost);
        return view('frontend.front.singlePost', compact('categories', 'post'));
    }
}
