<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SubDistrict extends Model
{
    use HasFactory;
    public function district()
    {
        return $this->belongsTo(District::class);
    }
    protected $fillable = [
        'district_id',
        'subdistrict_en',
        'subdistrict_bn',
    ];
}
