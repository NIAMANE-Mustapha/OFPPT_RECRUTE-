<?php

namespace App\Http\Controllers;

use App\Models\Offre;
use Illuminate\Http\Request;

class OffreController extends Controller
{
    public function show(Request $request){
        $allOffres=Offre::all();
        return response()->json(['offres'=>$allOffres]);

    }
}
