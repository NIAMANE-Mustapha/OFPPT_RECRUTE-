<?php

namespace App\Http\Controllers;

use App\Models\Stagiaire;
use App\Models\Stg;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
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
    public function login(Request $request)
    {
        $data=$request->validate([
            'email'=>'required|email',
            'password'=>'required',
        ]);
        $user=Stagiaire::where('OFPPTMail',$data['email'])->first();
        if(!$user){
            return response()->json(['msg'=>'email not found'],401);
        }
        if($user['Password']==$data['password']){
            $token=$user->createToken('main')->plainTextToken;
            return response()->json([
                'stg'=>$user,
                'token'=>$token,
            ]);
        }else {
            return response()->json([
                'msg'=>'mot de passe incorrecte',
            ]);
        }
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Stagiaire $stagiaire)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request)
    {
        $stagiaire=Auth::user();
        if(!$stagiaire){
            return response()->json(['msg'=>'non connecté']);
        }

        $validated=$request->validate([
            'Phone'=>'nullable|string|min:1|max:15',
            'Adresse'=>'nullable|string|max:40',
            'Profile'=>'nullable|string|max:255',
            'Photo'=>'nullable',
        ]);

        $stagiaire->update($validated);
        return response()->json([
            'stg'=>$stagiaire,
            'msg'=>'profile est modifié',
        ],200);

    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Stagiaire $stagiaire)
    {
        //
    }
}
