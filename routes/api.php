<?php

use App\Http\Controllers\EntrepriseController;
use App\Http\Controllers\OffreController;
use App\Http\Controllers\ResponsableConroller;
use App\Http\Controllers\StagiaireController;
use Illuminate\Support\Facades\Route;




Route::get('/showoffre',[OffreController::class,"show"] );

Route::post('/register', [StagiaireController::class, 'store']);
Route::post('/login', [StagiaireController::class, 'login']);

Route::post('/registerEntreprise', [EntrepriseController::class, 'store']);
Route::post('/loginEntreprise', [EntrepriseController::class, 'login']);


Route::post('/registerResponsable', [ResponsableConroller::class, 'store']);

