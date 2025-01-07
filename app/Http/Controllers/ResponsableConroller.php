<?php

namespace App\Http\Controllers;

use App\Models\Responsable;
use Illuminate\Http\Request;

class ResponsableConroller extends Controller
{
    public function store(Request $request){
        $validated = $request->validate([
            'responsableCivilite' => 'required',
            'responsableName'=>'required',
            'responsableFonction' => 'required',
            'responsableLinkedIn' => 'required',
            'responsableFixe' => 'required',
            'responsableMobile' => 'required',
            'ResponsableId'=>'required',
        ]);
        $newresponsable = Responsable::create([
            'ResponsableName' => $validated['responsableName'],
            'ResponsableCivilite' => $validated['responsableCivilite'],
            'ResponsableFonction' => $validated['responsableFonction'],
            'ResponsableMobile' => $validated['responsableMobile'],
            'ResponsableFixe' => ($validated['responsableFixe']),
            'ResponsableLinkedIn' => $validated['responsableLinkedIn'],
            'ResponsableId' => $validated['ResponsableId'],

        ]);
              return $newresponsable ;
    }
}
