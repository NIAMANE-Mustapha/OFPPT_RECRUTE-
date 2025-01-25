<?php

namespace App\Http\Controllers;

use App\Models\Entreprise;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class ENtrepriseController extends Controller
{
    public function store(Request $request){
        $validated = $request->validate([
            'identifiantType' => 'required',
            'identifiant'=>'required',
            'eName' => 'required',
            'adresse' => 'required',
            'ville' => 'required',
            'secteur' => 'required',
            'pays' => 'required',
            'password' => 'required',
            'nbEmployer' => 'required',
            'siteInternet'=>'required',
            'email'=>'required',
            'ResponsableId'=>'required',
        ]);

        // Create the Stagiaire record using mass assignment
        $newetps = Entreprise::create([
            'TypeIdentifiant' => $validated['identifiantType'],
            'Identifiant' => $validated['identifiant'],
            'E_Name' => $validated['eName'],
            'Email' => $validated['email'],
            'Adresse' => $validated['adresse'],
            'Password' => bcrypt($validated['password']),
            'Logo' => $request['logo'],
            'SiteInternet' => $validated['siteInternet'],
            'Ville' => $validated['ville'],
            'Pays' => $validated['pays'],
            'Secteur' => $validated['secteur'],
            'NbEmployer' => $validated['nbEmployer'],
            'ResponsableId' => $validated['ResponsableId'],
        ]);
              return $newetps ;

    }
    public function login(Request $request){

        $entlog=Entreprise::where('Email', $request['email'])->first();
        if(!$entlog){
            return response()->json('email not found',201);
        }
        if(Hash::check($request['password'],$entlog['Password'])){
            $token=$entlog->createToken('main')->plainTextToken;
            return response()->json([
                'entlog'=>$entlog,
                'token'=>$token,
            ]);
        }
        /* if($request['password']!=$entlog['Password']){
            return  response()->json(['msg'=>'not success',$entlog],200);
        } */
        /* if($entlog['Password']==$request['password']){
            $token=$entlog->createToken('main')->plainTextToken;
            return response()->json([
                'entlog'=>$entlog,
                'token'=>$token,
            ]);
        } */
    }
    public function entrepriseOffre(Request $request){
       $myoffres=Entreprise::where('Identifiant',$request['Identifiant'])->first()->offres;
       return response()->json($myoffres);
    }
    public function showResponsable(Request $request)
    {
        $experience=Entreprise::where('Identifiant',$request['id'])->first()->responsable;
        return response()->json($experience,200);
    }



}


