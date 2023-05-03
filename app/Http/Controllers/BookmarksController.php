<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use \App\Models\Bookmark;
use \App\Models\Image;
use \App\Models\Activity;
use Inertia\Inertia;

class BookmarksController extends Controller
{
    //Fonction de calcul de distance entre deux points
    protected function distance($userLatitude, $userLongitude, $activityLatitude, $activityLongitude) {
        $earth_radius = 6371; // en km
    
        $userLat = deg2rad($userLatitude);
        $userLon = deg2rad($userLongitude);
    
        $activityLat = deg2rad($activityLatitude);
        $activityLon = deg2rad($activityLongitude);
    
        $dLat = $activityLat - $userLat;
        $dLon = $activityLon - $userLon;
    
        $a = sin($dLat/2) * sin($dLat/2) + cos($userLat) * cos($activityLat) * sin($dLon/2) * sin($dLon/2);
        $c = 2 * atan2(sqrt($a), sqrt(1-$a));
    
        $distance = $earth_radius * $c;
    
        return $distance;
    }

    //Page des favoris
    public function index() {
        return Inertia::render('Bookmarks', [
            'activities' => Bookmark::where('user_id', auth()->user()->id)->get()->map(function($bookmark) {
                return [
                    'id' => $bookmark->activity->id,
                    'title' => $bookmark->activity->title,
                    'nbr_participants' => $bookmark->activity->nbr_participants,
                    'max_participants' => $bookmark->activity->max_participants,
                    'category' => $bookmark->activity->category,
                    'user' => $bookmark->activity->user->pseudo,
                    'rating' => $bookmark->activity->user->rating,
                    'latitude' => $bookmark->activity->latitude,
                    'longitude' => $bookmark->activity->longitude,
                    'start_time' => $bookmark->activity->start_time,
                    'adresse' => $bookmark->activity->address,
                    'postcode' => $bookmark->activity->postcode,
                    'city' => $bookmark->activity->city,
                    'image' => Image::where('activity_id', $bookmark->activity->id)->get('name')->first()->name,
                    'bookmarked'=> true
                ];
            }),
         ]);
    }

    public function store(Activity $activity) {
        $bookmark = new Bookmark;
        $bookmark->user_id = auth()->user()->id;
        $bookmark->activity_id = $activity->id;

        $bookmark->save();

        return 'yes' ;
    }

    public function destroy(Activity $activity) {
        $bookmark = Bookmark::where('user_id', auth()->user()->id)->where('activity_id', $activity->id)->get()->first();
        $bookmark->delete();
        return 'yes';
    }
}
