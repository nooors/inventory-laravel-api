<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\BrandController;
use App\Http\Controllers\BrandModelController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ColorController;
use App\Http\Controllers\FamilyController;
use App\Http\Controllers\GarmentController;
use App\Http\Controllers\SizeController;
use App\Http\Controllers\SuplierController;
use App\Http\Controllers\UserController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::resource('garment', GarmentController::class);
Route::resource('brand-model', BrandModelController::class);
Route::resource('category', CategoryController::class);
Route::resource('color', ColorController::class);
Route::resource('family', FamilyController::class);
Route::resource('size', SizeController::class);
Route::resource('suplier', SuplierController::class);
Route::resource('user', UserController::class);
Route::resource('brands', BrandController::class);
