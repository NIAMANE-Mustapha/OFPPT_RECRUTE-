<?php

namespace App\Http\Controllers;

use App\Models\Diplome;
use Illuminate\Http\Request;

class DiplomeController extends Controller
{
    public function show(){
        $diplomes=Diplome::all();
        return response()->json($diplomes,200);
    }

    public function store(Request $request)
    {
        $data=$request;
        Diplome::create([
            'CIN'=>$data['cin'],
            'NomDiplome'=>$data['diplome'],
            'DiplomeFile'=>$data['file'],
            'Niveau'=>$data['niveau'],
            'Etablissement'=>$data['etab'],
            'AnneeDiplome'=>$data['anne'],
            'Mention'=>$data['mention'],
            'SecteurID'=>$data['SecteurID']
        ]);
        return response()->json('diplome est ajouté',200);
    }
}
