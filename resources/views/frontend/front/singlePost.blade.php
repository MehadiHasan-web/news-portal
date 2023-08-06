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
                    <div class="col-md-6 col-sm-6 pull-right">
                        <ul class="social-nav">
                            <li><a href="" onclick="window.open('https://www.facebook.com/sharer/sharer.php?u='+encodeURIComponent('#'),'facebook-share-dialog','width=626,height=436'); return false;" target="_blank" title="Facebook" rel="nofollow" class="facebook"><i class="fa fa-facebook"></i></a></li>
                            <li><a target="_blank" href="" onclick="javascript:window.open('https://twitter.com/share?text=‘#'); return false;" title="Twitter" rel="nofollow" class="twitter"><i class="fa fa-twitter"></i></a></li>
                            <li><a target="_blank" href="" onclick="window.open('https://plus.google.com/share?url=#'); return false;" title="Google plus" rel="nofollow" class="google"><i class="fa fa-google-plus"></i></a></li>
                            <li><a href="#" target="_blank" title="Print" rel="nofollow" class="print"><i class="fa fa-print"></i></a></li>

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
            <!-- ********* -->
            <div class="row">
                <div class="col-md-12"><h2 class="heading">{{ session()->get('lang')=='bangla'?'আরো সংবাদ':'More News' }}</h2></div>
                <div class="col-md-4 col-sm-4">
                    <div class="top-news sng-border-btm">
                        <a href="#"><img src="{{ asset('frontend/assets/img/news.jpg')}}" alt="Notebook"></a>
                        <h4 class="heading-02"><a href="#">লালমনিরহাটে আওয়ামী লীগ কার্যালয়ে ভাঙচুর</a> </h4>
                    </div>
                </div>
                <div class="col-md-4 col-sm-4">
                    <div class="top-news sng-border-btm">
                        <a href="#"><img src="{{ asset('frontend/assets/img/news.jpg')}}" alt="Notebook"></a>
                        <h4 class="heading-02"><a href="#">লালমনিরহাটে আওয়ামী লীগ কার্যালয়ে ভাঙচুর</a> </h4>
                    </div>
                </div>
                <div class="col-md-4 col-sm-4">
                    <div class="top-news sng-border-btm">
                        <a href="#"><img src="{{ asset('frontend/assets/img/news.jpg')}}" alt="Notebook"></a>
                        <h4 class="heading-02"><a href="#">লালমনিরহাটে আওয়ামী লীগ কার্যালয়ে ভাঙচুর</a> </h4>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 col-sm-4">
                    <div class="top-news">
                        <a href="#"><img src="{{ asset('frontend/assets/img/news.jpg')}}" alt="Notebook"></a>
                        <h4 class="heading-02"><a href="#">লালমনিরহাটে আওয়ামী লীগ কার্যালয়ে ভাঙচুর</a> </h4>
                    </div>
                </div>
                <div class="col-md-4 col-sm-4">
                    <div class="top-news">
                        <a href="#"><img src="{{ asset('frontend/assets/img/news.jpg')}}" alt="Notebook"></a>
                        <h4 class="heading-02"><a href="#">লালমনিরহাটে আওয়ামী লীগ কার্যালয়ে ভাঙচুর</a> </h4>
                    </div>
                </div>
                <div class="col-md-4 col-sm-4">
                    <div class="top-news">
                        <a href="#"><img src="{{ asset('frontend/assets/img/news.jpg')}}" alt="Notebook"></a>
                        <h4 class="heading-02"><a href="#">লালমনিরহাটে আওয়ামী লীগ কার্যালয়ে ভাঙচুর</a> </h4>
                    </div>
                </div>
            </div>
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
                    <li role="presentation" class="active"><a href="#tab21" aria-controls="tab21" role="tab" data-toggle="tab" aria-expanded="false">সর্বশেষ</a></li>
                    <li role="presentation" ><a href="#tab22" aria-controls="tab22" role="tab" data-toggle="tab" aria-expanded="true">জনপ্রিয়</a></li>
                    <li role="presentation" ><a href="#tab23" aria-controls="tab23" role="tab" data-toggle="tab" aria-expanded="true">জনপ্রিয়1</a></li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content ">
                    <div role="tabpanel" class="tab-pane in active" id="tab21">
                        <div class="news-titletab">
                            <div class="news-title-02">
                                <h4 class="heading-03"><a href="#">লালমনিরহাটে আওয়ামী লীগ কার্যালয়ে ভাঙচুর</a> </h4>
                            </div>
                            <div class="news-title-02">
                                <h4 class="heading-03"><a href="#">লালমনিরহাটে আওয়ামী লীগ কার্যালয়ে ভাঙচুর</a> </h4>
                            </div>
                            <div class="news-title-02">
                                <h4 class="heading-03"><a href="#">লালমনিরহাটে আওয়ামী লীগ কার্যালয়ে ভাঙচুর</a> </h4>
                            </div>
                            <div class="news-title-02">
                                <h4 class="heading-03"><a href="#">লালমনিরহাটে আওয়ামী লীগ কার্যালয়ে ভাঙচুর</a> </h4>
                            </div>
                            <div class="news-title-02">
                                <h4 class="heading-03"><a href="#">লালমনিরহাটে আওয়ামী লীগ কার্যালয়ে ভাঙচুর</a> </h4>
                            </div>
                            <div class="news-title-02">
                                <h4 class="heading-03"><a href="#">লালমনিরহাটে আওয়ামী লীগ কার্যালয়ে ভাঙচুর</a> </h4>
                            </div>
                            <div class="news-title-02">
                                <h4 class="heading-03"><a href="#">লালমনিরহাটে আওয়ামী লীগ কার্যালয়ে ভাঙচুর</a> </h4>
                            </div><div class="news-title-02">
                                <h4 class="heading-03"><a href="#">লালমনিরহাটে আওয়ামী লীগ কার্যালয়ে ভাঙচুর</a> </h4>
                            </div><div class="news-title-02">
                                <h4 class="heading-03"><a href="#">লালমনিরহাটে আওয়ামী লীগ কার্যালয়ে ভাঙচুর</a> </h4>
                            </div><div class="news-title-02">
                                <h4 class="heading-03"><a href="#">লালমনিরহাটে আওয়ামী লীগ কার্যালয়ে ভাঙচুর</a> </h4>
                            </div><div class="news-title-02">
                                <h4 class="heading-03"><a href="#">লালমনিরহাটে আওয়ামী লীগ কার্যালয়ে ভাঙচুর</a> </h4>
                            </div><div class="news-title-02">
                                <h4 class="heading-03"><a href="#">লালমনিরহাটে আওয়ামী লীগ কার্যালয়ে ভাঙচুর</a> </h4>
                            </div><div class="news-title-02">
                                <h4 class="heading-03"><a href="#">লালমনিরহাটে আওয়ামী লীগ কার্যালয়ে ভাঙচুর</a> </h4>
                            </div>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane fade" id="tab22">
                        <div class="news-titletab">
                            <div class="news-title-02">
                                <h4 class="heading-03"><a href="#">লালমনিরহাটে আওয়ামী লীগ কার্যালয়ে ভাঙচুর</a> </h4>
                            </div>
                            <div class="news-title-02">
                                <h4 class="heading-03"><a href="#">লালমনিরহাটে আওয়ামী লীগ কার্যালয়ে ভাঙচুর</a> </h4>
                            </div>
                            <div class="news-title-02">
                                <h4 class="heading-03"><a href="#">লালমনিরহাটে আওয়ামী লীগ কার্যালয়ে ভাঙচুর</a> </h4>
                            </div>
                            <div class="news-title-02">
                                <h4 class="heading-03"><a href="#">লালমনিরহাটে আওয়ামী লীগ কার্যালয়ে ভাঙচুর</a> </h4>
                            </div>
                            <div class="news-title-02">
                                <h4 class="heading-03"><a href="#">লালমনিরহাটে আওয়ামী লীগ কার্যালয়ে ভাঙচুর</a> </h4>
                            </div>
                            <div class="news-title-02">
                                <h4 class="heading-03"><a href="#">লালমনিরহাটে আওয়ামী লীগ কার্যালয়ে ভাঙচুর</a> </h4>
                            </div>
                            <div class="news-title-02">
                                <h4 class="heading-03"><a href="#">লালমনিরহাটে আওয়ামী লীগ কার্যালয়ে ভাঙচুর</a> </h4>
                            </div>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane fade" id="tab23">
                        <div class="news-titletab">
                            <div class="news-title-02">
                                <h4 class="heading-03"><a href="#">লালমনিরহাটে আওয়ামী লীগ কার্যালয়ে ভাঙচুর</a> </h4>
                            </div>
                            <div class="news-title-02">
                                <h4 class="heading-03"><a href="#">লালমনিরহাটে আওয়ামী লীগ কার্যালয়ে ভাঙচুর</a> </h4>
                            </div>
                            <div class="news-title-02">
                                <h4 class="heading-03"><a href="#">লালমনিরহাটে আওয়ামী লীগ কার্যালয়ে ভাঙচুর</a> </h4>
                            </div>
                            <div class="news-title-02">
                                <h4 class="heading-03"><a href="#">লালমনিরহাটে আওয়ামী লীগ কার্যালয়ে ভাঙচুর</a> </h4>
                            </div>
                            <div class="news-title-02">
                                <h4 class="heading-03"><a href="#">লালমনিরহাটে আওয়ামী লীগ কার্যালয়ে ভাঙচুর</a> </h4>
                            </div>
                            <div class="news-title-02">
                                <h4 class="heading-03"><a href="#">লালমনিরহাটে আওয়ামী লীগ কার্যালয়ে ভাঙচুর</a> </h4>
                            </div>
                            <div class="news-title-02">
                                <h4 class="heading-03"><a href="#">লালমনিরহাটে আওয়ামী লীগ কার্যালয়ে ভাঙচুর</a> </h4>
                            </div>
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










    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/main.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
</body>
</html>

 @endsection
