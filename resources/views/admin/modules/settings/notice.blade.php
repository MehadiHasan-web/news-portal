@extends('admin/master/master')
@section('content')


<h1 class="mt-4">Notice Setting</h1>

<div class=" mb-4">
    <div class="d-flex justify-content-between">
        <ol class="breadcrumb mb-4">
            <li class="breadcrumb-item"><a href="{{ route('dashboard') }}" class="text-decoration-none">Dashboard</a></li>
            <li class="breadcrumb-item active">notice</li>
        </ol>
    </div>
</div>

<div class="d-flex justify-content-center">

    <div class="card col-8">
        <div class="card-header">
            Notice Setting
        </div>
        <div class="card-body">
          <div class="d-flex justify-content-between">
            <h5 class="card-title">Notice</h5>

            @if (isset($notice) && $notice->status == 1)
            <a class="btn btn-danger" href="{{ route('settings.noticeDeactivate', $notice->id ?? '') }}" role="button">Dactive</a>
            @else
            <a class="btn btn-primary" href="{{ route('settings.noticeActive', $notice->id ?? '') }}" role="button">Active</a>
            @endif

          </div>

          <div class="form-group mt-3">
            <form class="" method="POST" action="{{ route('settings.noticeUpdate',$notice->id ?? '') }}">
                @method('put')
                @csrf

                <div class="form-group mt-3">
                    <label for="notice">Notice English</label>
                    <textarea class="form-control @error('notice')is-invalid @enderror" name="notice" id="notice" cols="30" rows="10">{{ $notice->notice ?? '' }}</textarea>
                    @error('notice')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </div>

                <div class="form-group mt-3">
                    <label for="notice_bn">Notice Bangla</label>
                    <textarea class="form-control @error('notice_bn')is-invalid @enderror" name="notice_bn" id="notice_bn" cols="30" rows="10">{{ $notice->notice_bn ?? '' }}</textarea>
                    @error('notice_bn')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </div>

                @if (isset($id)&&$notice->status==1 )
                <p class="text-primary">Now notice are active</p>
                @else
                <p class="text-danger">Now notice are Deactive</p>
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
