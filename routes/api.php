<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\DeviceController;

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


Route::post('/login', [AuthController::class, 'login']);
Route::post('/refresh-token', [AuthController::class, 'refreshToken']);

Route::middleware('auth:sanctum')->group(function () {

    // Get a single user by ID
    Route::get('/users/{id}', [UserController::class, 'show']);

    // Create a new user
    Route::post('/insert-user', [UserController::class, 'store']);

    
    // Get user devices 
    Route::get('/user/devices', [DeviceController::class, 'getUserDevices']);

    // Get single device info
    Route::get('/devices/{id}', [DeviceController::class, 'show']);
    
});
