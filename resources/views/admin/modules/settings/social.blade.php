@extends('admin/master/master')
@section('content')
{{-- <div class="d-flex justify-content-between mt-4 align-items-center">
    <h2>District</h2>
    <div class="d-flex">
        <h6><a href="{{ route('dashboard') }}" class="text-decoration-none">Home </a> </h6>
        <h6> / District</h6>
    </div>
</div> --}}

<h1 class="mt-4">Social Link</h1>

<div class=" mb-4">
    <div class="d-flex justify-content-between">
        <ol class="breadcrumb mb-4">
            <li class="breadcrumb-item"><a href="{{ route('dashboard') }}" class="text-decoration-none">Dashboard</a></li>
            <li class="breadcrumb-item active">Links</li>
        </ol>
    </div>
</div>

<div class="d-flex justify-content-center">
    <form class="col-8" method="POST" action="{{ route('settings.update',$socialLinks->id ?? '') }}">
        @method('post')
        @csrf

        <div class="form-group mt-3">
            <label for="facebook">Facebook</label>
            <input type="text" name="facebook" id="facebook" value="{{ $socialLinks->facebook ?? '' }}" class="form-control">
            <a href="{{ $socialLinks->facebook ?? '' }}">Facebook</a>
        </div>

        <div class="form-group mt-3">
            <label for="twitter">Twitter</label>
            <input type="text" name="twitter" id="twitter" value="{{ $socialLinks->twitter ?? '' }}" class="form-control">
            <a href="{{ $socialLinks->twitter ?? '' }}">Twitter</a>
        </div>

        <div class="form-group mt-3">
            <label for="youtube">Youtube</label>
            <input type="text" name="youtube" id="youtube" value="{{ $socialLinks->youtube ?? '' }}" class="form-control">
            <a href="{{ $socialLinks->youtube ?? '' }}">Youtube</a>
        </div>

        <div class="form-group mt-3">
            <label for="instagram">Instagram</label>
            <input type="text" name="instagram" id="instagram" value="{{ $socialLinks->instagram ?? '' }}" class="form-control">
            <a href="{{ $socialLinks->instagram ?? '' }}">Instagram</a>
        </div>

        <div class="form-group mt-3">
            <label for="linkedin">Linkedin</label>
            <input type="text" name="linkedin" id="linkedin" value="{{ $socialLinks->linkedin ?? '' }}" class="form-control">
            <a href="{{ $socialLinks->linkedin ?? '' }}">Linkedin</a>
        </div>


        <!-- Add more social link fields as needed -->

        <button type="submit" class="btn btn-primary mt-2">Update</button>
    </form>
</div>




@endsection
