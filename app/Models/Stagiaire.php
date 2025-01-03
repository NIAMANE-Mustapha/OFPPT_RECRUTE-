<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Factories\HasFactory;

use Illuminate\Database\Eloquent\Model;

class Stagiaire extends Model
{
    use HasFactory;

    // Define fillable attributes for mass assignment
    protected $fillable = [
        'StagiaireName',
        'OFPPTMail',
        'Password',
        'CIN',
        'Phone',
        'Ville',
        'Adresse'
    ];
    //
}
