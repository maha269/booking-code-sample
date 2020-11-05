<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\User;
use App\Models\VideoComment;
use App\Models\VideoCategory;
use App\Models\VideoLike;
use Illuminate\Support\Facades\Auth;

class VideoLibrary extends Model
{
    protected $fillable = ['title','type' ,'description', 'video_url','user_id', 'created_at', 'updated_at','seo_title','seo_description','views_count'];
    protected $table = 'video_library';

    public $appends = [
        'thumb',
        'embedurl',
        'aleadylike'
    ];

    public function getThumbAttribute()
    {

        if ($this->attributes['type'] == 'youtube'){
        //$isset = preg_match("#(?<=v=)[a-zA-Z0-9-]+(?=&)|(?<=v\/)[^&\n]+(?=\?)|(?<=v=)[^&\n]+|(?<=youtu.be|(?<=youtube.com/embed/)/)[^&\n]+#", $this->attributes['video_url'], $matches);
        $isset = preg_match('%(?:youtube(?:-nocookie)?\.com/(?:[^/]+/.+/|(?:v|e(?:mbed)?)/|.*[?&]v=)|youtu\.be/)([^"&?/ ]{11})%i', $this->attributes['video_url'], $matches);
        $link = 'https://img.youtube.com/vi/'. @$matches[1].'/0.jpg';
        return $link;
        }else{
            $id =array_last(explode('/',$this->attributes['video_url']));
            $apiData = unserialize( file_get_contents( "http://vimeo.com/api/v2/video/$id.php" ) );
            $videoInfo = $apiData[ 0 ];
            return $videoInfo[ 'thumbnail_medium' ];
        }
    }

    public function getAleadylikeAttribute()
    {

        if (Auth::check()){
            $check = VideoLike::where('video_id',$this->id)->where('user_id',Auth::user()->id)->first();
            if ($check){
                return 1;
            }else{
                return 0;
            }
        }
        return 0;
    }

    public function getEmbedurlAttribute()
    {

        $url = $this->attributes['video_url'];

        $shortUrlRegex = '/youtu.be\/([a-zA-Z0-9_-]+)\??/i';
        $longUrlRegex = '/youtube.com\/((?:embed)|(?:watch))((?:\?v\=)|(?:\/))([a-zA-Z0-9_-]+)/i';

        if (preg_match($longUrlRegex, $url, $matches)) {
            $youtube_id = $matches[count($matches) - 1];
        }

        if (preg_match($shortUrlRegex, $url, $matches)) {
            $youtube_id = $matches[count($matches) - 1];
        }
        return 'https://www.youtube.com/embed/' . $youtube_id ;
    }

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    public function comments()
    {
        return $this->hasMany(VideoComment::class, 'video_id');
    }

    public function likes()
    {
        return $this->hasMany(VideoLike::class, 'video_id');
    }

    public function category()
    {
        return $this->belongsTo(VideoCategory::class, 'category_id');
    }



}
