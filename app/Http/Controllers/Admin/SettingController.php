<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Auth\Events\Validated;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SettingController extends Controller
{

    // socials settings
    public function socials()
    {
        $socialLinks = DB::table('socials')->first();
        return view('admin.modules.settings.social', compact('socialLinks'));
    }
    public function update(Request $request, $id)
    {
        $request->validate([
            'facebook' => 'nullable',
            'twitter' => 'nullable',
            'youtube' => 'nullable',
            'instagram' => 'nullable',
            'linkedin' => 'nullable',
        ]);

        DB::table('socials')->where('id', $id)->update($request->only(['facebook', 'twitter', 'youtube', 'instagram', 'linkedin']));

        flash()->addSuccess('Update Successful');
        return redirect()->back();
    }

    // sco settings
    public function scoSetting()
    {
        $scos = DB::table('scos')->first();
        return view('admin.modules.settings.sco', compact('scos'));
    }

    public function scoUpdate(Request $request, $id)
    {
        // dd($request->all());
        $request->validate([
            'meta_author' => 'nullable',
            'meta_title' => 'nullable',
            'meta_keyword' => 'nullable',
            'meta_description' => 'nullable',
            'google_analytics' => 'nullable',
            'google_verification' => 'nullable',
            'alexa_analytics' => 'nullable',
        ]);

        DB::table('scos')->where('id', $id)->update($request->only(['meta_author', 'meta_title', 'meta_keyword', 'meta_description', 'google_analytics', 'google_verification', 'alexa_analytics']));

        flash()->addSuccess('Update Successful');
        return redirect()->back();
    }

    //namaz settings

    public function namaz()
    {
        $namaz = DB::table('namaz')->first();
        // dd($namaz);
        return view('admin.modules.settings.namaz', compact('namaz'));
    }

    public function namazUpdate(Request $request, $id)
    {
        // dd($request->all());
        $request->validate([
            'fajr' => 'nullable',
            'johr' => 'nullable',
            'asor' => 'nullable',
            'magrib' => 'nullable',
            'esha' => 'nullable',
            'jummah' => 'nullable',
        ]);

        DB::table('namaz')->where('id', $id)->update($request->only(['fajr', 'johr', 'asor', 'magrib', 'esha', 'jummah']));

        flash()->addSuccess('Update Successful');
        return redirect()->back();
    }

    // Live Tv setting
    public function live()
    {
        $livetv = DB::table('livetv')->first();
        // dd($livetv);
        return view('admin.modules.settings.livetv', compact('livetv'));
    }
    public function liveUpdate(Request $request, $id)
    {
        $request->validate([
            'embed_code' => 'nullable',
        ]);
        DB::table('livetv')->where('id', $id)->update($request->only(['embed_code']));

        flash()->addSuccess('Embed Code updated Successful');
        return redirect()->back();
    }
    // livetv active
    public function LiveActive($id)
    {
        // dd($id);
        DB::table('livetv')->where('id', $id)->update(['status' => 1]);
        flash()->addSuccess('Live TV on your website');
        return redirect()->back();
    }
    // deactivate
    public function LiveDeactivate($id)
    {
        // livetv dd($id);
        DB::table('livetv')->where('id', $id)->update(['status' => 0]);
        flash()->addSuccess('Live TV off your website');
        return redirect()->back();
    }


    // notices settings
    public function notice()
    {
        $notice = DB::table('notices')->first();
        // dd($notice);
        return view('admin.modules.settings.notice', compact('notice'));
    }
    // notice update
    public function noticeUpdate(Request $request, $id)
    {
        $request->validate([
            'notice' => 'nullable',
        ]);
        DB::table('notices')->where('id', $id)->update($request->only(['notice']));

        flash()->addSuccess('Notice updated Successful');
        return redirect()->back();
    }
    // notice active
    public function noticeActive($id)
    {
        // dd($id);
        DB::table('notices')->where('id', $id)->update(['status' => 1]);
        flash()->addSuccess('Notice active your website.');
        return redirect()->back();
    }
    // notice deactivate
    public function noticeDeactivate($id)
    {
        // dd($id);
        DB::table('notices')->where('id', $id)->update(['status' => 0]);
        flash()->addSuccess('Notice off your website');
        return redirect()->back();
    }
}
