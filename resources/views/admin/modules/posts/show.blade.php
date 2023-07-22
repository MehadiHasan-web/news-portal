@extends('admin/master/master')
@section('content')
{{-- <div class="d-flex justify-content-between mt-4 align-items-center">
    <h2>Category</h2>
    <div class="d-flex">
        <h6><a href="{{ route('dashboard') }}" class="text-decoration-none">Home </a> </h6>
        <h6> / Category</h6>
    </div>
</div> --}}

<h1 class="mt-4">Edit Post</h1>

<div class=" mb-4">
    <div class="d-flex justify-content-between">
        <ol class="breadcrumb mb-4">
            <li class="breadcrumb-item"><a href="{{ route('dashboard') }}" class="text-decoration-none">Dashboard</a></li>
            <li class="breadcrumb-item active">Post</li>
        </ol>
    </div>
</div>

<div class="container mb-5">
    <!-- Card Dark -->
<div class="card">

    <!-- Card image -->
    <div class="view overlay">
      <img class="card-img-top " style="height:25rem" src="{{ URL::to($post->image) }}"
        alt="Card image cap">
      <a>
        <div class="mask rgba-white-slight"></div>
      </a>
    </div>

    <!-- Card content -->
    <div class="card-body elegant-color white-text rounded-bottom shadow">

      <!-- Social shares button -->
      <a class="activator waves-effect mr-4"><i class="fas fa-share-alt white-text"></i></a>
      <!-- Title -->
      <h4 class="card-title">{{ $post->title_bn }}</h4>
      <h6>{{ $post->title_en }}</h6>
      <hr class="hr-light">
      <!-- Text -->
      <h4>Description Bangla</h4>
      <p class="card-text white-text mb-4">{!! $post->details_bn !!}</p>
      <!-- Text -->
      <h4>Description English</h4>
      <p class="card-text white-text mb-4">{!! $post->details_en !!}</p>
      <!-- Link -->
        <br>
        <span class="text-muted">Category-</span><h6>{{ $post->cat_id }}</h6>

      <a href="#!" class="white-text d-flex justify-content-end">
        <h5>Read more <i class="fas fa-angle-double-right"></i></h5>
      </a>

    </div>

  </div>
  <!-- Card Dark -->
  </div>





@endsection
