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
            ->leftJoin('categories', 'posts.cat_id', '=', 'categories.id')
            ->leftJoin('sub_categories', 'posts.subcat_id', '=', 'sub_categories.id')
            ->select('posts.*', 'categories.category_bn', 'categories.category_en', 'sub_categories.sub_category_bn', 'sub_categories.sub_category_en')
            ->orderBy('created_at', 'desc')
            ->where('posts.id', $id)
            ->first();

        $ThreePost = Post::where('cat_id', $post->cat_id)->whereNot('id', $post->id)->orderBy('created_at', 'desc')->limit(3)->get();
        $moreThreePost = Post::where('cat_id', $post->cat_id)->whereNot('id', $post->id)->skip(3)->orderBy('created_at', 'desc')->limit(3)->get();


        // dd($ThreePost);
        return view('frontend.front.singlePost', compact('categories', 'post', 'ThreePost', 'moreThreePost'));
    }
}
