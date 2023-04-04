<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use \App\Models\Activity;

class Image extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
    ];

    public function activity() {
        return $this->belongsTo(Activity::class);
    }
}
