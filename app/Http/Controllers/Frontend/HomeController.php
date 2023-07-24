<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Admin\Category;
use Illuminate\Support\Facades\DB;
use Session;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        $categories = Category::orderBy('id', 'ASC')->get();
        $sco = DB::table('scos')->first();
        // dd($subcategories);
        return view('frontend.front.index', compact('categories', 'sco'));
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
