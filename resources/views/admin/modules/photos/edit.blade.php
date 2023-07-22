@extends('admin/master/master')
@section('content')


<h1 class="mt-4">Photo Gallery Edit</h1>

<div class=" mb-4">
    <div class="d-flex justify-content-between">
        <ol class="breadcrumb mb-4">
            <li class="breadcrumb-item"><a href="{{ route('dashboard') }}" class="text-decoration-none">Dashboard</a></li>
            <li class="breadcrumb-item active">Edit</li>
        </ol>

    </div>
</div>
<div class="d-flex justify-content-around">
<div class="col-6  shadow-sm rounded">
    <div class="card">
        <div class="card-body">
            <form action="{{ route('photo.update', $data->id) }}" method="POST"  enctype="multipart/form-data">
                @csrf
                @method('PUT')
                <div class="mb-3">
                    <label for="english" class="form-label">Title</label>
                    <input value="{{ $data->title }}" type="text" class="form-control" id="title" name="title" required>
                </div>
                <div class="mb-3">
                    <label for="type" class="form-label">Type</label>
                    <select name="type" required class="form-select form-select-sm" aria-label=".form-select-sm example">
                        <option selected disabled>Open this select menu</option>
                        <option value="1" @if ($data->type==1)selected @endif>Big Photo</option>
                        <option value="0" @if ($data->type==0)selected @endif>Small Photo</option>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="photo" class="form-label">Photo</label>
                    <input type="file" class="form-control @error('photo')is-invalid @enderror" id="photo" name="photo" >
                      @error('photo')
                      <span class="invalid-feedback" role="alert">
                          <strong>{{ $message }}</strong>
                      </span>
                      @enderror
                </div>
                <div class="mb-3">
                    <input hidden name="oldimage" type="text" class="form-control" id="oldimage" value="{{ $data->photo }}">

                </div>
                <div>
                    <a href="{{ route('photo.index') }}" class="btn btn-dark">Back</a>
                    <button type="submit" class="btn btn-primary float-end">Update</button>
                </div>
            </form>
        </div>
    </div>
</div>
<div class="">
    <img src="{{ URL::to($data->photo) }}" alt="{{ $data->title }}"  style="width: 300px; height:250px;" alt="" class="rounded shadow float-start">
</div>

</div>






@endsection
