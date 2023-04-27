<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class District extends Model
{
    use HasFactory;
    protected $fillable = [
        'district_en',
        'district_bn',
    ];

    public function subdistricts()
    {
        return $this->hasMany(SubDistrict::class);
    }
}
