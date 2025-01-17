<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Offre extends Model
{
    //
    protected $fillable = [
        'Type',
        'Niveau',
        'SecteurId',
        'Ville',
        'OffreId',
        'Pays',
        'Post',
        'Deadline',
        'Description',
        'Experience',
        'Annoncement',
        'diplomeid',
        'NomEntreprise',
        'EntrepriseId',
    ];
    public function candidature(){
        return $this->hasMany(Candidature::class,'OffreId','OffreId');
    }
}
