@extends('admin/master/master')
@section('content')


<h1 class="mt-4">Categores Edit</h1>

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
            <form action="{{ route('category.update', $data->id) }}" method="POST">
                @csrf
                @method('PUT')
                <div class="mb-3">
                    <label for="english" class="form-label">Category Name English</label>
                    <input value="{{ $data->category_en }}" type="text" class="form-control" id="cat_en" name="category_en" required>
                </div>
                <div class="mb-3">
                    <label for="bangla" class="form-label">Category Name Bangla</label>
                    <input value="{{ $data->category_bn }}" type="text" class="form-control" id="bangla" name="category_bn" required>
                </div>
                <div>
                    <a href="{{ route('category.index') }}" class="btn btn-dark">Back</a>
                    <button type="submit" class="btn btn-primary float-end">Submit</button>
                </div>
            </form>

        </div>
    </div>
</div>






@endsection
