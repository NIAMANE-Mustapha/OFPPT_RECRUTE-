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
        'Pays',
        'Post',
        'Description',
        'Experience',
        'Annoncement',
        'diplomeid',
        'NomEntreprise',
        'EntrepriseId',
    ];
}
