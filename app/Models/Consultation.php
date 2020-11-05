<?php

namespace App\Models;

use Auth;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class Consultation extends Model
{

protected $guarded = ['id'];
    const CONSULTATION_TYPES = [
      1 => 'Home Consultation',
      2 => 'Clinic Consultation',
      0 => 'VideoConsultation',
      3 => 'Urgentmedicaladvice_home_service',
      4 => 'Urgentmedicaladvice_video_service'
    ];

    protected $dates = [
        'created_at',
        'updated_at',
        'expired_at'
    ];
    
//    public $appends = [
//        'hahaha',
//    ];
//    
//    public function getHahahaAttribute()
//    {
//        $lang = app()->getLocale();
//        if (request()->header('lang')) {
//           $lang =  request()->header('lang');
//        }
//        if ($lang == 'ar') {
//            return $this->attributes['created_at'];
//        } else {
//            return $this->attributes['updated_at'];
//        }
//        
//    }

    public function attachments()
    {
        return $this->morphMany(Attachment::class, 'attachementable');
    }

    public function doctor_details()
    {
        return $this->belongsTo('App\Models\DoctorDetail', 'doctor_id', 'doctor_id');
    }

    public function currency()
    {
        return $this->belongsTo('App\Models\Currency');
    }


    public function coupon_doctor()
    {
        return $this->belongsTo(Doctorcoupon::class,'coupon','code');
    }

    public function type()
    {
        return $this->belongsTo('App\Models\ConsultationType');
    }

    public function doctor()
    {
        return $this->belongsTo('App\User');
    }
    
    public function reports()
    {
        return $this->hasMany('App\Models\ConsultationReport');
    }
    
    public function review()
    {
        return $this->hasOne('App\Models\ConsultationsReview', 'consultation_id');
    }
    
    public function recommended()
    {
        return $this->belongsTo('App\User', 'recommended_doctor');
    }

    public function department()
    {
        return $this->belongsTo('App\Models\Department');
    }

    public function patient()
    {
        return $this->belongsTo('App\User');
    }

    public function payments()
    {
        return $this->morphMany(Payment::class, 'payed_for');
    }

    /***************** Accessor ******************** */

    public function getIsAcceptedAttribute($value)
    {
        if ($this->type_id == 1) {
            return true;
        }
    }

    public function getIsPendingAttribute($value)
    {
        if ($this->type_id == 2) {
            return true;
        }
    }

    public function getIsRejectedAttribute($value)
    {
        if ($this->type_id == 3) {
            return true;
        }
    }

    public function getIsPaidAttribute($value)
    {
        if ($this->type_id == 4) {
            return true;
        }
    }
    
    public function getIsCancelledAttribute($value)
    {
        if ($this->type_id == 5) {
            return true;
        }
    }

    public function getIsInPastAttribute($value)
    {
        return ( $this->appointment_on_date < Carbon::now() ? true : false);
    }

    public function getIsCurrentDoctorAttribute($value)
    {
        return ( $this->doctor_id == Auth::user()->id ? true : false);
    }

    public function getIsCurrentPatientAttribute($value)
    {
        return ( $this->patient_id == Auth::user()->id ? true : false);
    }

    /***************** Mutators ******************** */

    public function setAppointmentOnAttribute($value)
    {
        $this->attributes['appointment_on_date']   =   Carbon::create($value)->format('Y-m-d H:i:s');
    }

    /***************** Scopes ******************** */
    public function scopeUpcommingAppointments($query)
    {
        return $query->where('appointment_on_date', '>=', Carbon::now());
    }

    public function scopePreviousAppointments($query)
    {
        return $query->where('appointment_on_date', '<', Carbon::now());
    }

    public function scopeAccepted($query)
    {
        return $query->whereTypeId(1); //accepted
    }

    public function scopePaid($query)
    {
        return $query->whereTypeId(4); //paid
    }

    public function scopeDoctorOrPatient($query)
    {
        if (Auth::user()->is_doctor) {
            return $query->whereDoctorId(Auth::user()->id)->with('doctor');
        }
        return $query->wherePatientId(Auth::user()->id)->with('patient');
    }

}
