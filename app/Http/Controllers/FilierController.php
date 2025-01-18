<?php

namespace App\Http\Controllers;

use App\Models\Filiere;
use Illuminate\Http\Request;

class FilierController extends Controller
{
    public function show(){
        $Filiere=Filiere::all();
        return response()->json($Filiere);
    }
}
