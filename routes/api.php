<?php

use App\Http\Controllers\CandidatureController;
use App\Http\Controllers\EntrepriseController;
use App\Http\Controllers\ExperienceController;
use App\Http\Controllers\OffreController;
use App\Http\Controllers\ResponsableConroller;
use App\Http\Controllers\StagiaireController;
use App\Http\Controllers\DiplomeController;
use App\Http\Controllers\LangueController;
use Illuminate\Support\Facades\Route;





Route::get('/showoffre',[OffreController::class,"show"] );
Route::post('/candidatures', [StagiaireController::class,'candidaturesWithOffres']);
Route::post('/showlangues', [StagiaireController::class,'showLangues']);
Route::post('/showdiplomes', [StagiaireController::class,'showDiplomes']);
Route::post('/showexpers', [StagiaireController::class,'showExperience']);
Route::post('/addoffre',[OffreController::class,"store"] );
Route::post('/addcandidature',[CandidatureController::class,"store"] );
Route::post('/entrepriseOffre',[EntrepriseController::class,"entrepriseOffre"] );
Route::post('/registerResponsable',[ResponsableConroller::class,"store"] );

Route::get('/offrecandidature',[OffreController::class,"candidature"] );

/* experience */

/* Route::get('/show', [ExperienceController::class,'show']); */
Route::middleware('auth:sanctum')->post('/addexperience', [ExperienceController::class,'store']);

/* diplome */
/* Route::get('/showDiplome', [DiplomeController::class,'show']); */
Route::middleware('auth:sanctum')->post('/storeDiplome', [DiplomeController::class,'store']);

/* langues */
/* Route::get('/showLangue', [LangueController::class,'show']); */
Route::middleware('auth:sanctum')->post('/storeLangue', [LangueController::class,'store']);
Route::get('/offredetail/{OffreId}', [OffreController::class, 'Offredetail']);

Route::post('/register', [StagiaireController::class, 'store']);
Route::post('/login', [StagiaireController::class, 'login']);
Route::middleware('auth:sanctum')->put('/update', [StagiaireController::class, 'update']);

Route::post('/registerEntreprise', [EntrepriseController::class, 'store']);
Route::post('/loginEntreprise', [EntrepriseController::class, 'login']);


