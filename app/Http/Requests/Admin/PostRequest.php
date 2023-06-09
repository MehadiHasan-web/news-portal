<?php

namespace App\Http\Requests\Admin;

use Illuminate\Foundation\Http\FormRequest;

class PostRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return false;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\Rule|array|string>
     */
    public function rules(): array
    {
        return [
            // 'cat_id' => 'require',
            // 'subcat_id' => 'required',
            // 'dist_id' => 'required',
            // 'subdist_id' => 'required',
            // 'title_en' => 'required',
            // 'title_bn' => 'required',
            // 'details_en' => 'required',
            // 'details_bn' => 'required',
            // 'tags_en' => 'required | min:10',
            // 'tags_bn' => 'required | min:10',

        ];
    }
}
