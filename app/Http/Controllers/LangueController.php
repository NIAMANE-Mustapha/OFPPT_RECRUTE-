<?php

namespace App\Http\Controllers;

use App\Models\Langue;
use Illuminate\Http\Request;

class LangueController extends Controller
{
    public function show(){
        $langues=Langue::all();
        return response()->json($langues,200);
    }
    public function store(Request $request){
        $data=$request;
        Langue::create([
            'CIN'=>$data['cin'],
            'LangueName'=>$data['langue'],
            'Certificat'=>$data['file'],
            'Niveau'=>$data['level'],
        ]);
        return response()->json('langue est ajouté',200);
    }
}
