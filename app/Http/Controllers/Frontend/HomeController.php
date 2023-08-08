<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Admin\Category;
use App\Models\Admin\Photo;
use App\Models\Admin\Post;
use App\Models\Admin\Video;
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
        $first_section = Post::where('first_section', 1)->whereNot('id', $latestPost->id)->orderByDesc('created_at')->limit(8)->get();

        //1st category from posts
        $firstCategory = $categories->first();

        $big_thumcat = Post::where('cat_id', $firstCategory->id)->Where('big_thumbnail', 1)->orderBy('created_at', 'desc')->first();
        $limitpostbycat = Post::where('cat_id', $firstCategory->id)->Where('first_section', 1)->whereNot('id', $big_thumcat->id)->orderBy('created_at', 'desc')->limit(2)->get();

        // 2nd category from posts
        $secondCategory = $categories->skip(1)->first();
        // $postsWithSecondCategory = Post::where('cat_id', $secondCategory->id)->get();

        $secondCategoryBigThumbs = Post::where('cat_id', $secondCategory->id)->Where('big_thumbnail', 1)->orderBy('created_at', 'desc')->first();
        $secondCategoryPosts = Post::where('cat_id', $secondCategory->id)->Where('first_section', 1)->orderBy('created_at', 'desc')->WhereNot('id', $secondCategoryBigThumbs->id)->limit(2)->get();

        // 3nd posts from category
        $thirdCategory = $categories->skip(2)->first();
        $thirdCategoryPostsThumb = Post::where('cat_id', $thirdCategory->id)->where('big_thumbnail', 1)->orderBy('created_at', 'desc')->first();

        $thirdCatPosts = Post::where('cat_id', $thirdCategory->id)->Where('first_section', 1)->WhereNot('id', $thirdCategoryPostsThumb->id)->orderBy('created_at', 'desc')->limit(3)->get();

        // 4rd posts
        $catFour = $categories->skip(3)->first();
        $fourCatPostsThumb = Post::where('cat_id', $catFour->id)->where('big_thumbnail', 1)->orderBy('created_at', 'desc')->first();
        $fourCatPosts = Post::where('cat_id', $catFour->id)->Where('first_section', 1)->WhereNot('id', $fourCatPostsThumb->id)->orderBy('created_at', 'desc')->limit(3)->get();

        // 5rd posts
        $catFive = $categories->skip(4)->first();
        $fiveCatPostsThumb = Post::where('cat_id', $catFive->id)->where('big_thumbnail', 1)->orderBy('created_at', 'desc')->first();
        $fiveCatPosts = Post::where('cat_id', $catFive->id)->Where('first_section', 1)->WhereNot('id', $fiveCatPostsThumb->id)->orderBy('created_at', 'desc')->limit(3)->get();

        // 6rd posts
        $catSix = $categories->skip(5)->first();
        $sixCatPostsThumb = Post::where('cat_id', $catSix->id)->where('big_thumbnail', 1)->orderBy('created_at', 'desc')->first();
        $sixCatPosts = Post::where('cat_id', $catSix->id)->Where('first_section', 1)->WhereNot('id', $fiveCatPostsThumb->id)->orderBy('created_at', 'desc')->limit(3)->get();

        // 7nd category from posts
        $sevenCat = $categories->skip(6)->first();
        $sevenCatPostsThumb = Post::where('cat_id', $sevenCat->id)->where('big_thumbnail', 1)->orderBy('created_at', 'desc')->first();
        $sevenCatPosts = Post::where('cat_id', $sevenCat->id)->Where('first_section', 1)->orderBy('created_at', 'desc')->WhereNot('id', $sevenCatPostsThumb->id)->limit(2)->get();

        // 8nd category from posts
        $eightCat = $categories->skip(7)->first();
        $eightCatPostsThumb = Post::where('cat_id', $eightCat->id)->where('big_thumbnail', 1)->orderBy('created_at', 'desc')->first();
        $eightCatPosts = Post::where('cat_id', $eightCat->id)->Where('first_section', 1)->orderBy('created_at', 'desc')->WhereNot('id', $eightCatPostsThumb->id)->limit(2)->get();

        //all country
        $countryPostThumb = Post::whereNotNull('dist_id')->orderBy('created_at', 'desc')->first();
        $getDesPost = Post::whereNotNull('dist_id')->orderBy('created_at', 'desc')->skip(1)->limit(3)->get();
        $getDesPostThree = Post::whereNotNull('dist_id')->orderBy('created_at', 'desc')->skip(4)->limit(3)->get();

        //photo gallery
        $thumbPhoto = Photo::where('type', 1)->orderBy('created_at', 'desc')->first();
        $thumbPhotoList = Photo::whereNot('id', $thumbPhoto->id)->where('type', 0)->orderBy('created_at', 'desc')->limit(10)->get();

        //video gallery
        $videoThumbGallery = Video::where('type', 1)->orderBy('created_at', 'desc')->first();
        $videoList = Video::where('type', 0)->orderBy('created_at', 'desc')->limit(10)->get();

        // the latest news
        $latest = Post::orderBy('id', 'desc')->limit(8)->get();
        $popular = Post::orderBy('id', 'desc')->inRandomOrder()->limit(8)->get();
        $highReed = Post::orderBy('id', 'ASC')->inRandomOrder()->limit(8)->get();

        // dd($catFour);

        return view('frontend.front.index', compact('categories', 'sco', 'social', 'livetv', 'namaz', 'websites', 'notice', 'first_section', 'latestPost', 'big_thumcat', 'firstCategory', 'limitpostbycat', 'secondCategory', 'secondCategoryBigThumbs', 'secondCategoryPosts', 'thirdCategory', 'thirdCategoryPostsThumb', 'thirdCatPosts', 'catFour', 'fourCatPostsThumb', 'fourCatPosts', 'catFive', 'fiveCatPostsThumb', 'fiveCatPosts', 'catSix', 'sixCatPostsThumb', 'sixCatPosts', 'sevenCat', 'sevenCatPostsThumb', 'sevenCatPosts', 'eightCat', 'eightCatPostsThumb', 'eightCatPosts', 'countryPostThumb', 'getDesPost', 'getDesPostThree', 'thumbPhoto', 'thumbPhotoList', 'videoThumbGallery', 'videoList', 'latest', 'popular', 'highReed'));
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
