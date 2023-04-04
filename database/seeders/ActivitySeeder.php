<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use \App\Models\Activity;
use \App\Models\Image;
use \App\Models\Category;
use \App\Models\User;

class ActivitySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $activities = Activity::factory()->count(10)->has(Image::factory())->create();

        $categories = Category::all();
        $users = User::all();

        foreach($activities as $activity) {
            $activity->categories()->attach($categories->random());
            $activity->user()->associate($users->random());
        }
    }
}
