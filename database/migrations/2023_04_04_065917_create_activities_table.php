<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::dropIfExists('activities');
        Schema::create('activities', function (Blueprint $table) {
            $table->id();
            $table->string('title');
            $table->foreignId('image_id')->constrained('images');
            $table->decimal('latitude', $precision = 10, $scale = 8);
            $table->decimal('longitude', $precision = 11, $scale = 8);
            $table->dateTime('start_time');
            $table->time('duration');
            $table->text('description');
            $table->integer('max_participants');
            $table->foreignId('category_id')->constrained('categories');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('activities');
    }
};
