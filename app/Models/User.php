<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;

class User extends Authenticatable
{
    use  Notifiable;

    /** @const PATIENT_ROLE_ID integer */
    const PATIENT_ROLE_ID = 3;
    /** @const DOCTOR_ROLE_ID integer */
    const DOCTOR_ROLE_ID = 2;
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $guarded = ['id'];



    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function blogs()
    {
        return $this->morphMany(Blog::class, 'writable');
    }

    public function role()
    {
        return $this->belongsTo(Role::class);
    }

    public function country()
    {
        return $this->belongsTo(Country::class);
    }

    public function reports()
    {
        return $this->hasMany('App\Nodels\ConsultationReport');
    }

    public function department()
    {
        return $this->belongsTo(Department::class);
    }

    public function videos()
    {
        return $this->hasMany(VideoLibrary::class, 'user_id');
    }

    public function Services()
    {
        return $this->hasMany(services::class, 'user_id');
    }
    public function conversationAsUser1()
    {
        return $this->morphMany(Conversation::class, 'user1');
    }

    public function conversationAsUser2()
    {
        return $this->morphMany(Conversation::class, 'user2');
    }

    public function messages()
    {
        return $this->morphMany(Message::class, 'sender');
    }

    public function details()
    {
        return $this->hasOne(DoctorDetail::class, 'doctor_id');
    }

    public function doctorReviews()
    {
        return $this->hasMany(Review::class, 'doctor_id')->with('doctor', 'patient');
    }

    public function patientReviews()
    {
        return $this->hasMany(Review::class, 'patient_id');
    }

    public function contacts()
    {
        return $this->hasMany('App\Models\DContact', 'doctor_id');
    }

    public function galleries()
    {
        return $this->hasMany('App\Models\DGallery', 'doctor_id');
    }

    public function notiTokens()
    {
        return $this->hasMany(NotiToken::class, 'user_id');
    }

//    public function doctorFavorite()
//    {
//        return $this->hasMany(Favorite::class, 'doctor_id');
//    }

    public function patientFavoriteList()
    {
        return $this->hasMany(Favorite::class, 'patient_id');
    }
//    public function vedios(){
//        return $this->hasMany('App\Schedule');
//    }

    /***************** Scopes   ******************** */
    public function scopeDoctors($query)
    {
        return $query->where('role_id', '=', self::DOCTOR_ROLE_ID);
    }

    public function scopePatients($query)
    {
        return $query->where('role_id', '=', self::PATIENT_ROLE_ID);
    }

    /***************** Accessor ******************** */

    public function getIsDoctorAttribute($value)
    {
        if(Auth::user()->role_id == 2){
            return true;
        }
        return false;
    }

    public function getIsPatientAttribute($value)
    {
        if(Auth::user()->role_id == 3){
            return true;
        }
        return false;
    }

    /**
     * Send the password reset notification.
     *
     * @param  string  $token
     * @return void
     */
//    public function sendPasswordResetNotification($token)
//    {
//        $this->notify(new ResetPasswordNotification($token));
//    }

    /***************** Mutators ******************** */

//    public function setImageAttribute($value)
//    {
//        $image                      =    Storage::disk('public')->putFile('userImages', $value);
//        $this->attributes['image']  =    asset('storage/' .$image);
//    }




    //fathy

    public function broadcast()
    {
        return $this->hasMany('App\Models\Doctor_broadcast', 'doctor_id');
    }



    //fathy

}
