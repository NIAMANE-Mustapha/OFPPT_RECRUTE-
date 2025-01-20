<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class Stagiaire extends Model
{
    use HasFactory, Notifiable,HasApiTokens;
    protected $fillable=['CIN','StagiaireName','Ville','Adresse','Phone','OFPPTMail','Password','Photo','Profile','CV','MotivationLetter','Competences'];

    public function candidatures(){
        return $this->hasMany(Candidature::class,'CIN','CIN');
    }

    public function langues()  {
        return $this->hasMany(Langue::class,'CIN','CIN');
    }

    public function diplomes()  {
        return $this->hasMany(Diplome::class,'CIN','CIN');
    }

    public function experiences()  {
        return $this->hasMany(Experience::class,'CIN','CIN');
    }
    public function competences()  {
        return $this->hasMany(StgCompetence::class,'CIN','CIN');
    }

}
