<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Admin\Category;
use App\Models\Admin\Post;
use App\Models\Admin\Website;
use Illuminate\Support\Facades\DB;
use Session;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        $categories = Category::orderBy('id', 'ASC')->get();
        $sco = DB::table('scos')->first();
        $social = DB::table('socials')->first();
        $livetv = DB::table('livetv')->first();
        $namaz = DB::table('namaz')->first();
        $websites = Website::all();
        $notice = DB::table('notices')->first();
        // $posts = Post::all();

        $latestPost = Post::where('first_section_thumbnail', 1)->orderBy('created_at', 'desc')->first();
        $first_section = Post::where('first_section', 1)->orderByDesc('created_at')->limit(8)->get();

        //1st category from posts
        $firstCategory = $categories->first();
        $filteredPostsBycat = Post::where('cat_id', $firstCategory->id)->get();
        // ->orderBy('created_at', 'desc')
        $big_thumcat = $filteredPostsBycat->Where('big_thumbnail', 1)->first();
        $limitpostbycat = $filteredPostsBycat->splice(1, 3);

        // 2nd category from posts
        $secondCategory = $categories->splice(1, 1)->first();
        $filteredPostsBy2ndCat = Post::where('cat_id', $secondCategory->id)->get();

        $big_thum2ndCat = $filteredPostsBy2ndCat->Where('big_thumbnail', 1)->first();
        $limitpostby2ndCat = $filteredPostsBy2ndCat->splice(1, 3);

        // dd($filteredPostsBy2ndCat);
        return view('frontend.front.index', compact('categories', 'sco', 'social', 'livetv', 'namaz', 'websites', 'notice', 'first_section', 'latestPost', 'big_thumcat', 'firstCategory', 'limitpostbycat', 'secondCategory', 'big_thum2ndCat', 'limitpostby2ndCat'));
    }
    public function English()
    {
        session()->get('lang');
        session()->forget('lang');
        session()->put('lang', 'english');
        return redirect()->back();
    }
    public function Bangla()
    {
        session()->get('lang');
        session()->forget('lang');
        session()->put('lang', 'bangla');
        return redirect()->back();
    }
}
