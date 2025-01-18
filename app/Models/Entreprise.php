<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Laravel\Sanctum\HasApiTokens;

class Entreprise extends Model
{
    use HasFactory,HasApiTokens;
    protected $fillable = [
        'TypeIdentifiant',
        'Identifiant',
        'E_Name',
        'ResponsableId',
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
    public function offres(){
        return $this->hasMany(Offre::class,'EntrepriseId','Identifiant');
    }
    public function responsable(){
        return $this->hasOne(Responsable::class,'EntrepriseId','Identifiant');

    }
}
