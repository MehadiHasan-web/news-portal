@extends('admin/master/master')
@section('content')

<h1 class="mt-4">SCO Setting</h1>

<div class=" mb-4">
    <div class="d-flex justify-content-between">
        <ol class="breadcrumb mb-4">
            <li class="breadcrumb-item"><a href="{{ route('dashboard') }}" class="text-decoration-none">Dashboard</a></li>
            <li class="breadcrumb-item active">Links</li>
        </ol>
    </div>
</div>

<div class="d-flex justify-content-center">
    <form class="col-8" method="POST" action="{{ route('settings.scoUpdate',$scos->id ?? '') }}">
        @method('post')
        @csrf

        <div class="form-group mt-3">
            <label for="meta_author">Meta Author</label>
            <input type="text" name="meta_author" id="meta_author" value="{{ $scos->meta_author ?? '' }}" class="form-control">
        </div>

        <div class="form-group mt-3">
            <label for="meta_title">Meta Title</label>
            <input type="text" name="meta_title" id="meta_title" value="{{ $scos->meta_title ?? '' }}" class="form-control">
        </div>

        <div class="form-group mt-3">
            <label for="meta_keyword">Meta Keyword</label>
            <input type="text" name="meta_keyword" id="meta_keyword" value="{{ $scos->meta_keyword ?? '' }}" class="form-control">
        </div>

        <div class="form-group mt-3">
            <label for="meta_description">Meta Description</label>
            <input type="text" name="meta_description" id="meta_description" value="{{ $scos->meta_description ?? '' }}" class="form-control">
        </div>

        <div class="form-group mt-3">
            <label for="google_analytics">Google Analytics</label>
            <input type="text" name="google_analytics" id="google_analytics" value="{{ $scos->google_analytics ?? '' }}" class="form-control">
        </div>

        <div class="form-group mt-3">
            <label for="google_verification">Google Verification</label>
            <input type="text" name="google_verification" id="google_verification" value="{{ $scos->google_verification ?? '' }}" class="form-control">
        </div>

        <div class="form-group mt-3">
            <label for="alexa_analytics">Alexa Analytics</label>
            <input type="text" name="alexa_analytics" id="alexa_analytics" value="{{ $scos->alexa_analytics ?? '' }}" class="form-control">
        </div>






        <button type="submit" class="btn btn-primary mt-2">Update</button>
    </form>
</div>




@endsection
