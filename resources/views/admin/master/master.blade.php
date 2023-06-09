<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>News Portal @section('title', 'my ')</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link rel="stylesheet" href="{{ asset('admin/assets/css/ckeditor.css') }}">
        <link href="{{ asset('admin/assets/css/styles.css') }}" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    </head>
    <body class="sb-nav-fixed">
        @include('admin/includes/nav')
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                @include('admin/includes/sidenav')
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                       {{-- @include('admin/includes/main') --}}
                       @yield('content')

                    </div>
                </main>
                @include('admin/includes/footer')
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="{{ asset('admin/assets/js/scripts.js') }}"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="{{ asset('admin/assets/js/datatables-simple-demo.js') }}"></script>

        {{-- <script src="https://cdn.ckeditor.com/ckeditor5/37.1.0/super-build/ckeditor.js"></script> --}}
        {{-- <script src="{{ asset('admin/assets/js/ckeditor.js') }}"></script> --}}
        {{-- <script src="{{ asset('admin/assets/js/ckscript.js') }}"></script> --}}

    </body>
</html>
