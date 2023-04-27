@extends('admin/master/master')
@section('content')


<h1 class="mt-4">Subcategores Edit</h1>

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
            <form action="{{ route('subcategory.update', $data->id) }}" method="POST">
                @csrf
                @method('PUT')
                <div class="mb-3">
                    <label for="english" class="form-label">Category Name English</label>
                    <input value="{{ $data->sub_category_en }}" type="text" class="form-control  @error('sub_category_en')is-invalid @enderror" id="cat_en" name="sub_category_en" required>
                    @error('sub_category_en')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </div>
                <div class="mb-3">
                    <label for="bangla" class="form-label">Category Name Bangla</label>
                    <input value="{{ $data->sub_category_bn }}" type="text" class="form-control  @error('sub_category_bn')is-invalid @enderror" id="bangla" name="sub_category_bn" required>
                    @error('sub_category_bn')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </div>
                <div class="mb-3">
                    <label for="bangla" class="form-label">Category</label>
                    <select name="category_id" class="form-select form-select-sm" aria-label=".form-select-sm example" required>
                        <option selected disabled>Select Category..</option>
                        @foreach ($categories as $cat)
                            <option value="{{ $cat->id }}" <?php if ($cat->id == $data->category_id	){
                                echo 'selected';
                            }?> >{{ $cat->category_en }} | {{ $cat->category_bn}}</option>
                        @endforeach
                      </select>
                  </div>
                <div>
                    <a href="{{ route('subcategory.index') }}" class="btn btn-dark">Back</a>
                    <button type="submit" class="btn btn-primary float-end">Update</button>
                </div>
            </form>

        </div>
    </div>
</div>






@endsection
