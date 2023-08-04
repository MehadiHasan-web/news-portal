@extends('admin/master/master')
@section('content')
{{-- <div class="d-flex justify-content-between mt-4 align-items-center">
    <h2>Category</h2>
    <div class="d-flex">
        <h6><a href="{{ route('dashboard') }}" class="text-decoration-none">Home </a> </h6>
        <h6> / Category</h6>
    </div>
</div> --}}

<h1 class="mt-4">Posts</h1>

<div class=" mb-4">
    <div class="d-flex justify-content-between">
        <ol class="breadcrumb mb-4">
            <li class="breadcrumb-item"><a href="{{ route('dashboard') }}" class="text-decoration-none">Dashboard</a></li>
            <li class="breadcrumb-item active">List</li>
        </ol>

        <a  href="{{ route('post.create') }}">
            <button  type="button" class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#exampleModal">Add New</button>
        </a>
    </div>
</div>
<div class="d-flex justify-content-center">
    <div class=" mb-3 " style="max-width: 900px;">
        <div class="d-flex justify-content-end ">
            <form action="{{ route('search') }}" method="POST" class="w-100">
                {{-- @method('GET') --}}
                @csrf
                <div class="input-group mb-3 me-2 ">
                    <input name="search" style="height: 36px; margin-top: 4px;" type="text" class="form-control" name="query" placeholder="Ask me anything..." aria-label="Ask me anything..." aria-describedby="button-addon2">
                    <div class="input-group-append mt-1 ">
                        <select class="custom-select btn btn-outline-light text-dark border border-primary " name="category" id="category">
                            <option selected >Category</option>
                            @foreach ($categories as $item)
                            <option value="{{ $item->id }}">{{ $item->category_bn }}</option>
                            @endforeach
                        </select>
                        <select class="custom-select btn btn-outline-light text-dark border border-primary" name="subdistrict" id="subcategory">
                            <option selected >District</option>
                            @foreach ($district as $item)
                            <option value="{{ $item->id }}">{{ $item->district_bn }}</option>
                            @endforeach
                        </select>
                        <button class="btn btn-outline-secondary btn-sm" type="submit" id="searchButton">Search</button>
                    </div>
                </div>
            </form>

        </div>


        @foreach($post as $data)
        <div class="row g-0 p-2 border mt-2 position-relative shadow-sm">
          <div class="col-md-2">
            <img src="{{ URL::to($data->image) }}" style="width: 150px; height:auto;" alt="" class="border-rounded">
          </div>
          <div class="col-md-10 px-3">
            <div class="">
              <h5 class=""><a class="text-decoration-none" href="{{ route('post.show', $data->id) }}">{{ $data->title_bn }}</a></h5>
              <p class="">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              <div class="d-flex">
                <p class=" ">{{ $data->category_bn }}  @if (isset($data->sub_category_bn ))
                    || {{ $data->sub_category_bn }}
                @else

                @endif</p>
                <p class="m-0 ms-2"><small class="text-muted">|| {{ \Carbon\Carbon::parse($data->created_at)->diffForHumans() }}</small></p>
              </div>
            </div>
            <div class="btn-group dropstart position-absolute top-0 end-0 m-2">
                <button type="button" class="btn btn-sm btn-light text-dark border border-secondary rounded" data-bs-toggle="dropdown" aria-expanded="false">

                      <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M10.5 6h9.75M10.5 6a1.5 1.5 0 11-3 0m3 0a1.5 1.5 0 10-3 0M3.75 6H7.5m3 12h9.75m-9.75 0a1.5 1.5 0 01-3 0m3 0a1.5 1.5 0 00-3 0m-3.75 0H7.5m9-6h3.75m-3.75 0a1.5 1.5 0 01-3 0m3 0a1.5 1.5 0 00-3 0m-9.75 0h9.75" />
                      </svg>


                </button>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="{{ route('post.edit', $data->id) }}">Edit</a></li>
                    <li><a class="dropdown-item" href="{{ route('post.show', $data->id) }}">Show</a></li>
                    <hr class="m-0">
                    <li>
                        <form action="{{ route('post.destroy', $data->id) }}" method="POST" class="d-inline ps-3 ">
                            @csrf
                            @method('DELETE')
                            <button class="btn btn-danger btn-sm mt-1 " type="submit" onclick="return confirm('Are you sure you want to delete this category?')">
                                Delate
                            </button>
                        </form>
                    </li>
                </ul>
            </div>
        </div>


        </div>
        @endforeach
       <div class="d-flex justify-content-end mt-2">
        {{ $post->links('pagination::bootstrap-4') }}
       </div>
      </div>


</div>








@endsection
