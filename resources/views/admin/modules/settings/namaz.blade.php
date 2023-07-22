@extends('admin/master/master')
@section('content')


<h1 class="mt-4">Namaz</h1>

<div class=" mb-4">
    <div class="d-flex justify-content-between">
        <ol class="breadcrumb mb-4">
            <li class="breadcrumb-item"><a href="{{ route('dashboard') }}" class="text-decoration-none">Dashboard</a></li>
            <li class="breadcrumb-item active">Namaz</li>
        </ol>
    </div>
</div>

<div class="d-flex justify-content-center">
    <form class="col-8" method="POST" action="{{ route('settings.namazUpdate',$namaz->id ?? '') }}">
        @method('post')
        @csrf

        <div class="form-group mt-3">
            <label for="fajr">Fajr</label>
            <input type="text" name="fajr" id="fajr" value="{{ $namaz->fajr ?? '' }}" class="form-control @error('fajr')is-invalid @enderror">
            @error('fajr')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>

        <div class="form-group mt-3">
            <label for="johr">Johr</label>
            <input type="text" name="johr" id="johr" value="{{ $namaz->johr ?? '' }}" class="form-control @error('johr')is-invalid @enderror">
            @error('johr')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>

        <div class="form-group mt-3">
            <label for="asor">Asor</label>
            <input type="text" name="asor" id="asor" value="{{ $namaz->asor ?? '' }}" class="form-control @error('asor')is-invalid @enderror">
            @error('asor')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>

        <div class="form-group mt-3">
            <label for="magrib">Magrib</label>
            <input type="text" name="magrib" id="magrib" value="{{ $namaz->magrib ?? '' }}" class="form-control @error('magrib')is-invalid @enderror">
            @error('magrib')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>

        <div class="form-group mt-3">
            <label for="esha">Esha</label>
            <input type="text" name="esha" id="esha" value="{{ $namaz->esha ?? '' }}" class="form-control @error('esha')is-invalid @enderror">
            @error('esha')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>

        <div class="form-group mt-3">
            <label for="jummah">Jummah</label>
            <input type="text" name="jummah" id="jummah" value="{{ $namaz->jummah ?? '' }}" class="form-control @error('jummah')is-invalid @enderror">
            @error('jummah')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>

        <!-- Add more social link fields as needed -->

        <button type="submit" class="btn btn-primary mt-2">Update</button>
    </form>
</div>




@endsection
