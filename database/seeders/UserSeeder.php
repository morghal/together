<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use \App\Models\User;
use \App\Models\Category;
use \App\Models\Activity;
use \App\Models\Image;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $users = User::factory()->count(10)->create(); // create a new user using its factory

        $categories = Category::all(); // retrieve all existing categories from the database

        foreach($users as $user) {
            $user->categories()->attach($categories->random());
            
        }
        
    }
}
