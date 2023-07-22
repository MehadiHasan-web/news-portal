@extends('admin/master/master')
@section('content')


<h1 class="mt-4">Website Edit</h1>

<div class=" mb-4">
    <div class="d-flex justify-content-between">
        <ol class="breadcrumb mb-4">
            <li class="breadcrumb-item"><a href="{{ route('dashboard') }}" class="text-decoration-none">Dashboard</a></li>
            <li class="breadcrumb-item active">Edit</li>
        </ol>

    </div>
</div>
<div class="col-6 m-auto shadow-sm rounded">
    <div class="card">
        <div class="card-body">
            <form action="{{ route('importantWebsite.update', $data->id) }}" method="POST">
                @csrf
                @method('PUT')
                <div class="mb-3">
                    <label for="website_name" class="form-label">Website Name</label>
                    <input value="{{ $data->website_name }}" type="text" class="form-control" id="website_name" name="website_name" required>
                </div>
                <div class="mb-3">
                    <label for="website_link" class="form-label">Website Link</label>
                    <input value="{{ $data->website_link }}" type="text" class="form-control" id="website_link" name="website_link" required>
                </div>
                <div>
                    <a href="{{ route('importantWebsite.index') }}" class="btn btn-dark">Back</a>
                    <button type="submit" class="btn btn-primary float-end">Update</button>
                </div>
            </form>

        </div>
    </div>
</div>






@endsection
