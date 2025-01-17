<?php

namespace App\Http\Controllers;

use App\Models\Candidature;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Request as FacadesRequest;

class CandidatureController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $candidature=Candidature::all();
        return response()->json($candidature,200);
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
        Candidature::create([
            'CIN'=>$request['cin'],
            'OffreId'=>$request['offreid'],
        ]);
        return response()->json(['msg'=>'vous avez postulé a cette offre'],200);
    }

    /**
     * Display the specified resource.
     */
    public function show(Request $request)
    {
        $candidature=Candidature::find($request['id'])->offre;
        return response()->json($candidature,200);

    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Candidature $candidature)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Candidature $candidature)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Candidature $candidature)
    {
        //
    }
}
