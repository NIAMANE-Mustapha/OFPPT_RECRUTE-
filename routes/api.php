<?php

use App\Http\Controllers\StagiaireController;
use Illuminate\Support\Facades\Route;




Route::get('/showstgs',[StagiaireController::class,"show"] );
Route::post('/register', [StagiaireController::class, 'store']);
Route::post('/login', [StagiaireController::class, 'login']);

