<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Factories\HasFactory;

use Illuminate\Database\Eloquent\Model;
use Laravel\Sanctum\HasApiTokens;

class Stagiaire extends Model
{
    use HasFactory,HasApiTokens;

    // Define fillable attributes for mass assignment
    protected $fillable = [
        'StagiaireName',
        'OFPPTMail',
        'Password',
        'CIN',
        'Phone',
        'Ville',
        'Adresse',
        'Photo',
        'CV',
        'Profile',
    ];
    //
}
