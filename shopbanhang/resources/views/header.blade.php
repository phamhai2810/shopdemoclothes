<!-- Header desktop -->
<header>
	@php $menusHtml = App\Helpers\Helper::menus($menus); @endphp
<div class="container-menu-desktop">
			<!-- Topbar -->
			<div class="top-bar">
				<div class="content-topbar flex-sb-m h-full container">
					<div class="left-top-bar">
						Miễn phí vận chuyển cho đơn hàng trên 100 USD
					</div>

					<div class="right-top-bar flex-w h-full">
						<a href="#" class="flex-c-m trans-04 p-lr-25">
							Hỗ Trợ
						</a>

						<a href="/admin" class="flex-c-m trans-04 p-lr-25">
							Tài Khoản
						</a>

						<a href="#" class="flex-c-m trans-04 p-lr-25">
							Vie
						</a>

						<a href="#" class="flex-c-m trans-04 p-lr-25">
							USD
						</a>
					</div>
				</div>
			</div>

			<div class="wrap-menu-desktop" style="background: #fff !important;">
				<nav class="limiter-menu-desktop container">
					
					<!-- Logo desktop -->		
					<a href="/" class="logo">
						<svg width="151" height="16" viewBox="0 0 151 16" xmlns="http://www.w3.org/2000/svg" aria-hidden="true"><path d="M67.637.293l3.816 9.205L75.269.293h2.725L71.746 15.39l-.293.294-.294-.294L64.911.293h2.726zm-13.712 0c1.468 0 2.86.767 3.627 1.887l-1.467 1.468h-.462c-.304-.65-.973-1.048-1.698-1.048-.863 0-1.672.71-1.72 1.614-.035.68.277 1.105.84 1.468.606.391.854.554 1.677 1.006.897.493 3.166 1.46 3.166 4.005 0 2.509-2.097 4.843-4.802 4.843-.347 0-.976-.039-1.446-.147-1.325-.321-2.129-.822-2.998-1.845l1.887-1.929.65.545c.293.23.937.693 1.55.776 1.246.169 2.082-.655 2.244-1.468.129-.642-.034-1.6-1.069-2.096 0 0-1.866-1.037-2.684-1.51-.833-.482-1.719-1.798-1.719-3.375 0-1.174.538-2.311 1.405-3.103.67-.614 1.589-1.09 3.019-1.09zM138.67 0l9.77 9.77V.587l.294-.294h1.929l.294.294v14.802h-.462l-9.602-9.602v9.309l-.294.293h-1.929l-.293-.293V.293L138.67 0zm-28.807.293v2.223l-.294.293h-2.222v12.58h-2.516V2.809h-2.516V.587l.294-.294h7.254zm9.225 0v2.223l-.294.293h-2.222v12.58h-2.516V2.809h-2.516V.587l.294-.294h7.254zM2.516.293v12.58h5.032v2.516H0V.587L.293.293h2.223zm14.257 0a7.548 7.548 0 110 15.096 7.548 7.548 0 010-15.096zm111.54 0a7.548 7.548 0 110 15.096 7.548 7.548 0 010-15.096zm-98.415 0l.293.294v9.77a2.516 2.516 0 005.032 0V.587l.294-.294h1.929l.293.294v9.77a5.032 5.032 0 01-10.064 0V.587l.294-.294h1.929zm15.389 0v14.803l-.294.293h-2.222V.587l.293-.294h2.223zm37.446 0l.293.294v9.77a2.516 2.516 0 005.032 0V.587l.294-.294h1.928l.294.294v9.77a5.032 5.032 0 01-10.064 0V.587l.294-.294h1.929zm15.389 0v14.803l-.294.293h-2.222V.587l.293-.294h2.223zM16.772 2.81a5.032 5.032 0 10.001 10.065 5.032 5.032 0 000-10.065zm111.541 0a5.032 5.032 0 100 10.065 5.032 5.032 0 000-10.065z" fill-rule="evenodd"></path></svg>
					</a>

					<!-- Menu desktop -->
					<div class="menu-desktop">
						<ul class="main-menu">
							<li class="active-menu">
								<a href="/">Trang Chủ</a>
							</li>
							{!! $menusHtml !!}
							<li>
								<a href="about.html">Về Chúng Tôi</a>
							</li>

							<li>
								<a href="contact.html">Liên Hệ</a>
							</li>
						</ul>
					</div>	

					<!-- Icon header -->
					<div class="wrap-icon-header flex-w flex-r-m">
						<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
							<i class="zmdi zmdi-search"></i>
						</div>
						@php
      						if(is_null(Session::get('carts'))) { $productQuantity = 0; } 
      						else $productQuantity = count(Session::get('carts'));                 
						@endphp
						<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart"
						 data-notify="{{ $productQuantity  }}">
							<i class="zmdi zmdi-shopping-cart"></i>
						</div>

					</div>
				</nav>
			</div>	
		</div>

		<!-- Header Mobile -->
		<div class="wrap-header-mobile">
			<!-- Logo moblie -->		
			<div class="logo-mobile">
				<a href="index.html"><img src="/template/images/icons/logo-01.png" alt="IMG-LOGO"></a>
			</div>

			<!-- Icon header -->
			<div class="wrap-icon-header flex-w flex-r-m m-r-15">
				<div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 js-show-modal-search">
					<i class="zmdi zmdi-search"></i>
				</div>

				<div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti js-show-cart" data-notify="2">
					<i class="zmdi zmdi-shopping-cart"></i>
				</div>
			</div>

			<!-- Button show menu -->
			<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
				<span class="hamburger-box">
					<span class="hamburger-inner"></span>
				</span>
			</div>
		</div>


		<!-- Menu Mobile -->
		<div class="menu-mobile">
			<ul class="topbar-mobile">
				<li>
					<div class="left-top-bar">
						Free shipping for standard order over $100
					</div>
				</li>

				<li>
					<div class="right-top-bar flex-w h-full">
						<a href="#" class="flex-c-m p-lr-10 trans-04">
							Help & FAQs
						</a>

						<a href="#" class="flex-c-m p-lr-10 trans-04">
							My Account
						</a>

						<a href="#" class="flex-c-m p-lr-10 trans-04">
							EN
						</a>

						<a href="#" class="flex-c-m p-lr-10 trans-04">
							USD
						</a>
					</div>
				</li>
			</ul>

			<ul class="main-menu-m">
				<li class="active-menu">
					<a href="/">Trang Chủ</a>
				</li>
				{!! $menusHtml !!}
				<li>
					<a href="about.html">Về Chúng Tôi</a>
				</li>
				<li>
					<a href="contact.html">Liên Hệ</a>
				</li>
			</ul>
		</div>

		<!-- Modal Search -->
		<div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
			<div class="container-search-header">
				<button class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
					<img src="/template/images/icons/icon-close2.png" alt="CLOSE">
				</button>

				<form class="wrap-search-header flex-w p-l-15">
					<button class="flex-c-m trans-04">
						<i class="zmdi zmdi-search"></i>
					</button>
					<input class="plh3" type="text" name="search" placeholder="Search...">
				</form>
			</div>
</div>
</header>