@extends('admin/master/master')
@section('content')


<h1 class="mt-4">District Edit</h1>

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
            <form action="{{ route('subdistrict.update', $data->id) }}" method="post">
                @csrf
                @method('PUT')
                <div class="mb-3">
                    <label for="english" class="form-label">District Name English</label>
                    <input value="{{ $data->subdistrict_en }}" type="text" class="form-control" id="cat_en" name="subdistrict_en" required>
                </div>
                <div class="mb-3">
                    <label for="bangla" class="form-label">District Name Bangla</label>
                    <input value="{{ $data->subdistrict_bn }}" type="text" class="form-control" id="bangla" name="subdistrict_bn" required>
                </div>
                <div class="mb-3">
                    <label for="bangla" class="form-label">District</label>
                    <select name="district_id" class="form-select form-select-sm" aria-label=".form-select-sm example" required>
                        <option selected disabled>Select District..</option>
                        @foreach ($districts as $district)
                            <option value="{{ $district->id }}" <?php if ($district->id == $data->district_id	){
                                echo 'selected';
                            }?> >{{ $district->district_en }} | {{ $district->district_bn}}</option>
                        @endforeach
                      </select>
                  </div>
                <div>
                    <a href="{{ route('subdistrict.index') }}" class="btn btn-dark">Back</a>
                    <button type="submit" class="btn btn-primary float-end">Update</button>
                </div>
            </form>

        </div>
    </div>
</div>






@endsection
