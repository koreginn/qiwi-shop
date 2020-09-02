@include('layouts.doctype')

{{-- Подключение стилей --}}

<link rel="stylesheet" type="text/css" href="{{ asset('plugins/OwlCarousel2-2.2.1/owl.carousel.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('plugins/OwlCarousel2-2.2.1/owl.theme.default.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('plugins/OwlCarousel2-2.2.1/animate.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('css/main_styles.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('css/responsive.css') }}">

{{-- Конец --}}

@include('layouts.start')

@include('other.header')

<div class="super_container_inner">
	<div class="super_overlay"></div>

	<div class="products">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 offset-lg-3">
					<div class="section_title text-center">Последние товары</div>
				</div>
			</div>
			<div class="row products_row">
				
				@foreach ($products as $product)              
                    <div class="col-xl-4 col-md-6 grid-item">
                        <div class="product">
                            <div class="product_image"><img src="{{ Voyager::image($product->img_url) }}" title="{{ $product->info }}" alt="Фотография товара"></div>
                            <div class="product_content">
                                <div class="product_info d-flex flex-row align-items-start justify-content-start">
                                    <div>
                                        <div>
                                            <div class="product_name"><a href="#">{{ $product->name  }}</a></div>
                                        </div>
                                    </div>
                                    <div class="ml-auto text-right">
                                        <div class="product_price text-right">{{ $product->price }} ₽</div>
                                    </div>
                                </div>
                                <div class="product_buttons">
                                    <div class="text-right d-flex flex-row align-items-start justify-content-start">
                                        
                                        <div data-id="{{ $product->product_id }}" class="product_button product_cart text-center d-flex flex-column align-items-center justify-content-center">
                                            <div><div><img src="{{ URL::to('/') }}/images/cart.svg" class="svg" alt=""><div>+</div></div></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach

			</div>
		</div>
	</div>

	<div class="features">
		<div class="container">
			<div class="row">
				
				<!-- Feature -->
				<div class="col-lg-4 feature_col">
					<div class="feature d-flex flex-row align-items-start justify-content-start">
						<div class="feature_left">
							<div class="feature_icon"><img src="{{ URL::to('/') }}/images/icon_1.svg" alt=""></div>
						</div>
						<div class="feature_right d-flex flex-column align-items-start justify-content-center">
							<div class="feature_title">Безопасные платежи</div>
						</div>
					</div>
				</div>

				<!-- Feature -->
				<div class="col-lg-4 feature_col">
					<div class="feature d-flex flex-row align-items-start justify-content-start">
						<div class="feature_left">
							<div class="feature_icon ml-auto mr-auto"><img src="{{ URL::to('/') }}/images/icon_2.svg" alt=""></div>
						</div>
						<div class="feature_right d-flex flex-column align-items-start justify-content-center">
							<div class="feature_title">Лучший продукт</div>
						</div>
					</div>
				</div>

				<!-- Feature -->
				<div class="col-lg-4 feature_col">
					<div class="feature d-flex flex-row align-items-start justify-content-start">
						<div class="feature_left">
							<div class="feature_icon"><img src="{{ URL::to('/') }}/images/icon_3.svg" alt=""></div>
						</div>
						<div class="feature_right d-flex flex-column align-items-start justify-content-center">
							<div class="feature_title">Бесплатная доставка</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
</div>

@include('other.footer')

{{-- Подключение скриптов --}}

@include('other.script')

<script src="{{ asset('js/custom.js') }}"></script>
<script src="{{ asset('js/payment.js') }}"></script>

{{-- Конец --}}

@include('layouts.end')

