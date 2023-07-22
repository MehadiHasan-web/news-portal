<?php

use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\DistrictController;
use App\Http\Controllers\Admin\PhotoController;
use App\Http\Controllers\Admin\PostController;
use App\Http\Controllers\Admin\SettingController;
use App\Http\Controllers\Admin\SubCategoryController;
use App\Http\Controllers\Admin\SubDistrictController;
use App\Http\Controllers\Admin\VideoController;
use App\Http\Controllers\Admin\WebsiteController;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

// Route::middleware([
//     'auth:sanctum',
//     config('jetstream.auth_session'),
//     'verified'
// ])->group(function () {
//     Route::get('/dashboard', function () {
//         return view('dashboard');
//     })->name('dashboard');
// });


Route::prefix('dashboard')->middleware(['auth'])->group(function () {
    Route::get('/', function () {
        return view('admin/includes/dashboard');
    })->name('dashboard');
    Route::resource('category', CategoryController::class);
    Route::get('subcategories/{categoryId}', [SubCategoryController::class, 'getSubcategories']);
    Route::resource('subcategory', SubCategoryController::class);
    Route::get('subdistricts/{districtId}', [SubDistrictController::class, 'getSubdistricts']);
    Route::resource('district', DistrictController::class);
    Route::resource('subdistrict', SubDistrictController::class);
    Route::resource('post', PostController::class);
    //social setting
    Route::get('settings/social', [SettingController::class, 'socials'])->name('settings.social');
    Route::post('settings/social/update/{id?}', [SettingController::class, 'update'])->name('settings.update');
    //sco setting
    Route::get('settings/sco', [SettingController::class, 'scoSetting'])->name('settings.sco');
    Route::post('settings/sco/update/{id?}', [SettingController::class, 'scoUpdate'])->name('settings.scoUpdate');
    //namaz
    Route::get('settings/namaz', [SettingController::class, 'namaz'])->name('settings.namaz');
    Route::post('settings/namaz/update/{id?}', [SettingController::class, 'namazUpdate'])->name('settings.namazUpdate');

    //Live Tv
    Route::get('settings/live', [SettingController::class, 'live'])->name('settings.live');
    Route::put('settings/live/update/{id?}', [SettingController::class, 'liveUpdate'])->name('settings.liveUpdate');
    Route::get('settings/live/active/{id?}', [SettingController::class, 'LiveActive'])->name('settings.LiveActive');
    Route::get('settings/live/deactivate/{id}', [SettingController::class, 'LiveDeactivate'])->name('settings.LiveDeactivate');
    // notices
    Route::get('settings/notice', [SettingController::class, 'notice'])->name('settings.notice');
    Route::put('settings/notice/update/{id?}', [SettingController::class, 'noticeUpdate'])->name('settings.noticeUpdate');
    Route::get('settings/notice/active/{id?}', [SettingController::class, 'noticeActive'])->name('settings.noticeActive');
    Route::get('settings/notice/deactivate/{id}', [SettingController::class, 'noticeDeactivate'])->name('settings.noticeDeactivate');
    // important website
    Route::resource('importantWebsite', WebsiteController::class);
    //photo gallery
    Route::resource('photo', PhotoController::class);
    Route::resource('video', VideoController::class);
});



Route::post('/logout', function () {
    Auth::logout();
    return redirect('/login');
})->name('logout');
