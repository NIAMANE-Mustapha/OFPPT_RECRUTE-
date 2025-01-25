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
            'NomEntreprise' => 'required',
            'Annoncement' => 'required',
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
            'NomEntreprise' => $validated['NomEntreprise'],
            'Type' => $validated['contract'],
            'Deadline' => $validated['dateexp'],
            'Annoncement' => $validated['Annoncement'],
        ]);
              return $newoffre ;

    }
    public function candidature(Request $request){
        $offre=Offre::with(['candidature.stagiaire'])->where('OffreId',$request['OffreId'])->first()->candidature;
        dd($offre);
    }
    public function offresWithLaureat(Request $request)
    {
        $stagiaire = Offre::with(['candidatures.stagiaire'])->where('OffreId', $request['id'])->first();

        if (!$stagiaire) {
            return response()->json(['error' => 'Stagiaire non trouvé'], 404);
        }

        return response()->json($stagiaire, 200);
    }
}

