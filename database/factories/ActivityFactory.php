<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use \App\Models\Activity;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Activity>
 */
class ActivityFactory extends Factory
{
    protected $model = Activity::class;
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'title' => fake()->sentence(),
            'latitude' => fake()->latitude(),
            'longitude' => fake()->longitude(),
            'start_time' => fake()->dateTime(),
            'duration' => fake()->time(),
            'description' => fake()->words(10, true),
            'max_participants'=> fake()->numberBetween(1, 20),
            'user_id' => fake()->numberBetween(1, 10),
            'category_id'=> fake()->numberBetween(1, 5),
        ];
    }
}
