<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdateFormRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\Rule|array|string>
     */
    public function rules(): array
    {
        dd($this);
        return [
            'image' => 'nullable|mimes:jpg,bmp,png',
            'title' => 'required|string|max:255', 
            'category' => 'required|integer', 
            'dateActivite' => 'required|date_format:Y-m-d', 
            'heureActivite' => 'required|date_format:H:i',
            'duration' => 'required|string|date_format:H:i', 
            'nbrParticipants' => 'required|integer|min:1', 
            'address' => 'required|string|max:255',
            'city' => 'required|string|max:255',
            'country' => 'required|string|max:255',
            'description' => 'required|string',
        ];
    }
}
