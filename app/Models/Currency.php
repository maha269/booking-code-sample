<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Currency extends Model
{
    public function consultations(){
        return $this->hasMany('App\Models\Consultation');
    }
    public function details()
    {
        return $this->hasOne(DoctorDetail::class);
    }
}
