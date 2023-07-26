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
    public function update(Request $request, $id = null)
    {
        $request->validate([
            'facebook' => 'nullable',
            'twitter' => 'nullable',
            'youtube' => 'nullable',
            'instagram' => 'nullable',
            'linkedin' => 'nullable',
        ]);

        if (!$id) {
            $data = [
                'facebook' => $request->input('facebook'),
                'twitter' => $request->input('twitter'),
                'youtube' => $request->input('youtube'),
                'instagram' => $request->input('instagram'),
                'linkedin' => $request->input('linkedin'),
            ];

            DB::table('socials')->insert($data);
            flash()->addSuccess('Created Successful');
            return redirect()->back();
        } else {
            DB::table('socials')->where('id', $id)->update($request->only(['facebook', 'twitter', 'youtube', 'instagram', 'linkedin']));
            flash()->addSuccess('Update Successful');
            return redirect()->back();
        }
    }

    // sco settings
    public function scoSetting()
    {
        $scos = DB::table('scos')->first();
        return view('admin.modules.settings.sco', compact('scos'));
    }

    public function scoUpdate(Request $request, $id = null)
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

        if (!$id) {
            $data = [
                'meta_author' => $request->input('meta_author'),
                'meta_title' => $request->input('meta_title'),
                'meta_keyword' => $request->input('meta_keyword'),
                'meta_description' => $request->input('meta_description'),
                'google_analytics' => $request->input('google_analytics'),
                'google_verification' => $request->input('google_verification'),
                'alexa_analytics' => $request->input('alexa_analytics'),
            ];

            DB::table('scos')->insert($data);
            flash()->addSuccess('SCO created successful');
            return redirect()->back();
        } else {
            DB::table('scos')->where('id', $id)->update($request->only(['meta_author', 'meta_title', 'meta_keyword', 'meta_description', 'google_analytics', 'google_verification', 'alexa_analytics']));

            flash()->addSuccess('Update Successful');
            return redirect()->back();
        }
    }

    //namaz settings

    public function namaz()
    {
        $namaz = DB::table('namaz')->first();
        // dd($namaz);
        return view('admin.modules.settings.namaz', compact('namaz'));
    }

    public function namazUpdate(Request $request, $id = null)
    {
        // dd($request->all());
        $request->validate([
            'fajr' => 'required',
            'johr' => 'required',
            'asor' => 'required',
            'magrib' => 'required',
            'esha' => 'required',
            'jummah' => 'required',
        ]);

        if (!$id) {
            $data = [
                'fajr' => $request->input('fajr'),
                'johr' => $request->input('johr'),
                'asor' => $request->input('asor'),
                'magrib' => $request->input('magrib'),
                'esha' => $request->input('esha'),
                'jummah' => $request->input('jummah'),
            ];

            DB::table('namaz')->insert($data);
            flash()->addSuccess('Namaz timings Create successfully.');
            return redirect()->back();
        } else {
            DB::table('namaz')->where('id', $id)->update($request->only(['fajr', 'johr', 'asor', 'magrib', 'esha', 'jummah']));
            flash()->addSuccess('Update Successful');
            return redirect()->back();
        }
    }

    // Live Tv setting
    public function live()
    {
        $livetv = DB::table('livetv')->first();
        // dd($livetv);
        return view('admin.modules.settings.livetv', compact('livetv'));
    }
    public function liveUpdate(Request $request, $id = null)
    {

        $request->validate([
            'embed_code' => 'nullable',
        ]);

        if (!$id) {
            DB::table('livetv')->insert(['embed_code' => $request->input('embed_code'),]);
            flash()->addSuccess('New data created successfully.');
            return redirect()->back();
        } else {
            DB::table('livetv')->where('id', $id)->update($request->only(['embed_code']));

            flash()->addSuccess('Embed Code updated Successful');
            return redirect()->back();
        }
    }
    // livetv active
    public function LiveActive($id = null)
    {
        // dd($id);
        if (!$id) {
            flash()->addError('The Embed Code field is required when no other timings are provided.');
            return redirect()->back();
        } else {
            DB::table('livetv')->where('id', $id)->update(['status' => 1]);
            flash()->addSuccess('Live TV on your website');
            return redirect()->back();
        }
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
    public function noticeUpdate(Request $request, $id = null)
    {
        $request->validate([
            'notice' => 'required',
            'notice_bn' => 'required',
        ]);
        // dd($request->all());
        if (!$id) {
            DB::table('notices')->insert([
                'notice' => $request->input('notice'),
                'notice_bn' => $request->input('notice_bn'),
            ]);
            flash()->addSuccess('New notice created successfully.');
            return redirect()->back();
        } else {
            DB::table('notices')->where('id', $id)->update($request->only(['notice', 'notice_bn']));
            flash()->addSuccess('Notice updated Successful');
            return redirect()->back();
        }
    }
    // notice active
    public function noticeActive($id = null)
    {

        if (!$id) {
            flash()->addError('You need to notice it first');
            return redirect()->back();
        } else {
            // dd($id);
            DB::table('notices')->where('id', $id)->update(['status' => 1]);
            flash()->addSuccess('Notice active your website.');
            return redirect()->back();
        }
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
