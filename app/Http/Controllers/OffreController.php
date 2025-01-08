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
    public function store(Request $request){
        $validated = $request->validate([
            'post' => 'required',
            'mission' => 'required',
            'secteur' => 'required',
            'niveau' => 'required',
            'diplome' => 'required',
            'experience' => 'required',
            'ville' => 'required',
            'contract' => 'required',
            'dateexp' => 'required',
            'EntrepriseId' => 'required',
        ]);

        // Create the Offre record using mass assignment

        $newoffre = Offre::create([
            'Post' => $validated['post'],
            'EntrepriseId' => $validated['EntrepriseId'],
            'Description' => $validated['mission'],
            'SecteurId' => $validated['secteur'],
            'Niveau' => $validated['niveau'],
            'diplomeid' => $validated['diplome'],
            'Experience' => $validated['experience'],
            'Ville' => $validated['ville'],
            'Contract' => $validated['contract'],
            'Deadline' => $validated['dateexp'],
        ]);
              return $newoffre ;

    }
}
