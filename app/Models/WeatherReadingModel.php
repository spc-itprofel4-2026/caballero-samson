<?php

namespace App\Models;

use CodeIgniter\Model;

class WeatherReadingModel extends Model
{
 protected $table = 'weather_readings';
 protected $primaryKey = 'id';
 protected $allowedFields = ['city', 'temperature', 'is_raining', 'recorded_at', 'humidity'];
}
