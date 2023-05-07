<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use \App\Models\Bookmark;
use \App\Models\Image;
use \App\Models\Activity;
use Inertia\Inertia;

class BookmarksController extends Controller
{
    //Page des favoris
    public function index() {
        return Inertia::render('Bookmarks', [
            'activities' => Bookmark::where('user_id', auth()->user()->id)->get()->map(function($bookmark) {
                return [
                    'id' => $bookmark->activity->id,
                    'title' => $bookmark->activity->title,
                    'nbr_participants' => count($bookmark->activity->users),
                    'max_participants' => $bookmark->activity->max_participants,
                    'category' => $bookmark->activity->category,
                    'user' => $bookmark->activity->user,
                    'rating' => $bookmark->activity->user->rating,
                    'latitude' => $bookmark->activity->latitude,
                    'longitude' => $bookmark->activity->longitude,
                    'start_time' => $bookmark->activity->start_time,
                    'adresse' => $bookmark->activity->address,
                    'postcode' => $bookmark->activity->postcode,
                    'city' => $bookmark->activity->city,
                    'image' => Image::where('activity_id', $bookmark->activity->id)->get('name')->first()->name,
                    'bookmarked'=> true,
                    'distance'=> 0
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
