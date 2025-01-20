<?php

namespace App\Http\Controllers;

use App\Models\Experience;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ExperienceController extends Controller
{
    /**
     * Display a listing of the resource.
     */


    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $data=$request;
        Experience::create([

            'date_debut'=>$data['date_debut'],
            'date_fin'=>$data['date_fin'],
            'CIN'=>$data['cin'],
            'Titre'=>$data['titre'],
            'Duree'=>$data['duree'],
            'Mission'=>$data['mission'],
            'EntrepriseName'=>$data['entreprise'],
            'File'=>$data['certificat'],
        ]);
        return response()->json('Experience Ajouté est ajouté',200);
    }

    /**
     * Display the specified resource.
     */
    public function show(Experience $experience)
    {
        $exp=Experience::all();
        return response()->json($exp);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Experience $experience)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Experience $experience)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Experience $experience)
    {
        //
    }
}
