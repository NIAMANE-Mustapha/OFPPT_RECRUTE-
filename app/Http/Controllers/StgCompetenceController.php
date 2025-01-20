<?php

namespace App\Http\Controllers;

use App\Models\StgCompetence;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;


class StgCompetenceController extends Controller
{

    public function store(Request $request){
        $data=$request;
        StgCompetence::create([
            'CIN'=>$data['cin'],
            'name'=>$data['name'],
        ]);
        return response()->json('competence est ajouté',200);
    }
}
