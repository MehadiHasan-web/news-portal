@extends('admin/master/master')
@section('content')


<h1 class="mt-4">LiveTv Setting</h1>

<div class=" mb-4">
    <div class="d-flex justify-content-between">
        <ol class="breadcrumb mb-4">
            <li class="breadcrumb-item"><a href="{{ route('dashboard') }}" class="text-decoration-none">Dashboard</a></li>
            <li class="breadcrumb-item active">Live TV</li>
        </ol>
    </div>
</div>

<div class="d-flex justify-content-center">

    <div class="card col-8">
        <div class="card-header">
            Live TV
        </div>
        <div class="card-body">
          <div class="d-flex justify-content-between">
            <h5 class="card-title">Embed Code</h5>

            @if ($livetv->status == 1)
            <a class="btn btn-danger" href="{{ route('settings.LiveDeactivate', $livetv->id ?? '') }}" role="button">Dactive</a>
            @else
            <a class="btn btn-primary" href="{{ route('settings.LiveActive', $livetv->id ?? '') }}" role="button">Active</a>
            @endif

          </div>

          <div class="form-group mt-3">
            <form class="" method="POST" action="{{ route('settings.liveUpdate',$livetv->id ?? '') }}">
                @method('put')
                @csrf

                <div class="form-group mt-3">
                    <textarea class="form-control" name="embed_code" id="embed_code" cols="30" rows="10">{{ $livetv->embed_code ?? '' }}</textarea>
                </div>
                @if ($livetv->status==1 )
                <p class="text-primary">Now Live TV are active</p>
                @else
                <p class="text-danger">Now Live TV are Deactive</p>
                @endif



                <!-- Add more social link fields as needed -->

                <button type="submit" class="btn btn-primary mt-2">Update</button>
            </form>
        </div>
        </div>
      </div>



</div>

 {{-- viveo  --}}
 <div class="container mt-4 ">
    <div class="embed-responsive embed-responsive-16by9">
      <div class="d-flex justify-content-center rounded">
        {!! $livetv->embed_code ?? ''  !!}
      </div>
    </div>

  </div>



@endsection
