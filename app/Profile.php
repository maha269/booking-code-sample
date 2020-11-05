<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Traits\UuidModel;
//use Illuminate\Database\Eloquent\SoftDeletes;

class Profile extends Model
{
    use UuidModel;
    //use SoftDeletes;
//    use \Spatie\Tags\HasTags;

    function tagBadgeClass($tag)
    {
//echo $tag;
        /*
        badge-primary = Primary
        badge-secondary = Secondary
        badge-success = Success
        badge-danger = Danger
        badge-warning = Warning
        badge-info = Info
        */

        /*
        badge-primary
        badge-secondary
        badge-success
        badge-danger
        badge-warning
        badge-info
        badge-light
        badge-dark
        */

        switch ($tag->name) {
          // School affiliation
          case "College":
          case "HC":
          case "GSAS":
          case "HBS":
          case "HDS":
          case "HES":
          case "HGSE":
          case "HKS":
          case "HLS":
          case "HMS":
          case "HSDM":
          case "HSPS":
              return "badge-primary";
          // Focus
          case "Legal":
          case "Immigration":
          case "Education":
          case "African-American":
              return "badge-secondary";
          // Type
          case "Incubator":
              return "badge-warning" ;
          // Incubator
          case "i-lab":
              return "badge-info" ;
          default:
              return "badge-success" ;

        }




    }
}
