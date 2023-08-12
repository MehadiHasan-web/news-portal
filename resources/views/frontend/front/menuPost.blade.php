@extends('frontend.master.master')
 @section('content')
 @php
 use Illuminate\Support\Str;
 @endphp

 @php
    function bn_date($str)
    {
    $en = array(1,2,3,4,5,6,7,8,9,0);
    $bn = array('১','২','৩','৪','৫','৬','৭',' ৮','৯','০');
    $str = str_replace($en, $bn, $str);
    $en = array( 'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', ' December');
    $en_short = array('Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'July', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec');
    $bn = array( 'জানুয়ারী', 'ফেব্রুয়ারী', 'মার্চ', 'এরিল', 'মে', 'জুন', 'জুলাই', 'অগাস্ট', 'সেপটেম্বর', 'অক্টোবর', 'নভেম্বর', 'ডিসেম্বর');
    $str = str_replace( $en, $bn, $str);
    $str = str_replace( $en_short, $bn, $str);
    $en = array('Saturday','Sunday','Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday');
    $en_short = array('Sat', 'Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri');
    $bn_short = array('শনি', 'রবি','সোম','মঙ্গল','বুধ','বৃহঃ','শুক্র');
    $bn = array('শনিবার','রবিবার','সোমবার','মঙ্গলবার','বুধবার','বৃহস্পতিবার','শুক্রবার' );
    $str = str_replace( $en, $bn, $str);
    $str = str_replace($en_short, $bn_short, $str);
    $en = array('am', 'pm');
    $bn = array( 'পূর্বাহ্ন', 'অপরাহ্ন' );
    $str = str_replace($en, $bn, $str);
    $str = str_replace( $en_short, $bn_short, $str);
    $en = array('১২', '২৪');
    $bn = array('৬','১২');
    $str = str_replace( $en, $bn, $str);
    return $str;
    }
    @endphp

    <section>
    	<div class="container-fluid">
    		<div class="row">
    			<div class="col-md-12 col-sm-12">
					<div class="date">
						<ul>
                            <script type="text/javascript" src="http://bangladate.appspot.com/index2.php"></script>
							<li><i class="fa fa-map-marker" aria-hidden="true"></i>
                                @if (session()->get('lang')=='bangla')
                                ঢাকা
                                @else
                                  Dhaka
                                @endif
                            </li>
							<li><i class="fa fa-calendar" aria-hidden="true"></i>
                                @if (session()->get('lang')=='bangla')
                                {{ bn_date(date('d M Y,l,h:i:s a'))}}
                                @else
                                {{ date('d M Y,l,h:i:s a')}}
                                @endif
                            </li>
							<li><i class="fa fa-clock-o" aria-hidden="true"></i>
                                @if (session()->get('lang')=='bangla')
                                আপডেট ৫ মিনিট আগে
                                @else
                                Updated 5 minutes ago
                                @endif
                            </li>
						</ul>

					</div>
				</div>
    		</div>
    	</div>
    </section><!-- /.date-close -->

	<!-- notice-start -->
@if (isset($notice) && $notice->status == 1)

    <section>
    	<div class="container-fluid">
			<div class="row scroll">
				<div class="col-md-2 col-sm-3 scroll_01 ">
					@if (session()->get('lang')=='bangla')
                    শিরোনাম :
                    @else
                    Title :
                    @endif
				</div>
				<div class="col-md-10 col-sm-9 scroll_02">
					<marquee>
                        @if (session()->get('lang')=='bangla')
                            {{ $notice->notice_bn }}
                        @else
                            {{ $notice->notice }}
                        @endif
                    </marquee>
				</div>
			</div>
    	</div>
    </section>
@endif

<!-- single-page-start -->
<section class="single-page">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <ol class="breadcrumb">
                   <li><a href="#"><i class="fa fa-home"></i></a></li>
                    <li class="text-uppercase">{{ session()->get('lang') == 'bangla'?$slugName:$slugName}}</li>
                </ol>
            </div>
        </div>


      <!-- ******** -->
      <div class="row">
        <div class="col-md-8 col-sm-8">



            <!-- ********* -->
            <div class="row">
                <div class="col-md-12"><h2 class="heading">{{ session()->get('lang')=='bangla'?'সংবাদ':'Reed News' }}</h2></div>

                @if (isset($posts))
                    @foreach ($posts as $item)
                    @php
                        if (session()->get('lang') == 'bangla') {
                        $itemSlug = strtolower(trim(preg_replace('/[^A-Za-z0-9-\x{0980}-\x{09FF}]+/u', '-', $item->title_bn)));
                        // dd($first_sectionSlug);
                    } else {
                        $itemSlug = strtolower(trim(preg_replace('/[^A-Za-z0-9-\x{0980}-\x{09FF}]+/u', '-', $item->title_en)));
                        // dd($first_sectionSlug);
                    }
                    @endphp

                    <div class="col-md-4 col-sm-4 mb-3">
                        <div class="top-news sng-border-btm">
                            <a href="{{ route('single.post', ['id' => $item->id, 'slug' => $itemSlug]) }}"><img src="{{ asset($item->image)}}" alt="{{ $item->title_en }}" />
                            <h4 class="heading-02" style="height: 70px;"><a href="{{ route('single.post', ['id' => $item->id, 'slug' => $itemSlug]) }}">
                                    @if (session()->get('lang')=='bangla')
                                        {!! Str::words($item->title_bn, 10, '...') !!}
                                        @else
                                        {!! Str::words($item->title_en, 10, '...') !!}
                                    @endif
                                </a> </h4>
                        </div>
                    </div>
                    @endforeach
                @endif


            </div>

        </div>
        <div class="col-md-4 col-sm-4">

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
