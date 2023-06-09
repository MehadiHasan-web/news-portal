<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;
    protected $fillable = [
        'title_bn',
        'title_en',
        'category',
        'subcategory',
        'dist_id',
        'subdistrict',
        'photo',
        'tags_bn',
        'tags_en',
        'details_bn',
        'details_en',
        'first_section',
        'bigthumbnail',
        'first_section_thumb',
    ];
}
