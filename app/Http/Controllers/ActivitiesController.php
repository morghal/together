<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Inertia\Inertia;
use \App\Models\Activity;
use \App\Models\Image;
use \App\Models\User;
class ActivitiesController extends Controller
{
    public function dashboard(){
       // dd(Image::where('id', 3)->get('name'));
        return Inertia::render('Index', [
            'activities' => Activity::all()->map(function($activity) {
                        return [
                            'id' => $activity->id,
                            'title' => $activity->title,
                            'nbr_participants' => $activity->nbr_participants,
                            'max_participants' => $activity->max_participants,
                            'category_name' => $activity->category->name,
                            'user' => $activity->user->pseudo,
                            'rating' => $activity->user->rating,
                            'start_time' => $activity->start_time,
                            'adresse' => $activity->address,
                            'postcode' => $activity->postcode,
                            'ville' => $activity->city,
                            'image' => Image::where('id', $activity->id)->get('name')->first()->name
                        ] ;
                    }),
                
    ]);
    }

    public function show(Activity $activity) {
        return Inertia::render('ShowActivity', [
            'activity' => [
                'id' => $activity->id,
                'title' => $activity->title,
                'nbr_participants' => $activity->nbr_participants,
                'max_participants' => $activity->max_participants,
                'category_name' => $activity->category->name,
                'user' => $activity->user->pseudo,
                'rating' => $activity->user->rating,
                'start_time' => $activity->start_time,
                'description' => $activity->description,
                'adresse' => $activity->address,
                'postcode' => $activity->postcode,
                'ville' => $activity->city,
                'image' => Image::where('id', $activity->id)->get('name')->first()->name,
                'user' => User::where('id', $activity->user_id)->get()->first(),
                'participants' => $activity->participants
            ],
        ]);
    }
}
