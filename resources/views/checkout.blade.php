@include('layouts.doctype')

{{-- Подключение стилей --}}

<link rel="stylesheet" type="text/css" href="{{ asset('css/checkout.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('css/checkout_responsive.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('css/cart.css') }}">
<link rel="stylesheet" type="text/css" href="{{ asset('css/cart_responsive.css') }}">

{{-- Конец --}}

@include('layouts.start')

@include('other.header')

<div class="super_container_inner">
    <div class="super_overlay"></div>

    <div class="home">
        <div class="home_container d-flex flex-column align-items-center justify-content-end">
            <div class="home_content text-center">
                <div class="home_title">Оформление заказа</div>
                <div class="breadcrumbs d-flex flex-column align-items-center justify-content-center">
                    <ul class="d-flex flex-row align-items-start justify-content-start text-center">
                        <li><a href="#">Главная</a></li>
                        <li>Оформление заказа</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="cart_section">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="cart_container">
                        
                        <!-- Cart Bar -->
                        <div class="cart_bar">
                            <ul class="cart_bar_list item_list d-flex flex-row align-items-center justify-content-end">
                                <li class="mr-auto">Продукт</li>
                                <li></li>
                                <li></li>
                                <li>Цена</li>
                                <li>Количество</li>
                                <li>Итого</li>
                            </ul>
                        </div>

                        <!-- Cart Items -->
                        <div class="cart_items">
                            <ul class="cart_items_list">

                                <!-- Cart Item -->
                                <li class="cart_item item_list d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-lg-end justify-content-start">
                                    <div class="product d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-start mr-auto">
                                    <div><div class="product_number">{{ $product->product_id }}</div></div>
                                        <div><div class="product_image"><img src="{{ Voyager::image($product->img_url) }}" alt="Изображение товара"></div></div>
                                        <div class="product_name_container">
                                            <div class="product_name"><a href="#">{{ $product->name }}</a></div>
                                        </div>
                                    </div>
                                    <div class="product_color product_text"><span></span></div>
                                    <div class="product_size product_text"><span></span></div>
                                    <div class="product_price product_text"><span>Цена: </span>{{ $product->price }} ₽</div>
                                    <div class="product_quantity_container">
                                        <div class="product_quantity ml-lg-auto mr-lg-auto text-center">
                                            <span class="product_text product_num">1</span>
                                            <div class="qty_sub qty_button trans_200 text-center"><span>-</span></div>
                                            <div class="qty_add qty_button trans_200 text-center"><span>+</span></div>
                                        </div>
                                    </div>
                                    <div class="product_total product_text"><span>Итого: </span>{{ $product->price }} ₽</div>
                                </li>
                            </ul>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="checkout">
        <div class="container">
            <div class="row">
                
                <!-- Billing -->
                <div class="col-lg-6">
                    <div class="billing">
                        <div class="checkout_title">Укажите данные</div>
                        <div class="checkout_form_container">
                            <form action="#" id="checkout_form" class="checkout_form">
                                <div>
                                    <!-- Address -->
                                    <input type="text" id="checkout_address" class="checkout_input" placeholder="Адрес" required="required">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                <!-- Cart Total -->
                <div class="col-lg-6 cart_col">
                    <div class="cart_total">
                        <div class="cart_extra_content cart_extra_total">
                            <div class="checkout_title">Итого</div>
                            <ul class="cart_extra_total_list">
                                <li class="d-flex flex-row align-items-center justify-content-start">
                                    <div class="cart_extra_total_title">Промежуточный итог</div>
                                    <div class="cart_extra_total_value ml-auto product-total-price">{{ $product->price }} ₽</div>
                                </li>
                                <li class="d-flex flex-row align-items-center justify-content-start">
                                    <div class="cart_extra_total_title">Доставка</div>
                                    <div class="cart_extra_total_value ml-auto">Бесплатно</div>
                                </li>
                                <li class="d-flex flex-row align-items-center justify-content-start">
                                    <div class="cart_extra_total_title">Итого</div>
                                    <div class="cart_extra_total_value ml-auto product-total-price">{{ $product->price }} ₽</div>
                                </li>
                            </ul>
                            <div class="payment_options">
                                <div class="checkout_title">Оплата</div>
                                <ul>
                                    <li class="shipping_option d-flex flex-row align-items-center justify-content-start">
                                        <label class="radio_container">
                                            <input type="radio" id="radio_1" name="payment_radio" class="payment_radio">
                                            <span class="radio_mark"></span>
                                            <span class="radio_text">Qiwi</span>
                                        </label>
                                    </li>
                                </ul>
                            </div>
                            <div class="cart_text">
                                <p>Мы используем самые современные средства защиты, обеспечивающие безопасность сервиса и пользовательских данных на всех уровнях сетевой инфраструктуры.</p>
                            </div>
                        <div class="checkout_button trans_200"><a data-id="{{ Auth::id() }}" data-bill="{{ $billId }}" href="{{ $link }}">Оплатить</a></div>
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

<script src="{{ asset('js/checkout.js') }}"></script>
<script src="{{ asset('js/cart.js') }}"></script>

{{-- Конец --}}

@include('layouts.end')