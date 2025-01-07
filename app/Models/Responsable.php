<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Responsable extends Model
{
    protected $fillable = [
        'ResponsableName',
        'ResponsableMail',
        'ResponsableCivilite',
        'ResponsableFonction',
        'ResponsableMobile',
        'ResponsableFixe',
        'ResponsableLinkedIn'
    ];
}
