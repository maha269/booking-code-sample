<?php

namespace App\Traits;

use Illuminate\Http\Request;

trait StoreBlogImage {

    public function verifyAndStoreImage(Request $request , $folder = '/') {
        if($request->hasFile('image')){
            $image = $request->file('image');
            $uniqueName = time().'.'.$image->extension();

            $destinationPath = public_path('images/'. $folder);

            $image->move($destinationPath, $uniqueName);
            return $uniqueName ;
        }
        return null;
    }

}
