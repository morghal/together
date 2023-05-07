<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Fortify\TwoFactorAuthenticatable;
use Laravel\Jetstream\HasProfilePhoto;
use Laravel\Sanctum\HasApiTokens;
use \App\Models\Category;
use \App\Models\Activity;
use \App\Models\Bookmark;

class User extends Authenticatable
{
    use HasApiTokens;
    use HasFactory;
    use HasProfilePhoto;
    use Notifiable;
    use TwoFactorAuthenticatable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'firstname',
        'lastname',
        'pseudo',
        'rating',
        'birth_date',
        'photo',
        'city',
        'country',
        'intro',
        'description',
        'email',
        'password',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
        'two_factor_recovery_codes',
        'two_factor_secret',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    /**
     * The accessors to append to the model's array form.
     *
     * @var array<int, string>
     */
    protected $appends = [
        'profile_photo_url',
    ];

    public function categories(){
        return $this->belongsToMany(Category::class, 'users_have_categories');
    }

    public function users() {
        return $this->belongsToMany($this::class, 'users_have_followers');
    }

    public function activities() {
        return $this->hasMany(Activity::class);
    }

    public function participations() {
        return $this->belongsToMany(Activity::class, 'activities_have_participants', 'user_id', 'activity_id');
    }

    public function bookmarks() {
        return $this->hasMany(Bookmark::class);
    }
}
