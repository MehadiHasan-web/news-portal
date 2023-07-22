@extends('admin/master/master')
@section('content')


<h1 class="mt-4">Video Gallery Edit</h1>

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
            <form action="{{ route('video.update', $data->id) }}" method="POST" >
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
                        <option value="1" @if ($data->type==1)selected @endif>Big Video</option>
                        <option value="0" @if ($data->type==0)selected @endif>Small Video</option>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="embed_code" class="form-label">Embed Code</label>
                    <textarea class="form-control  @error('embed_code')is-invalid @enderror" name="embed_code" id="embed_code" cols="30" rows="5">{{ $data->embed_code ?? '' }}</textarea>
                      @error('embed_code')
                      <span class="invalid-feedback" role="alert">
                          <strong>{{ $message }}</strong>
                      </span>
                      @enderror
                  </div>
                <div>
                    <a href="{{ route('video.index') }}" class="btn btn-dark">Back</a>
                    <button type="submit" class="btn btn-primary float-end">Update</button>
                </div>
            </form>
        </div>
    </div>
</div>
<div class="">
    <div class="embed-responsive embed-responsive-16by9 rounded shadow float-start" style="width: 300px; height:250px;">
        <div class="d-flex justify-content-center rounded">
          {!! $data->embed_code ?? ''  !!}
        </div>
      </div>
</div>

</div>






@endsection
