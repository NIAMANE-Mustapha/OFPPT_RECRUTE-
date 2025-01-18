<?php

namespace App\Http\Controllers;

use App\Models\Secteur;
use Illuminate\Http\Request;

class SecteurController extends Controller
{
    public function show(){
        $secteur=Secteur::all();
        return response()->json($secteur);
    }
}
