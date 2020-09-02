@include('layouts.doctype')

{{-- Подключение стилей --}}

<link rel="stylesheet" type="text/css" href="{{ asset('plugins/OwlCarousel2-2.2.1/owl.carousel.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('plugins/OwlCarousel2-2.2.1/owl.theme.default.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('plugins/OwlCarousel2-2.2.1/animate.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('css/category.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('css/category_responsive.css') }}">

{{-- Конец --}}

@include('layouts.start')

@include('other.header')

<div class="super_container_inner">
    <div class="super_overlay"></div>

    <div class="home">
        <div class="home_container d-flex flex-column align-items-center justify-content-end">
            <div class="home_content text-center">
                <div class="home_title">Каталог</div>
                <div class="breadcrumbs d-flex flex-column align-items-center justify-content-center">
                    <ul class="d-flex flex-row align-items-start justify-content-start text-center">
                        <li><a href="/">Главная</a></li>
                        <li>Каталог</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="products">
        <div class="container">
            <div class="row products_bar_row">
                <div class="col">
                    <div class="products_bar d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-lg-start justify-content-center">
                        <div class="products_bar_side d-flex flex-row align-items-center justify-content-start ml-lg-auto">
                            <div class="products_dropdown product_dropdown_sorting">
                                <div class="isotope_sorting_text"><span>Сортировать по</span><i class="fa fa-caret-down" aria-hidden="true"></i></div>
                                <ul>
                                    <li class="item_sorting_btn" data-slug="/catalog" data-isotope-option='{ "sortBy": "original-order" }'>Стандратно</li>
                                    <li class="item_sorting_btn" data-slug="/catalog/price" data-isotope-option='{ "sortBy": "price" }'>Цене</li>
                                    <li class="item_sorting_btn" data-slug="/catalog/name" data-isotope-option='{ "sortBy": "name" }'>Названию</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row products_row products_container grid">
                
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
            <div class="row page_nav_row">
                <div class="col">
                    {{ $products->links() }}
                </div>
            </div>
        </div>
    </div>
</div>

@include('other.footer')

{{-- Подключение скриптов --}}

@include('other.script')

<script src="{{ asset('plugins/Isotope/isotope.pkgd.min.js') }}"></script>
<script src="{{ asset('plugins/Isotope/fitcolumns.js') }}"></script>
<script src="{{ asset('js/category.js') }}"></script>
<script src="{{ asset('js/payment.js') }}"></script>
<script src="{{ asset('js/catalog.js') }}"></script>

{{-- Конец --}}

@include('layouts.end')