<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Inertia\Inertia;
use \App\Models\Activity;
use \App\Models\Image;
use \App\Models\User;
use \App\Models\Category;
use Illuminate\Support\Facades\Storage;
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
                            'image' => Image::where('activity_id', $activity->id)->get('name')->first()->name
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
                'image' => Image::where('activity_id', $activity->id)->get('name')->first()->name,
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
                'image' => Image::where('activity_id', $activity->id)->get('name')->first()->name],

            'categories' => Category::all()
            ]);
    }

    public function create() {
        return Inertia::render('Create', ['categories' => Category::all()]);
    }

    public function store(Request $request) {
        $data = $request->validate([
            'image' => 'required|mimes:jpg,bmp,png',
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

        $activity = new Activity;
        $date = $request->dateActivite . ' ' . $request->heureActivite;

            // Remplit le modèle de données
            $activity->title = $request->title;
            $activity->category_id = $request->category;
            $activity->start_time = $date;
            $activity->duration = $request->duration;
            $activity->max_participants = $request->nbrParticipants;
            $activity->address = $request->address;
            $activity->city = $request->city;
            $activity->country = $request->country;
            $activity->description = $request->description;
            $activity->user_id = auth()->user()->id;

            // sauvegarde db
            $activity->save();

            //ajoute la photo
            $file = $request->file('image');
            $image = new Image();
            //remplit modèle
            $image->activity_id = $activity->id;
            $image->name = $file->getClientOriginalName();
            $image->save();
            //sauvegarde disque
            $file->storeAs('public/img', $file->getClientOriginalName());
            $image->save();

            return to_route('show', ['activity' => $activity]);
    }

    public function update(Request $request,int $id) {
        $data = $request->validate([
            'image' => 'nullable|mimes:jpg,bmp,png',
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

            $file = $request->file('image');
            $toDelete = Image::where('activity_id', $id)->first();
            if( $file != null){
                Image::destroy($toDelete->id);
                Storage::delete('public/img/' . $toDelete->name);

                $image = new Image();
                $image->activity_id = $activity->id; // Set the activity_id to the ID of the updated activity
                $image->name = $file->getClientOriginalName();
                $file->storeAs('public/img', $file->getClientOriginalName());
                $image->save();
            }
            
            // Return a response indicating success
            return to_route('show', ['activity' => $activity]);
    }

    public function destroy(Activity $activity) {
        $image = Image::where('activity_id', $activity->id)->get()->first();
        
        $participants = User::all();
        $activity->participants()->detach($participants);
        Image::destroy($image->id);
        Storage::delete('public/img/' . $image->name);
        Activity::destroy($activity->id);

        // Return a response indicating success
        return to_route('dashboard');
    }
}
