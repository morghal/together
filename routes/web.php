<?php

use Illuminate\Foundation\Application;
use Illuminate\Support\Facades\Route;
use \App\Models\Activity;
use Inertia\Inertia;
use \App\Http\Controllers\ActivitiesController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    //return Inertia::render('Index');
    return Inertia::render('Welcome', [
        'canLogin' => Route::has('login'),
        'canRegister' => Route::has('register'),
        'laravelVersion' => Application::VERSION,
        'phpVersion' => PHP_VERSION,
    ]);
});



Route::get('/profile', function () {
    return Inertia::render('TemplateProfile');
});

Route::get('/editprofile', function () {
    return Inertia::render('EditProfile');
});

Route::get('/list', [ActivitiesController::class, 'list']);

Route::get('/filter', function () {
    return Inertia::render('Filter');
});



Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified',
])->group(function () {
    Route::get('/dashboard', [ActivitiesController::class, 'dashboard'])->name('dashboard');
    Route::get('/infos/{activity}', [ActivitiesController::class, 'show'])->name('show');
    Route::get('/edit/{activity}', [ActivitiesController::class, 'edit']);
    Route::get('/create', [ActivitiesController::class, 'create'])->name('create');
    Route::post('/store/{activity}', [ActivitiesController::class, 'store'])->name('store');
    Route::patch('/update/{activity}', [ActivitiesController::class, 'update'])->name('update');
    Route::delete('/delete/{activity}', [ActivitiesController::class, 'destroy'])->name('destroy');
});
