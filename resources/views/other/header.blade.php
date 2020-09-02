<div class="menu">

	<!-- Navigation -->
	<div class="menu_nav">
		<ul>
			<li><a href="/catalog">Каталог</a></li>
		</ul>
	</div>
</div>

<header class="header">
    <div class="header_overlay"></div>
    <div class="header_content d-flex flex-row align-items-center justify-content-start">
        <div class="logo">
            <a href="/">
                <div class="d-flex flex-row align-items-center justify-content-start">
                    <div><img src="{{ URL::to('/') }}/images/logo_1.png" alt="Qiwi Shop"></div>
                    <div>Qiwi Shop</div>
                </div>
            </a>	
        </div>
        <div class="hamburger"><i class="fa fa-bars" aria-hidden="true"></i></div>
        <nav class="main_nav">
            <ul class="d-flex flex-row align-items-start justify-content-start">
                <li><a href="/catalog?sort=default">Каталог</a></li>
            </ul>
        </nav>
        <div class="header_right d-flex flex-row align-items-center justify-content-start ml-auto">
            <!-- Пользователь -->
            <div class="user"><a href="/login"><div><img src="{{ URL::to('/') }}/images/user.svg" alt="https://www.flaticon.com/authors/freepik"></div></a></div>
        </div>
    </div>
</header>