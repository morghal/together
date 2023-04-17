<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Inertia\Inertia;
use \App\Models\Activity;
use \App\Models\Image;
use \App\Models\User;
use \App\Models\Category;
use App\Http\Requests\UpdateFormRequest;

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

    public function edit(Activity $activity) {
        return Inertia::render('Edit', [
            'activity' => [
                'id' => $activity->id,
                'title' => $activity->title,
                'max_participants' => $activity->max_participants,
                'category_name' => $activity->category->name,
                'category_id'=> $activity->category_id,
                'user' => $activity->user->pseudo,
                'start_time' => $activity->start_time,
                'duration' => $activity->duration,
                'description' => $activity->description,
                'address' => $activity->address,
                'postcode' => $activity->postcode,
                'city' => $activity->city,
                'country' => $activity->country,
                'image' => Image::where('id', $activity->id)->get('name')->first()->name],

            'categories' => Category::all()
            ]);
    }

    public function update(Request $request,int $id) {
       
        $data = $request->validate([
            'image' => 'nullable',
            'title' => 'required|string|max:255', 
            'category' => 'required|integer', 
            'dateActivite' => 'required|date_format:Y-m-d', 
            'heureActivite' => 'required|date_format:H:i',
            'duration' => 'required|string|date_format:H:i', 
            'nbrParticipants' => 'required|integer|min:1', 
            'address' => 'required|string|max:255',
            'city' => 'required|string|max:255',
            'country' => 'required|string|max:255',
            'description' => 'required|string',
        ]);

        $activity = Activity::find($id);
        $date = $request->dateActivite . ' ' . $request->heureActivite;

            // Update the activity model with the validated data
            $activity->title = $request->title;
            $activity->category_id = $request->category;
            $activity->start_time = $date;
            $activity->duration = $request->duration;
            $activity->max_participants = $request->nbrParticipants;
            $activity->address = $request->address;
            $activity->city = $request->city;
            $activity->country = $request->country;
            $activity->description = $request->description;

            // Save the updated activity
            $activity->save();

            if($request->file('image') != null){
                $image = new Image();
                $image->activity_id = $activity->id; // Set the activity_id to the ID of the updated activity
                $image->name = $request->image;
                $image->save();
            }
            
            // Return a response indicating success
            return to_route('show', ['activity' => $activity]);

    }
}
