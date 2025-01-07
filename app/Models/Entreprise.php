<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Entreprise extends Model
{
    protected $fillable = [
        'TypeIdentifiant',
        'Identifiant',
        'E_Name',
        'Email',
        'Adresse',
        'Password',
        'Logo',
        'SiteInternet',
        'Ville',
        'Pays',
        'Secteur',
        'NbEmployer',
    ];
}
