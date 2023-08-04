@extends('frontend.master.master')
 @section('content')
	<!-- date-start -->
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
	<!-- 1st-news-section-start -->
	<section class="news-section">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-9 col-sm-8">
					<div class="row">
						<div class="col-md-1 col-sm-1 col-lg-1"></div>
						<div class="col-md-10 col-sm-10">
							<div class="lead-news">
								<div class="service-img"><a href="#"><img src="{{ URL::to($latestPost->image) }}" alt="{{ $latestPost->title_bn }}"></a></div>
								<div class="content">
								<h4 class="lead-heading-01"><a href="#">
                                    @if (session()->get('lang')=='bangla')
                                    {{ $latestPost->title_bn }}
                                    @else
                                    {{ $latestPost->title_en }}
                                    @endif
                                </a> </h4>
								</div>
							</div>
						</div>
					</div>
						<div class="row">


                            @foreach($first_section as $post)
                            <div class="col-md-3 col-sm-3">
                                <div class="top-news">
                                    <a href="#"><img src="{{ URL::to($post->image) }}" alt="{{ $post->title_en }}"></a>
                                    <h4 class="heading-02" style="height: 70px;"><a href="#">
                                        @if (session()->get('lang')=='bangla')
                                        {{   substr($post->title_bn, 0, 60).'..' }}
                                        @else
                                        {!! Str::words($post->title_en, 10, '...') !!}
                                        @endif
                                    </a> </h4>
                                </div>
                            </div>
                            @endforeach


						</div>


					<!-- add-start -->
					<div class="row">
						<div class="col-md-12 col-sm-12">
							<div class="add"><img src="{{ asset('frontend/assets/img/top-ad.jpg') }}" alt="" /></div>
						</div>
					</div><!-- /.add-close -->

					<!-- news-start -->
					<div class="row">
						<div class="col-md-6 col-sm-6">
							<div class="bg-one">
								<div class="cetagory-title"><a href="#">
                                    @if (session()->get('lang')=='bangla')
                                    {{ $firstCategory->category_bn }}
                                    @else
                                    {{ $firstCategory->category_en }}
                                    @endif
                                    <span>
                                    @if (session()->get('lang')=='bangla')
                                    আরও
                                    @else
                                    More
                                    @endif
                                    <i class="fa fa-angle-double-right" aria-hidden="true"></i></span></a></div>
								<div class="row">
									<div class="col-md-6 col-sm-6">
										@if (isset($big_thumcat) && $big_thumcat->big_thumbnail==1)
                                        <div class="top-news">
											<a href="#"><img src="{{ asset($big_thumcat->image) }}" alt="Notebook"></a>
											<h4 class="heading-02"><a href="#">
                                                @if (session()->get('lang')=='bangla')
                                                {{ $big_thumcat->title_bn }}
                                                @else
                                                {{ $big_thumcat->title_en }}
                                                @endif
                                            </a> </h4>
										</div>
                                        @endif
									</div>
									<div class="col-md-6 col-sm-6">
                                        @foreach ($limitpostbycat as $item)
                                        <div class="image-title">
											<a href="#"><img src="{{ asset($item->image) }}" alt="{{ $item->title_en }}"></a>
											<h4 class="heading-03"><a href="#">
                                                @if (session()->get('lang')=='bangla')
                                                {{ $item->title_bn }}
                                                @else
                                                {{ $item->title_en }}
                                                @endif
                                            </a> </h4>
										</div>
                                        @endforeach


									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-sm-6">
							<div class="bg-one">
								<div class="cetagory-title"><a href="#">
                                    @if (session()->get('lang')=='bangla')
                                    {{ $secondCategory->category_bn }}
                                    @else
                                    {{ $secondCategory->category_en }}
                                    @endif
                                    <span>
                                    @if (session()->get('lang')=='bangla')
                                    আরও
                                    @else
                                    More
                                    @endif
                                    <i class="fa fa-angle-double-right" aria-hidden="true"></i></span></a></div>
								<div class="row">
									<div class="col-md-6 col-sm-6">
										@if (isset($secondCategoryBigThumbs) && $secondCategoryBigThumbs->big_thumbnail==1)
                                        <div class="top-news">
											<a href="#"><img src="{{ asset($secondCategoryBigThumbs->image) }}" alt="Notebook"></a>
											<h4 class="heading-02"><a href="#">
                                                @if (session()->get('lang')=='bangla')
                                                {{ $secondCategoryBigThumbs->title_bn }}
                                                @else
                                                {{ $secondCategoryBigThumbs->title_en }}
                                                @endif
                                            </a> </h4>
										</div>
                                        @endif
									</div>
									<div class="col-md-6 col-sm-6">
                                        @foreach ($secondCategoryPosts as $item)
                                        <div class="image-title">
											<a href="#"><img src="{{ asset($item->image) }}" alt="{{ $item->title_en }}"></a>
											<h4 class="heading-03"><a href="#">
                                                @if (session()->get('lang')=='bangla')
                                                {{ $item->title_bn }}
                                                @else
                                                {{ $item->title_en }}
                                                @endif
                                            </a> </h4>
										</div>
                                        @endforeach
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-3">
					<!-- add-start -->
					<div class="row">
						<div class="col-md-12 col-sm-12">
							<div class="sidebar-add"><img src="{{ asset('frontend/assets/img/add_01.jpg') }}" alt="" /></div>
						</div>
					</div><!-- /.add-close -->

					<!-- youtube-live-start -->
                    @if (isset($livetv) && $livetv->status==1)
                        <div class="cetagory-title-03">
							@if (session()->get('lang')=='bangla')
							লাইভ টিভি
							@else
								Live TV
							@endif
						</div>
                        <div class="photo">
                            <div class="embed-responsive embed-responsive-16by9 embed-responsive-item" style="margin-bottom:5px;">
                                {!! $livetv->embed_code  ?? ''!!}
                            </div>
                        </div>
                    @endif
					<!-- /.youtube-live-close -->

					<!-- facebook-page-start -->
					<div class="cetagory-title-03">ফেসবুকে আমরা</div>
					<div class="fb-root">
						facebook page here
					</div><!-- /.facebook-page-close -->

					<!-- add-start -->
					<div class="row">
						<div class="col-md-12 col-sm-12">
							<div class="sidebar-add">
								<img src="{{ asset('frontend/assets/img/add_01.jpg') }}" alt="" />
							</div>
						</div>
					</div><!-- /.add-close -->
				</div>
			</div>
		</div>
	</section><!-- /.1st-news-section-close -->

	<!-- 2nd-news-section-start -->
	<section class="news-section">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-6 col-sm-6">
					<div class="bg-one">
						<div class="cetagory-title-02"><a href="#">
                            @if (session()->get('lang')=='bangla')
                                {{ $thirdCategory->category_bn }}
                            @else
                                {{ $thirdCategory->category_en }}
                            @endif
                            <i class="fa fa-angle-right" aria-hidden="true"></i> <span><i class="fa fa-plus" aria-hidden="true"></i>
                                @if (session()->get('lang')=='bangla')
                                সব খবর
                                @else
                                All News
                                @endif  </span></a></div>
						<div class="row">
							<div class="col-md-6 col-sm-6">
								<div class="top-news">
									<a href="#"><img src="{{ asset($thirdCategoryPostsThumb->image) }}" alt="Notebook"></a>
									@if (session()->get('lang')=='bangla')
                                    <h4 class="heading-02"><a href="#">{{ $thirdCategoryPostsThumb->title_bn }}</a> </h4>
                                    @else
                                    <h4 class="heading-02"><a href="#">{{ $thirdCategoryPostsThumb->title_en }}</a> </h4>
                                    @endif
								</div>
							</div>
							<div class="col-md-6 col-sm-6">
                                @foreach ($thirdCatPosts as $item)
                                <div class="image-title">
									<a href="#"><img src="{{ asset($item->image) }}" alt=""></a>
									<h4 class="heading-03"><a href="#">
                                    @if (session()->get('lang')=='bangla')
                                        {{ $item->title_bn }}
                                    @else
                                        {{ $item->title_en }}
                                    @endif
                                    </a> </h4>
								</div>
                                @endforeach


							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-sm-6">
					<div class="bg-one">
						<div class="cetagory-title-02"><a href="#">
                            @if (session()->get('lang')=='bangla')
                                {{ $catFour->category_bn }}
                            @else
                                {{ $catFour->category_en }}
                            @endif
                            <i class="fa fa-angle-right" aria-hidden="true"></i> <span><i class="fa fa-plus" aria-hidden="true"></i>
                                @if (session()->get('lang')=='bangla')
                                সব খবর
                                @else
                                All News
                                @endif
                                 </span></a></div>
						<div class="row">
							<div class="col-md-6 col-sm-6">
								<div class="top-news">
									<a href="#"><img src="{{ asset($fourCatPostsThumb->image) }}" alt="Notebook"></a>
									@if (session()->get('lang')=='bangla')
                                    <h4 class="heading-02"><a href="#">{{ $fourCatPostsThumb->title_bn }}</a> </h4>
                                    @else
                                    <h4 class="heading-02"><a href="#">{{ $fourCatPostsThumb->title_en }}</a> </h4>
                                    @endif
								</div>
							</div>

							<div class="col-md-6 col-sm-6">
								@foreach ($fourCatPosts as $item)
                                <div class="image-title">
									<a href="#"><img src="{{ asset($item->image) }}" alt=""></a>
									<h4 class="heading-03"><a href="#">
                                    @if (session()->get('lang')=='bangla')
                                        {{ $item->title_bn }}
                                    @else
                                        {{ $item->title_en }}
                                    @endif
                                    </a> </h4>
								</div>
                                @endforeach
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- ******* -->
			<div class="row">
				<div class="col-md-6 col-sm-6">
					<div class="bg-one">
						<div class="cetagory-title-02"><a href="#">
                            @if (session()->get('lang')=='bangla')
                                {{ $catFive->category_bn }}
                            @else
                                {{ $catFive->category_en }}
                            @endif
                            <i class="fa fa-angle-right" aria-hidden="true"></i> <span><i class="fa fa-plus" aria-hidden="true"></i>
                                @if (session()->get('lang')=='bangla')
                                সব খবর
                                @else
                                All News
                                @endif  </span></a></div>
						<div class="row">
							<div class="col-md-6 col-sm-6">
								<div class="top-news">
									<a href="#"><img src="{{ asset($fiveCatPostsThumb->image) }}" alt="Notebook"></a>
									@if (session()->get('lang')=='bangla')
                                    <h4 class="heading-02"><a href="#">{{ $fiveCatPostsThumb->title_bn }}</a> </h4>
                                    @else
                                    <h4 class="heading-02"><a href="#">{{ $fiveCatPostsThumb->title_en }}</a> </h4>
                                    @endif
								</div>
							</div>
							<div class="col-md-6 col-sm-6">
                                @foreach ($fiveCatPosts as $item)
                                <div class="image-title">
									<a href="#"><img src="{{ asset($item->image) }}" alt=""></a>
									<h4 class="heading-03"><a href="#">
                                    @if (session()->get('lang')=='bangla')
                                        {{ $item->title_bn }}
                                    @else
                                        {{ $item->title_en }}
                                    @endif
                                    </a> </h4>
								</div>
                                @endforeach


							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-sm-6">
					<div class="bg-one">
						<div class="cetagory-title-02"><a href="#">
                            @if (session()->get('lang')=='bangla')
                                {{ $catSix->category_bn }}
                            @else
                                {{ $catSix->category_en }}
                            @endif
                            <i class="fa fa-angle-right" aria-hidden="true"></i> <span><i class="fa fa-plus" aria-hidden="true"></i>
                                @if (session()->get('lang')=='bangla')
                                সব খবর
                                @else
                                All News
                                @endif
                                 </span></a></div>
						<div class="row">
							<div class="col-md-6 col-sm-6">
								<div class="top-news">
									<a href="#"><img src="{{ asset($sixCatPostsThumb->image) }}" alt="Notebook"></a>
									@if (session()->get('lang')=='bangla')
                                    <h4 class="heading-02"><a href="#">{{ $sixCatPostsThumb->title_bn }}</a> </h4>
                                    @else
                                    <h4 class="heading-02"><a href="#">{{ $sixCatPostsThumb->title_en }}</a> </h4>
                                    @endif
								</div>
							</div>

							<div class="col-md-6 col-sm-6">
								@foreach ($sixCatPosts as $item)
                                <div class="image-title">
									<a href="#"><img src="{{ asset($item->image) }}" alt=""></a>
									<h4 class="heading-03"><a href="#">
                                    @if (session()->get('lang')=='bangla')
                                        {{ $item->title_bn }}
                                    @else
                                        {{ $item->title_en }}
                                    @endif
                                    </a> </h4>
								</div>
                                @endforeach
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- add-start -->
			<div class="row">
				<div class="col-md-6 col-sm-6">
					<div class="add"><img src="{{ asset('frontend/assets/img/top-ad.jpg') }}" alt="" /></div>
				</div>
				<div class="col-md-6 col-sm-6">
					<div class="add"><img src="{{ asset('frontend/assets/img/top-ad.jpg') }}" alt="" /></div>
				</div>
			</div><!-- /.add-close -->

		</div>
	</section><!-- /.2nd-news-section-close -->

	<!-- 3rd-news-section-start -->
	<section class="news-section">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-9 col-sm-9">
					<div class="cetagory-title-02"><a href="#">
                        @if (session()->get('lang')=='bangla')
                        সারাদেশে
                        @else
                        Country
                        @endif
                        <i class="fa fa-angle-right" aria-hidden="true"></i>
                        @if (session()->get('lang')=='bangla')
                        সব জেলার খবর
                        @else
                        All district news
                        @endif<span><i class="fa fa-plus" aria-hidden="true"></i>
                        @if (session()->get('lang')=='bangla')
                        সব খবর
                        @else
                        All News
                        @endif  </span></a></div>

					<div class="row">
						<div class="col-md-4 col-sm-4">
							<div class="top-news">
								<a href="#"><img src="{{ asset($countryPostThumb->image) }}" alt="Notebook"></a>
								<h4 class="heading-02"><a href="#">{{ session()->get('lang') == 'bangle' ? $countryPostThumb->title_bn : $countryPostThumb->title_en }}</a> </h4>
							</div>
						</div>
						<div class="col-md-4 col-sm-4">
                            @foreach ($getDesPost as $item)
                                <div class="image-title">
                                    <a href="#"><img src="{{ URL::to($item->image) }}" alt="Notebook"></a>
                                    <h4 class="heading-03"><a href="#">{{ session()->get('lang') == 'bangla' ? $item->title_bn:$item->title_en }}</a> </h4>
                                </div>
                            @endforeach


						</div>
						<div class="col-md-4 col-sm-4">
							@foreach ($getDesPostThree as $item)
                                <div class="image-title">
                                    <a href="#"><img src="{{ URL::to($item->image) }}" alt="Notebook"></a>
                                    <h4 class="heading-03"><a href="#">{{ session()->get('lang') == 'bangla' ? $item->title_bn:$item->title_en }}</a> </h4>
                                </div>
                            @endforeach
						</div>
					</div>
					<!-- ******* -->
					<br />
					<div class="row">
						<div class="col-md-6 col-sm-6">
							<div class="bg-one">
								<div class="cetagory-title"><a href="#">
                                    @if (session()->get('lang')=='bangla')
                                    {{ $sevenCat->category_bn }}
                                    @else
                                    {{ $sevenCat->category_en }}
                                    @endif
                                    <span>
                                    @if (session()->get('lang')=='bangla')
                                    আরও
                                    @else
                                    More
                                    @endif
                                    <i class="fa fa-angle-double-right" aria-hidden="true"></i></span></a></div>
								<div class="row">
									<div class="col-md-6 col-sm-6">
										@if (isset($sevenCatPostsThumb) && $sevenCatPostsThumb->big_thumbnail==1)
                                        <div class="top-news">
											<a href="#"><img src="{{ asset($sevenCatPostsThumb->image) }}" alt="Notebook"></a>
											<h4 class="heading-02"><a href="#">
                                                @if (session()->get('lang')=='bangla')
                                                {{ $sevenCatPostsThumb->title_bn }}
                                                @else
                                                {{ $sevenCatPostsThumb->title_en }}
                                                @endif
                                            </a> </h4>
										</div>
                                        @endif
									</div>
									<div class="col-md-6 col-sm-6">
                                        @foreach ($sevenCatPosts as $item)
                                        <div class="image-title">
											<a href="#"><img src="{{ asset($item->image) }}" alt="{{ $item->title_en }}"></a>
											<h4 class="heading-03"><a href="#">
                                                @if (session()->get('lang')=='bangla')
                                                {{ $item->title_bn }}
                                                @else
                                                {{ $item->title_en }}
                                                @endif
                                            </a> </h4>
										</div>
                                        @endforeach


									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-sm-6">
							<div class="bg-one">
								<div class="cetagory-title"><a href="#">
                                    @if (session()->get('lang')=='bangla')
                                    {{ $eightCat->category_bn }}
                                    @else
                                    {{ $eightCat->category_en }}
                                    @endif
                                    <span>
                                    @if (session()->get('lang')=='bangla')
                                    আরও
                                    @else
                                    More
                                    @endif
                                    <i class="fa fa-angle-double-right" aria-hidden="true"></i></span></a></div>
								<div class="row">
									<div class="col-md-6 col-sm-6">
										@if (isset($eightCatPostsThumb) && $eightCatPostsThumb->big_thumbnail==1)
                                        <div class="top-news">
											<a href="#"><img src="{{ asset($eightCatPostsThumb->image) }}" alt="Notebook"></a>
											<h4 class="heading-02"><a href="#">
                                                @if (session()->get('lang')=='bangla')
                                                {{ $eightCatPostsThumb->title_bn }}
                                                @else
                                                {{ $eightCatPostsThumb->title_en }}
                                                @endif
                                            </a> </h4>
										</div>
                                        @endif
									</div>
									<div class="col-md-6 col-sm-6">
                                        @if (isset($eightCatPosts))
                                        @foreach ($eightCatPosts as $item)
                                        <div class="image-title">
											<a href="#"><img src="{{ asset($item->image) }}" alt="{{ $item->title_en }}"></a>
											<h4 class="heading-03"><a href="#">
                                                @if (session()->get('lang')=='bangla')
                                                {{ $item->title_bn }}
                                                @else
                                                {{ $item->title_en }}
                                                @endif
                                            </a> </h4>
										</div>
                                        @endforeach
                                        @endif
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-12 col-sm-12">
							<div class="sidebar-add">
								<img src="{{ asset('frontend/assets/img/top-ad.jpg') }}" alt="" />
							</div>
						</div>
					</div><!-- /.add-close -->


				</div>
				<div class="col-md-3 col-sm-3">
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
                                       <div class="news-title-02">
										<h4 class="heading-03"><a href="#">{{ session()->get('lang')=='bangla'?$item->title_bn:$item->title_en }}</a> </h4>
									    </div>
                                       @endforeach
                                    @endif

								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="tab22">
								<div class="news-titletab">
                                    @if (isset($popular))
                                       @foreach ($popular as $item)
                                       <div class="news-title-02">
										<h4 class="heading-03"><a href="#">{{ session()->get('lang')=='bangla'?$item->title_bn:$item->title_en }}</a> </h4>
									    </div>
                                       @endforeach
                                    @endif
								</div>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="tab23">
								<div class="news-titletab">
                                    @if (isset($highReed))
                                       @foreach ($highReed as $item)
                                       <div class="news-title-02">
										<h4 class="heading-03"><a href="#">{{ session()->get('lang')=='bangla'?$item->title_bn:$item->title_en }}</a> </h4>
									    </div>
                                       @endforeach
                                    @endif
								</div>
							</div>
						</div>
					</div>
					<!-- Namaj Times -->
					<div class="cetagory-title-03">
                        @if (session()->get('lang')=='bangla')
                        নামাজের সময়সূচি
                        @else
                        Prayer schedule
                        @endif
                    </div>
					<table class="table justify-content-center">
                        <thead>
                          <tr>
                            @if (session()->get('lang')=='bangla')
                            <th scope="col">নাম</th>
                            <th scope="col">সময়</th>
                            @else
                            <th scope="col">Name</th>
                            <th scope="col">Time</th>
                            @endif

                          </tr>
                        </thead>
                        <tbody>
                        <tr>
                            @if (session()->get('lang')=='bangla')
                            <th>ফজর</th>
                            <td>{{ $namaz->fajr }}</td>
                            @else
                            <th>Fajr</th>
                            <td>{{ $namaz->fajr }}</td>
                            @endif
                        </tr>
                        <tr>
                            @if (session()->get('lang')=='bangla')
                            <th>যোহর</th>
                            <td>{{ $namaz->johr }}</td>
                            @else
                            <th>Johr</th>
                            <td>{{ $namaz->johr }}</td>
                            @endif
                        </tr>
                        <tr>
                            @if (session()->get('lang')=='bangla')
                            <th>আছর</th>
                            <td>{{ $namaz->asor	 }}</td>
                            @else
                            <th>Asor</th>
                            <td>{{ $namaz->asor	 }}</td>
                            @endif
                        </tr>
                        <tr>
                            @if (session()->get('lang')=='bangla')
                            <th>মাগরিব</th>
                            <td>{{ $namaz->magrib }}</td>
                            @else
                            <th>Magrib</th>
                            <td>{{ $namaz->magrib }}</td>
                            @endif
                        </tr>
                        <tr>
                            @if (session()->get('lang')=='bangla')
                            <th>ইশা</th>
                            <td>{{ $namaz->esha }}</td>
                            @else
                            <th>Esha</th>
                            <td>{{ $namaz->esha }}</td>
                            @endif
                        </tr>
                        <tr>
                            @if (session()->get('lang')=='bangla')
                            <th>জুম্মা</th>
                            <td>{{ $namaz->jummah }}</td>
                            @else
                            <th>Jummah</th>
                            <td>{{ $namaz->jummah }}</td>
                            @endif

                        </tr>
                        </tbody>
                    </table>
					<!-- Namaj Times -->
					<div class="cetagory-title-03">পুরানো সংবাদ  </div>
					<form action="" method="post">
						<div class="old-news-date">
						   <input type="text" name="from" placeholder="From Date" required="">
						   <input type="text" name="" placeholder="To Date">
						</div>
						<div class="old-date-button">
							<input type="submit" value="খুজুন ">
						</div>
				   </form>
				   <!-- news -->
				   <br><br><br><br><br>
				   <div class="cetagory-title-04">
                            @if (session()->get('lang')=='bangla')
                            গুরুত্বপূর্ণ ওয়েবসাইট
                            @else
                            Important Websites
                            @endif
                    </div>
				   <div class="">
                    @if (isset($websites))
                    @foreach ($websites as $website)
                        @if (session()->get('lang')=='bangla')
                        <div class="news-title-02">
                            <h4 class="heading-03"><a href="{{ $website->website_link ?? ''}} "><i class="fa fa-check" aria-hidden="true"></i> {{ $website->website_name_bn ?? ''}} </a> </h4>
                        </div>
                        @else
                        <div class="news-title-02">
                            <h4 class="heading-03"><a href="{{ $website->website_link ?? ''}} "><i class="fa fa-check" aria-hidden="true"></i> {{ $website->website_name ?? ''}}   </a> </h4>
                        </div>
                        @endif
				   	@endforeach
                    @endif

				   </div>

				</div>
			</div>
		</div>
	</section><!-- /.3rd-news-section-close -->




	<!-- gallery-section-start -->
	<section class="news-section">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-8 col-sm-7">
					<div class="gallery_cetagory-title">  {{ session()->get('lang')=='bangla'? 'ফটো গ্যালারি':'Photo Gallery' }}</div>

					<div class="row">
	                    <div class="col-md-8 col-sm-8">
	                        <div class="photo_screen">
	                            <div class="myPhotos" style="width:100%">
                                      @if (isset($thumbPhoto))
                                      <img src="{{ asset($thumbPhoto->photo) }}"  alt="{{ $thumbPhoto->title }}">
                                      @endif
	                            </div>
	                        </div>
	                    </div>
	                    <div class="col-md-4 col-sm-4">
	                        <div class="photo_list_bg">
                                @if (isset($thumbPhotoList))
                                @foreach ($thumbPhotoList as $item)
	                            <div class="photo_img photo_border active">
	                                <img src="{{ asset($item->photo) }}" alt="" onclick="currentDiv(1)">
	                                <div class="heading-03">
	                                    {{ $item->title }}
	                                </div>
	                            </div>
                                @endforeach
                                @endif
	                        </div>
	                    </div>
	                </div>

	                <!--=======================================
                    Video Gallery clickable jquary  start
                ========================================-->

                            <script>
                                    var slideIndex = 1;
                                    showDivs(slideIndex);

                                    function plusDivs(n) {
                                      showDivs(slideIndex += n);
                                    }

                                    function currentDiv(n) {
                                      showDivs(slideIndex = n);
                                    }

                                    function showDivs(n) {
                                      var i;
                                      var x = document.getElementsByClassName("myPhotos");
                                      var dots = document.getElementsByClassName("demo");
                                      if (n > x.length) {slideIndex = 1}
                                      if (n < 1) {slideIndex = x.length}
                                      for (i = 0; i < x.length; i++) {
                                         x[i].style.display = "none";
                                      }
                                      for (i = 0; i < dots.length; i++) {
                                         dots[i].className = dots[i].className.replace(" w3-opacity-off", "");
                                      }
                                      x[slideIndex-1].style.display = "block";
                                      dots[slideIndex-1].className += " w3-opacity-off";
                                    }
                                </script>

                <!--=======================================
                    Video Gallery clickable  jquary  close
                =========================================-->

				</div>
				<div class="col-md-4 col-sm-5">
					<div class="gallery_cetagory-title">{{ session()->get('lang') == 'bangla' ? 'ভিডিও গ্যালারি':'Video Gallery' }}</div>

					<div class="row">
                        <div class="col-md-12 col-sm-12">
                            <div class="video_screen">
                                <div class="myVideos" style="width:100%">
                                    <div class="embed-responsive embed-responsive-16by9 embed-responsive-item">
                                    @if (isset($videoThumbGallery))
                                    {!! $videoThumbGallery->embed_code !!}
                                    @endif
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">

                            <div class="gallery_sec owl-carousel">
                                @if (isset($videoList))
                                @foreach ($videoList as $item)
                                <div class="video_image" style="width:100%" onclick="currentDivs(1)">
                                    <div class="video-gallery">
                                        {!! $item->embed_code !!}
                                    </div>
                                    <div class="heading-03">
                                        <div class="content_padding">
                                            {{ $item->title }}
                                        </div>
                                    </div>
                                </div>
                                @endforeach
                                @endif

                            </div>
                        </div>
                    </div>


                    <script>
                        var slideIndex = 1;
                        showDivss(slideIndex);

                        function plusDivs(n) {
                          showDivss(slideIndex += n);
                        }

                        function currentDivs(n) {
                          showDivss(slideIndex = n);
                        }

                        function showDivss(n) {
                          var i;
                          var x = document.getElementsByClassName("myVideos");
                          var dots = document.getElementsByClassName("demo");
                          if (n > x.length) {slideIndex = 1}
                          if (n < 1) {slideIndex = x.length}
                          for (i = 0; i < x.length; i++) {
                             x[i].style.display = "none";
                          }
                          for (i = 0; i < dots.length; i++) {
                             dots[i].className = dots[i].className.replace(" w3-opacity-off", "");
                          }
                          x[slideIndex-1].style.display = "block";
                          dots[slideIndex-1].className += " w3-opacity-off";
                        }
                    </script>

				</div>
			</div>
		</div>
	</section><!-- /.gallery-section-close -->
    @endsection
