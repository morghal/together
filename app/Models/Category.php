<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use \App\Models\Activity;

class Category extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
    ];

    public function activities() {
        return $this->hasMany(Activity::class);
    }

    public function users() {
        return $this->belongsToMany(User::class, 'users_have_categories');
    }
}
