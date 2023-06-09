<?php

use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\DistrictController;
use App\Http\Controllers\Admin\PostController;
use App\Http\Controllers\Admin\SubCategoryController;
use App\Http\Controllers\Admin\SubDistrictController;

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
});



Route::post('/logout', function () {
    Auth::logout();
    return redirect('/login');
})->name('logout');
