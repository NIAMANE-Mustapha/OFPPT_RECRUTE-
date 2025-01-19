<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Diplome extends Model
{
    protected $fillable=['NomDiplome','DiplomeFile','SecteurID','Niveau','Etablissement','AnneeDiplome','Mention','CIN'];

    public function secteurs()  {
        return $this->hasOne(Secteur::class,'SecteurID','id');
    }

}
