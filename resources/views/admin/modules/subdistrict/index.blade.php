@extends('admin/master/master')
@section('content')
{{-- <div class="d-flex justify-content-between mt-4 align-items-center">
    <h2>Sub District</h2>
    <div class="d-flex">
        <h6><a href="{{ route('dashboard') }}" class="text-decoration-none">Home </a> </h6>
        <h6> / Sub District</h6>
    </div>
</div> --}}

<h1 class="mt-4">Sub District Tables</h1>

<div class=" mb-4">
    <div class="d-flex justify-content-between">
        <ol class="breadcrumb mb-4">
            <li class="breadcrumb-item"><a href="{{ route('dashboard') }}" class="text-decoration-none">Dashboard</a></li>
            <li class="breadcrumb-item active">Tables</li>
        </ol>
        <button  type="button" class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#exampleModal">Add New</button>
    </div>
</div>
<div class="card mb-4">
    <div class="card-header">
        <i class="fas fa-table me-1"></i>
        DataTable Example
    </div>
    <div class="card-body">
        <table id="datatablesSimple">
            <thead>
                <tr>
                    <th>Sub District Name English</th>
                    <th>Sub District Name Bangla</th>
                    <th>District</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tfoot>
                <tr>
                    <th>Sub District Name English</th>
                    <th>Sub District Name Bangla</th>
                    <th>District</th>
                    <th>Action</th>
                </tr>
            </tfoot>
            <tbody>
                @foreach($subdistricts as $subdistrict)
                <tr>
                    <td>{{ $subdistrict->subdistrict_en }}</td>
                    <td>{{ $subdistrict->subdistrict_bn }}</td>
                    <td>{{ $subdistrict->district->district_en }}</td>
                    <td >
                        <a href="{{ route('subdistrict.edit', $subdistrict->id) }}" class="btn btn-info btn-sm "><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
                            <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                            <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
                          </svg>
                        </a>

                        <form action="{{ route('subdistrict.destroy', $subdistrict->id) }}" method="POST" class="d-inline">
                            @csrf
                            @method('DELETE')
                            <button class="btn btn-danger btn-sm " type="submit" onclick="return confirm('Are you sure you want to delete this district?')"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
                                <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5Zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5Zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6Z"/>
                                <path d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1ZM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118ZM2.5 3h11V2h-11v1Z"/>
                                </svg>
                            </button>
                        </form>

                    </td>

                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="exampleModalLabel">Add New Sub District</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
            <form action="{{ route('subdistrict.store') }}" method="POST"> @csrf
                <div class="mb-3">
                  <label for="english" class="form-label">Sub District Name English</label>
                  <input type="text" class="form-control @error('subdistrict_en')is-invalid @enderror" id="cat_en" name="subdistrict_en" >
                    @error('subdistrict_en')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </div>
                <div class="mb-3">
                  <label for="bangla" class="form-label">Sub District Name Bangla</label>
                  <input type="text" class="form-control @error('subdistrict_bn')is-invalid @enderror" id="bangla" name="subdistrict_bn" >
                    @error('subdistrict_bn')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </div>

                <div class="mb-3">
                    <label for="bangla" class="form-label">Sub District</label>
                    <select name="district_id" class="form-select form-select-sm" aria-label=".form-select-sm example" required>
                        <option selected disabled>Select District..</option>
                        @foreach ($districts as $data)
                            <option value="{{ $data->id }}">{{ $data->district_en }} | {{ $data->district_bn }}</option>
                        @endforeach
                    </select>

                  </div>
                <button type="submit" class="btn btn-primary float-end">Submit</button>
              </form>
        </div>
      </div>








    </div>
  </div>




@endsection
