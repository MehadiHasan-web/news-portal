    <!-- header-start -->
	<section class="hdr_section">
		<div class="container-fluid">
			<div class="row">
				<div class="col-xs-6 col-md-2 col-sm-4">
					<div class="header_logo">
						<a href="{{ route('frontend.home') }}"><img src="{{ asset('frontend/assets/img/demo_logo.png') }}"></a>
					</div>
				</div>
				<div class="col-xs-6 col-md-8 col-sm-8">
					<div id="menu-area" class="menu_area">
						<div class="menu_bottom">
							<nav role="navigation" class="navbar navbar-default mainmenu">
						<!-- Brand and toggle get grouped for better mobile display -->
								<div class="navbar-header">
									<button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
										<span class="sr-only">Toggle navigation</span>
										<span class="icon-bar"></span>
										<span class="icon-bar"></span>
										<span class="icon-bar"></span>
									</button>
								</div>
								<!-- Collection of nav links and other content for toggling -->
								<div id="navbarCollapse" class="collapse navbar-collapse">
									<ul class="nav navbar-nav">
                                        @foreach ($categories as $category)
                                            @php
                                                $subcategories = DB::table('sub_categories')->where('category_id',$category->id)->get();
                                            @endphp

                                                @php
                                                if (session()->get('lang') == 'bangla') {
                                                $categorySlug = strtolower(trim(preg_replace('/[^A-Za-z0-9-\x{0980}-\x{09FF}]+/u', '-', $category->category_bn)));
                                                // dd($first_sectionSlug);
                                                } else {
                                                $categorySlug = strtolower(trim(preg_replace('/[^A-Za-z0-9-\x{0980}-\x{09FF}]+/u', '-', $category->category_en)));
                                                // dd($first_sectionSlug);
                                                }
                                                @endphp

											<li class="dropdown">
                                                @if (session()->get('lang')=='bangla')
                                                <a href="{{ route('menu.catSearch', ['id' => $category->id, 'slug' => $categorySlug]) }}" class="dropdown-toggle" >{{ $category->category_bn }} </b></a>
                                                @else
                                                <a href="{{ route('menu.catSearch', ['id' => $category->id, 'slug' => $categorySlug]) }}" class="dropdown-toggle" >{{ $category->category_en }} </b></a>
                                                @endif

											@if (isset($subcategories))
                                            <ul class="dropdown-menu">
                                                @foreach ($subcategories as $subcategory)

                                                @php
                                                if (session()->get('lang') == 'bangla') {
                                                $subcategorySlug = strtolower(trim(preg_replace('/[^A-Za-z0-9-\x{0980}-\x{09FF}]+/u', '-', $subcategory->sub_category_bn)));
                                                // dd($first_sectionSlug);
                                                } else {
                                                $subcategorySlug = strtolower(trim(preg_replace('/[^A-Za-z0-9-\x{0980}-\x{09FF}]+/u', '-', $subcategory->sub_category_en)));
                                                // dd($first_sectionSlug);
                                                }
                                                @endphp


                                                   @if (session()->get('lang')=='bangla')
                                                   <li><a href="">{{ $subcategory->sub_category_bn }}</a></li>
                                                   @else
                                                   <li><a href="">{{ $subcategory->sub_category_en }}</a></li>
                                                   @endif
                                                @endforeach
											</ul>
                                            @endif
											</li>
                                        @endforeach

									</ul>
								</div>
							</nav>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-md-2 col-sm-12">
					<div class="header-icon">
						<ul>
							<!-- version-start -->
                            @if (session()->get('lang') === 'bangla')
                            <li class="version"><a href="{{ route('language.english') }}">English</a></li>
                            @else
                            <li class="version"><a href="{{ route('language.bangla') }}">বাংলা</a></li>
                            @endif


							<!-- login-start -->

							<!-- search-start -->
							<li><div class="search-large-divice">
								<div class="search-icon-holder"> <a href="#" class="search-icon" data-toggle="modal" data-target=".bd-example-modal-lg"><i class="fa fa-search" aria-hidden="true"></i></a>
									<div class="modal fade bd-example-modal-lg" action="" tabindex="-1" role="dialog" aria-hidden="true" style="display: none;">
										<div class="modal-dialog modal-lg">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal" aria-label="Close"> <i class="fa fa-times-circle" aria-hidden="true"></i> </button>
												</div>
												<div class="modal-body">
													<div class="row">
														<div class="col-md-12">
															<div class="custom-search-input">
																<form>
																	<div class="input-group">
																		<input class="search form-control input-lg" placeholder="search" value="Type Here.." type="text">
																		<span class="input-group-btn">
																		<button class="btn btn-lg" type="button"> <i class="fa fa-search" aria-hidden="true"></i> </button>
																	</span> </div>
																</form>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div></li>
							<!-- social-start -->
							<li>
								<div class="dropdown">
								  <button class="dropbtn-02"><i class="fa fa-thumbs-up" aria-hidden="true"></i></button>
								  <div class="dropdown-content">
									<a href="{{ $social->facebook ?? '' ?? '' }}"><i class="fa fa-facebook" aria-hidden="true"></i> Facebook</a>
									<a href="{{ $social->twitter ?? '' }}"><i class="fa fa-twitter" aria-hidden="true"></i> Twitter</a>
									<a href="{{ $social->youtube ?? '' }}"><i class="fa fa-youtube-play" aria-hidden="true"></i> Youtube</a>
									<a href="{{ $social->instagram ?? '' }}"><i class="fa fa-instagram" aria-hidden="true"></i> Instagram</a>
									<a href="{{ $social->linkedin ?? '' }}"><i class="fa fa-linkedin" aria-hidden="true"></i> linkedin</a>
								  </div>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section><!-- /.header-close -->
