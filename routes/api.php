<?php

use App\Http\Controllers\EntrepriseController;
use App\Http\Controllers\ExperienceController;
use App\Http\Controllers\OffreController;
use App\Http\Controllers\ResponsableConroller;
use App\Http\Controllers\StagiaireController;
use Illuminate\Support\Facades\Route;




Route::get('/showoffre',[OffreController::class,"show"] );
Route::get('/showexperience',[ExperienceController::class,"show"] );
Route::post('/addoffre',[ExperienceController::class,"store"] );
Route::post('/addoffre',[OffreController::class,"store"] );

Route::post('/register', [StagiaireController::class, 'store']);
Route::post('/login', [StagiaireController::class, 'login']);
Route::middleware('auth:sanctum')->put('/update', [StagiaireController::class, 'update']);

Route::post('/registerEntreprise', [EntrepriseController::class, 'store']);
Route::post('/loginEntreprise', [EntrepriseController::class, 'login']);


