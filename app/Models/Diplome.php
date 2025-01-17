<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Diplome extends Model
{
    protected $fillable=['NomDiplome','DiplomeFile','Niveau','Etablissement','AnneeDiplome','Mention','CIN'];
}
