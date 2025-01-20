<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Experience extends Model
{
    protected $fillable =[
        'Titre',
        'Duree',
        'Mission',
        'File',
        'EntrepriseName',
        'CIN',
        'date_fin',
        'date_debut',
    ];


}
