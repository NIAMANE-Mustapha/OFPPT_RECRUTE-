<?php

namespace App\Http\Controllers;

use App\Models\Competence;
use Illuminate\Http\Request;

class CompetenceController extends Controller
{
    public function show(){
        $competence=Competence::all();
        return response()->json($competence);
    }
}
