@extends('frontend.master.master')
 @section('content')

<!-- single-page-start -->

<section class="single-page">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <ol class="breadcrumb">
                   <li><a href="#"><i class="fa fa-home"></i></a></li>
                    <li><a href="#"></a>{{ session()->get('lang') == 'bangla'?$post->category_bn:$post->category_en }}</li>
                    <li><a href="#">{{session()->get('lang') == 'bangla'? $post->sub_category_bn:$post->sub_category_en }}</a></li>
                </ol>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 col-sm-12">
                <header class="headline-header margin-bottom-10">
                    <h1 class="headline">‘{{ session()->get('lang')=='bangla'?$post->title_bn:$post->title_en }}’</h1>
                </header>


             <div class="article-info margin-bottom-20">
              <div class="row">
                    <div class="col-md-6 col-sm-6">
                     <ul class="list-inline">
                     <li>অন্যদৃষ্টি  অনলাইন </li>     <li><i class="fa fa-clock-o"></i>{{ \Carbon\Carbon::parse($post->created_at)->diffForHumans() }}</li>
                     </ul>

                    </div>

                </div>
             </div>
        </div>
      </div>
      <!-- ******** -->
      <div class="row">
        <div class="col-md-8 col-sm-8">
            <div class="single-news">
                <img src="{{ asset($post->image)}}" alt="{{ $post->title_en }}" />
                <h4 class="caption"> বাংলাদেশে করোনাভাইরাসের পরীক্ষা ব্যাপকহারে করা এবং চিকিৎসা ব্যবস্থা নিয়ে প্রশ্ন থাকছেই। - ছবি : বিবিসি </h4>
                <p class="text-justify">{!! session()->get('lang')=='bangla'? $post->details_bn:$post->details_en !!}</p>
            </div>

            {{--facebook comment  --}}
            <div class="mb-3">
                <div class="fb-comments" data-href="{{ Request::url() }}" data-width="" data-numposts="5"></div>
            </div>
            <!-- ********* -->
            <div class="row">
                <div class="col-md-12"><h2 class="heading">{{ session()->get('lang')=='bangla'?'আরো সংবাদ':'More News' }}</h2></div>

                @if (isset($ThreePost))
                    @foreach ($ThreePost as $item)
                    @php
                        if (session()->get('lang') == 'bangla') {
                        $ThreePostSlug = strtolower(trim(preg_replace('/[^A-Za-z0-9-\x{0980}-\x{09FF}]+/u', '-', $item->title_bn)));
                        // dd($first_sectionSlug);
                    } else {
                        $ThreePostSlug = strtolower(trim(preg_replace('/[^A-Za-z0-9-\x{0980}-\x{09FF}]+/u', '-', $item->title_en)));
                        // dd($first_sectionSlug);
                    }
                    @endphp

                    <div class="col-md-4 col-sm-4 mb-3">
                        <div class="top-news sng-border-btm">
                            <a href="{{ route('single.post', ['id' => $item->id, 'slug' => $ThreePostSlug]) }}"><img src="{{ asset($item->image)}}" alt="{{ $item->title_en }}" />
                            <h4 class="heading-02"><a href="{{ route('single.post', ['id' => $item->id, 'slug' => $ThreePostSlug]) }}">{{ session()->get('lang')=='bangla'?$item->title_bn:$item->title_en }}</a> </h4>
                        </div>
                    </div>
                    @endforeach
                @endif


            </div>
            @if (isset($moreThreePost))
            <div class="row">
                @foreach ($moreThreePost as $item)
                @php
                        if (session()->get('lang') == 'bangla') {
                        $moreThreePostSlug = strtolower(trim(preg_replace('/[^A-Za-z0-9-\x{0980}-\x{09FF}]+/u', '-', $item->title_bn)));
                        // dd($first_sectionSlug);
                    } else {
                        $moreThreePostSlug = strtolower(trim(preg_replace('/[^A-Za-z0-9-\x{0980}-\x{09FF}]+/u', '-', $item->title_en)));
                        // dd($first_sectionSlug);
                    }
                @endphp
                <div class="col-md-4 col-sm-4">
                    <div class="top-news sng-border-btm">
                        <a href="{{ route('single.post', ['id' => $item->id, 'slug' => $moreThreePostSlug]) }}"><img src="{{ asset($item->image)}}" alt="{{ $item->title_en }}" />
                        <h4 class="heading-02"><a href="{{ route('single.post', ['id' => $item->id, 'slug' => $moreThreePostSlug]) }}">{{ session()->get('lang')=='bangla'?$item->title_bn:$item->title_en }}</a> </h4>
                    </div>
                </div>
                @endforeach
            </div>
            @endif
        </div>
        <div class="col-md-4 col-sm-4">
            <!-- add-start -->
                <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <div class="sidebar-add"><img src="{{ asset('frontend/assets/img/add_01.jpg') }}" alt="" /></div>
                    </div>
                </div><!-- /.add-close -->
            <div class="tab-header">
                <!-- Nav tabs -->
                <ul class="nav nav-tabs nav-justified" role="tablist">
                    <li role="presentation" class="active"><a href="#tab21" aria-controls="tab21" role="tab" data-toggle="tab" aria-expanded="false">{{ session()->get('lang') == 'bangla'?'সর্বশেষ':'Latest' }}</a></li>
                    <li role="presentation" ><a href="#tab22" aria-controls="tab22" role="tab" data-toggle="tab" aria-expanded="true">{{ session()->get('lang') == 'bangla'?'জনপ্রিয়':'Popular' }}</a></li>
                    <li role="presentation" ><a href="#tab23" aria-controls="tab23" role="tab" data-toggle="tab" aria-expanded="true">{{ session()->get('lang') == 'bangla'?'পঠিত':'High Reed' }}</a></li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content ">
                    <div role="tabpanel" class="tab-pane in active" id="tab21">
                        <div class="news-titletab">
                            @if (isset($latest))
                               @foreach ($latest as $item)
                               @php
                               if (session()->get('lang') == 'bangla') {
                               $itemSlug = strtolower(trim(preg_replace('/[^A-Za-z0-9-\x{0980}-\x{09FF}]+/u', '-', $item->title_bn)));
                               // dd($first_sectionSlug);
                                } else {
                                    $itemSlug = strtolower(trim(preg_replace('/[^A-Za-z0-9-\x{0980}-\x{09FF}]+/u', '-', $item->title_en)));
                                    // dd($first_sectionSlug);
                                }
                                @endphp
                               <div class="news-title-02">
                                <h4 class="heading-03"><a href="{{ route('single.post', ['id' => $item->id, 'slug' => $itemSlug]) }}">{{ session()->get('lang')=='bangla'?$item->title_bn:$item->title_en }}</a> </h4>
                                </div>
                               @endforeach
                            @endif

                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane fade" id="tab22">
                        <div class="news-titletab">
                            @if (isset($popular))
                               @foreach ($popular as $item)
                               @php
                               if (session()->get('lang') == 'bangla') {
                               $itemSlug = strtolower(trim(preg_replace('/[^A-Za-z0-9-\x{0980}-\x{09FF}]+/u', '-', $item->title_bn)));
                               // dd($first_sectionSlug);
                                } else {
                                    $itemSlug = strtolower(trim(preg_replace('/[^A-Za-z0-9-\x{0980}-\x{09FF}]+/u', '-', $item->title_en)));
                                    // dd($first_sectionSlug);
                                }
                                @endphp
                               <div class="news-title-02">
                                <h4 class="heading-03"><a href="{{ route('single.post', ['id' => $item->id, 'slug' => $itemSlug]) }}">{{ session()->get('lang')=='bangla'?$item->title_bn:$item->title_en }}</a> </h4>
                                </div>
                               @endforeach
                            @endif
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane fade" id="tab23">
                        <div class="news-titletab">
                            @if (isset($highReed))
                               @foreach ($highReed as $item)
                               @php
                               if (session()->get('lang') == 'bangla') {
                               $itemSlug = strtolower(trim(preg_replace('/[^A-Za-z0-9-\x{0980}-\x{09FF}]+/u', '-', $item->title_bn)));
                               // dd($first_sectionSlug);
                                } else {
                                    $itemSlug = strtolower(trim(preg_replace('/[^A-Za-z0-9-\x{0980}-\x{09FF}]+/u', '-', $item->title_en)));
                                    // dd($first_sectionSlug);
                                }
                                @endphp
                               <div class="news-title-02">
                                <h4 class="heading-03"><a href="{{ route('single.post', ['id' => $item->id, 'slug' => $itemSlug]) }}">{{ session()->get('lang')=='bangla'?$item->title_bn:$item->title_en }}</a> </h4>
                                </div>
                               @endforeach
                            @endif
                        </div>
                    </div>
                </div>
            </div>
            <!-- add-start -->
                <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <div class="sidebar-add"><img src="{{ asset('frontend/assets/img/add_01.jpg') }}" alt="" /></div>
                    </div>
                </div><!-- /.add-close -->
        </div>
      </div>
    </div>
</section>

{{-- facebook command js  --}}
<div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v17.0" nonce="fOpRuA6c"></script>

{{-- share post  --}}
<script type="text/javascript" src="https://platform-api.sharethis.com/js/sharethis.js#property=64d7c2ffc3ffed001200cccb&product=sticky-share-buttons&source=platform" async="async" data-href="{{ Request::url() }}"></script>

<div class="sharethis-sticky-share-buttons" data-href="{{ Request::url() }}"></div>

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/main.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
</body>
</html>

 @endsection
