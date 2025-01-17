<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Candidature extends Model
{
    protected $fillable=['CIN','OffreId'];

    public function offre(){
        return $this->belongsTo(Offre::class,'OffreId','OffreId');
    }
    public function stagiaire(){
        return $this->belongsTo(Stagiaire::class,'CIN','CIN');
    }
}
