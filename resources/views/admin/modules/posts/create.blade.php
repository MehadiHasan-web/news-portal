@extends('admin/master/master')
@section('content')
{{-- <div class="d-flex justify-content-between mt-4 align-items-center">
    <h2>Category</h2>
    <div class="d-flex">
        <h6><a href="{{ route('dashboard') }}" class="text-decoration-none">Home </a> </h6>
        <h6> / Category</h6>
    </div>
</div> --}}

<h1 class="mt-4">Create Post</h1>

<div class=" mb-4">
    <div class="d-flex justify-content-between">
        <ol class="breadcrumb mb-4">
            <li class="breadcrumb-item"><a href="{{ route('dashboard') }}" class="text-decoration-none">Dashboard</a></li>
            <li class="breadcrumb-item active">Post</li>
        </ol>
    </div>
</div>

<div class="container mb-5">
    <div class=" shadow p-3 card">

            <form class="row g-3" method="POST" action="{{ route('post.store') }}" enctype="multipart/form-data">
                @csrf
                <div class="col-md-6">
                  <label for="titlebn" class="form-label">Title Bangla</label>
                  <input type="text" class="form-control @error('title_bn')is-invalid @enderror" id="titlebn" name="title_bn" placeholder="Write Bangla Title" value="{{ old('title_bn') }}">
                    @error('title_bn')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </div>

                <div class="col-md-6">
                    <label for="titlebn" class="form-label bold">Title English</label>
                    <input type="text" class="form-control @error('title_en')is-invalid @enderror" id="titlebn" name="title_en" placeholder="Write English Title" value="{{ old('title_en') }}">
                    @error('title_en')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </div>

                <div class="col-md-6">
                    <label for="category" class="form-label">Category</label>
                    <select id="category" class="form-select" name="category">
                        <option selected disabled>Choose...</option>
                        @foreach ($categories as $category)
                        <option value="{{ $category->id }}">{{ $category->category_bn }} || {{ $category->category_en }}</option>
                        @endforeach
                    </select>

                </div>
                <div class="col-md-6">
                    <label for="subcategory" class="form-label">Sub Category</label>
                    <select id="subcategory" class="form-select " name="subcategory">
                      <option selected>Choose...</option>
                    </select>

                </div>

                <div class="col-md-6">
                    <label for="district" class="form-label">District</label>
                    <select  id="districtname" class="form-select" name="dist_id">
                        <option selected disabled>Choose...</option>
                        @foreach ($districts as $district)
                        <option value="{{ $district->id }}">{{ $district->district_bn }} || {{ $district->district_en }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="col-md-6">
                    <label for="subdistrict" class="form-label">Sub District</label>
                    <select id="subdistrictsid" class="form-select" name="subdistrict">
                      <option selected>Choose...</option>
                      <option value="">...</option>
                    </select>
                </div>

                <div class="mb-1">
                    <label for="formFileSm" class="form-label">File input</label>
                    <input class="form-control form-control-sm " id="formFileSm" type="file" name="photo">

                </div>

                <div class="col-md-6">
                    <label for="tagsbn" class="form-label">Tags Bangla</label>
                    <input type="text" class="form-control @error('tags_bn')is-invalid @enderror" id="tagsbn" name="tags_bn" placeholder="Write Bangla Tags" value="{{ old('tags_bn') }}">
                    @error('tags_bn')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </div>
                <div class="col-md-6">
                      <label for="tagsen" class="form-label bold">Tags English</label>
                      <input type="text" class="form-control @error('tags_en')is-invalid @enderror" id="tagsen" name="tags_en" placeholder="Write English Tags" value="{{ old('tags_en') }}">
                      @error('tags_en')
                      <span class="invalid-feedback" role="alert">
                          <strong>{{ $message }}</strong>
                      </span>
                      @enderror
                </div>

                <div class="col-12">
                    <label for="exampleFormControlTextarea1" class="form-label">Description Bangla</label>
                    <textarea class="form-control @error('details_bn')is-invalid @enderror" id="editorbn" rows="6" name="details_bn">{{ old('details_bn') }}</textarea>
                    @error('details_bn')
                      <span class="invalid-feedback" role="alert">
                          <strong>{{ $message }}</strong>
                      </span>
                      @enderror
                </div>

                <div class="col-12">
                    <label for="exampleFormControlTextarea" class="form-label">Description English</label>
                    <textarea class="form-control @error('details_en')is-invalid @enderror" id="editoren" rows="6" name="details_en">{{ old('details_en') }}</textarea>
                    @error('details_en')
                      <span class="invalid-feedback" role="alert">
                          <strong>{{ $message }}</strong>
                      </span>
                    @enderror
                </div>

                <h4 class="text-center ">Extra Option</h4>
                <hr >

                <div class="d-flex justify-content-between col-12">
                  <div class="form-check form-switch">
                    <input class="form-check-input " type="checkbox" id="Headline" name="headline" value="1" style="cursor: pointer;">
                    <label class="form-check-label " for="Headline">
                      Headline
                    </label>
                  </div>
                  <div class="form-check form-switch">
                    <input class="form-check-input" type="checkbox" id="FirstSection" name="first_section" value="1" style="cursor: pointer;">
                    <label class="form-check-label" for="FirstSection">
                      FirstSection
                    </label>
                  </div>
                  <div class="form-check form-switch">
                    <input class="form-check-input " type="checkbox" id="General" name="bigthumbnail" value="1" style="cursor: pointer;">
                    <label class="form-check-label" for="General">
                      General big thumbnail
                    </label>
                  </div>
                  <div class="form-check form-switch">
                    <input class="form-check-input" type="checkbox" id="firstbigthumbnail" name="first_section_thumb" value="1" style="cursor: pointer;">
                    <label class="form-check-label" for="firstbigthumbnail">
                      FirstSection Big Thumbnail
                    </label>
                  </div>
                </div>
                <div class="col-12">
                  <button id="submit-btn" type="submit" class="btn btn-primary ">Post</button>
                  <div class="spinner-border spinner-border-sm text-primary d-none" id="spinner" role="status">
                    <span class="visually-hidden">Loading...</span>
                  </div>
                </div>

              </form>
    </div>
  </div>

<script src="{{ asset('admin/assets/js/ckeditor.js') }}"></script>
<script src="{{ asset('admin/assets/js/ckscript.js') }}"></script>
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<script src="{{ asset('admin/assets/js/axiosreq.js') }}"></script>

<script>

    $(document).ready(function() {
        $('form').on('submit', function() {
            $('#submit-btn').hide();
            $('#spinner').show();
        });
        });

    $(document).ready(function() {
      $('form').on('submit', function() {
        $('#submit-btn').hide();
        $('#spinner').show();
      });

      $('form').on('ajaxComplete', function() {
        $('#spinner').hide();
        $('#submit-btn').show();
      });

</script>



@endsection
