<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;
use Mcamara\LaravelLocalization\Facades\LaravelLocalization;

class Blog extends Model
{
    protected $guarded = ['id'];
    protected $appends = ['title','content'];
    public function writable()
    {
        return $this->morphTo('writable');
    }
    public function CreateBy()
    {
        return $this->belongsTo(User::class, 'writable_id');
    }
    public function comments()
    {
        return $this->hasMany(Comment::class, 'blog_id');
    }

    public function getTitleAttribute()
    {
        $lang = LaravelLocalization::getCurrentLocale();

        if (request()->header('lang')) {
            $lang =  request()->header('lang');
        }
        if ($lang == 'ar') {
            return $this->attributes['title_ar'];
        } else {
            return $this->attributes['title_en'];
        }

    }

    public function getContentAttribute()
    {
        $lang = LaravelLocalization::getCurrentLocale();

        if (request()->header('lang')) {
            $lang =  request()->header('lang');
        }
        if ($lang == 'ar') {
            return $this->attributes['content_ar'];
        } else {
            return $this->attributes['content_en'];
        }

    }


}
