<?php

namespace App\Http\Controllers;

use App\Models\Stagiaire;
use App\Models\Stg;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class StagiaireController extends Controller
{
    public function show(){
        $allatg=Stagiaire::all();
        return $allatg->toJson();
    }

    public function store(Request $request){
        $validated = $request->validate([
            'name' => 'required',
            'email' => 'required',
            'adr' => 'required',
            'ville' => 'required',
            'phone' => 'required',
            'password' => 'required',
            'cin' => 'required',
        ]);

        // Create the Stagiaire record using mass assignment
        $newstg = Stagiaire::create([
            'StagiaireName' => $validated['name'],
            'OFPPTMail' => $validated['email'],
            'Phone' => $validated['phone'],
            'Ville' => $validated['ville'],
            'Adresse' => $validated['adr'],
            'Password' => bcrypt($validated['password']),
            'CIN' => $validated['cin']
        ]);
              return $newstg ;

    }
    public function login(Request $request){

            $stglog=Stagiaire::where('OFPPTMail', $request['email'])->first();
            if(!$stglog){
                return response()->json('email not found',201);
            }
            /* if(Hash::check($request['password'])==$stglog['Password']){
                return  response()->json('you success',200);
            } */
            if($request['password']==$stglog['Password']){
                return  response()->json('you success',200);
            }

    }

}
