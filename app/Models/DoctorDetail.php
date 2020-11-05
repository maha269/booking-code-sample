<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use Carbon\Carbon;
use Illuminate\Support\Facades\Request;
use Mcamara\LaravelLocalization\Facades\LaravelLocalization;

class DoctorDetail extends Model
{

    protected $table = 'doctor_details';

    protected $guarded = ['id'];

    const DAYS_en = ["Saturday", "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday"];
    const DAYS_ar = ["السبت", "الاحد", "الاثنين", "الثلاثاء", "الاربعاء", "الخميس", "الجمعه"];

    public $appends = [
        'online_status','cv','cv2','cv3'
    ];

    public function  scopeConstlationPrice($query,$type)
    {

        if ($type == 1){
            return $this->home_price;

        }
        if ($type == 2){
            return $this->clinic_price;
        }

        if ($type == 0){
            return $this->VideoConsultationprice;
        }

        if ($type == 3){
            return $this->Urgentmedicaladvice_home;
        }

        if ($type == 4){
            return $this->Urgentmedicaladvice_video;
        }
    }
    public function getOnlineStatusAttribute()
    {
        if ($this->attributes['profile_status'] == 0 || $this->attributes['last_activity'] == null) {
            return 0;
        }

        $date = Carbon::parse($this->attributes['last_activity']);
        $now = Carbon::now();

        $diff = $now->diffInSeconds($date);

        if ($diff >= 900) return 0;
        else return 1;

    }

    public function doctor()
    {
        return $this->belongsTo(User::class, 'doctor_id');
    }

    public function currency()
    {
        return $this->belongsTo('App\Models\Currency', 'currency_id');
    }

    public function template()
    {
        return $this->belongsTo(Template::class);
    }

    public function region()
    {
        return $this->belongsTo(Region::class);
    }

    public function getAppointmentsAttribute($value)
    {
        if(gettype($value) != 'string') {
            return $value;
        }
        return json_decode($value);
    }

    public function getAppointmentsParsedAttribute()
    {
        return $this->parseDoctorAppointment($this->appointments);
    }

    public function parseDoctorAppointment($appointments)
    {
        $parsedAppointments = [];
        $lang = app()->getLocale();
        if (request()->header('lang')) {
           $lang =  request()->header('lang');
        }
        if (gettype($appointments) == 'object' && property_exists($appointments, 'days')) {
            if ($appointments->days != "") {
                foreach ($appointments->days as $key => $day) {
                    $parsedAppointments[] = __('weekDays.'.$day, [], $lang) . " " .
                        __('from', [], $lang) . " " . $appointments->am->from_am . " " .
                        __('to', [], $lang) . " " . $appointments->am->to_am . " " . __('am', [], $lang). __('and', [], $lang) . " " . __('from', [], $lang) . " " . $appointments->pm->from_pm . " " . __('to', [], $lang) . " " . $appointments->pm->to_pm  . " " . __('pm', [], $lang);
                    //$parsedAppointments[] = __('weekDays.'.$day, [], $lang) . " " . __('from', [], $lang) . " " . $appointments->pm->from_pm . " " . __('to', [], $lang) . " " . $appointments->pm->to_pm  . " " . __('pm', [], $lang);
                }
            }
            return $parsedAppointments;
        } else {
            //dd((object)$appointments);
            return $appointments;
        }


        return $parsedAppointments;
    }


    public function getCvAttribute()
    {
        $lang = LaravelLocalization::getCurrentLocale();

        if (request()->header('lang')) {
            $lang =  request()->header('lang');
        }
        if ($lang == 'ar') {
            return $this->attributes['cv_ar'];
        } else {
            return $this->attributes['cv_en'];
        }

    }
    public function getCv2Attribute()
    {
        $lang = LaravelLocalization::getCurrentLocale();
        if (request()->header('lang')) {
            $lang =  request()->header('lang');
        }
        if ($lang == 'ar') {
            return $this->attributes['cv2_ar'];
        } else {
            return $this->attributes['cv2_en'];
        }

    }
    public function getCv3Attribute()
    {
        $lang = LaravelLocalization::getCurrentLocale();
        if (request()->header('lang')) {
            $lang =  request()->header('lang');
        }
        if ($lang == 'ar') {
            return $this->attributes['cv3_ar'];
        } else {
            return $this->attributes['cv3_en'];
        }

    }
    public static function boot()
    {
        parent::boot();

        static::creating(function($table)
        {
            $table->link_name = str_random(32);
        });
    }
}
