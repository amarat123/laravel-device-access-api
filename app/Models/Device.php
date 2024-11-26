<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Device extends Model
{
    use HasFactory;

    // Optionally, define the table name (if it differs from the default 'devices')
    protected $table = 'devices';  // In case you have a custom table name

    // Define the fillable attributes
    protected $fillable = ['name', 'model', 'device_unique_id'];

    public function accesses()
    {
        return $this->hasMany(Access::class, 'device_id');
    }

    public function users()
    {
        return $this->belongsToMany(User::class, 'accesses', 'device_id', 'user_id');
    }

}
