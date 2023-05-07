<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use \App\Models\Category;
use \App\Models\User;
use \App\Models\Image;
use \App\Models\Bookmark;

class Activity extends Model
{
    use HasFactory;

    protected $fillable = [
        'title',
        'latitude',
        'longitude',
        'start_time',
        'duration',
        'description',
        'max_participants',
    ];

    public function category() {
        return $this->belongsTo(Category::class);
    }

    public function user() {
        return $this->belongsTo(User::class);
    }

    public function images() {
        return $this->hasMany(Image::class);
    }

    public function users() {
        return $this->belongsToMany(User::class, 'activities_have_participants', 'activity_id', 'user_id');
    }

    public function bookmarks() {
        return $this->hasMany(Bookmark::class);
    }
}
