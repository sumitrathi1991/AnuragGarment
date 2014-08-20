<div id="page">
	<div class="header-container">
		<header id="header">
			<div class="nav">
				<div class="container">
					 <div class="row">
                     <div id="header_logo">
                            <a href="index.html" title="ANAND TRADING">
                                <img class="logo img-responsive" src="/images/logo.png" alt="ANAND TRADING" width="304" height="41">
                            </a>
						</div>
                            <!-- Block permanent links module HEADER -->
                            <ul id="header_links">
<sec:ifLoggedIn>
<li><span class="welcome-user">Welcome!  ${userFullName }</span></li>
<li><a class="link-myaccount cursor" title="My account">My account</a></li>
<li><a class="link-wishlist wishlist_block cursor"  title="My wishlist">Wishlist</a></li>
<li><a class="link-mycart cursor" title="My cart">My cart</a></li>
<li><a class="link-checkout cursor" title="checkout">Checkout</a></li>
<li class="last">
<a  class="link-login cursor" onClick="loginOut()" title="Logout" rel="nofollow">Logout</a>
</li> 
</sec:ifLoggedIn>	
<sec:ifNotLoggedIn>
<li class="last">
<a class="link-login cursor" onClick="loginView()" title="Login" rel="nofollow">Login</a>
</li>
</sec:ifNotLoggedIn>
                            </ul>
                            <!-- /Block permanent links module HEADER -->
					</div>
				</div>
			</div>
	 	</header>
	</div>
			
    <!-- Block categories module -->
	<div class="ma-nav-mobile-container visible-xs visible-sm">
		<div class="container">
            <div class="navbar">
                <div id="navbar-inner" class="navbar-inner navbar-inactive">
                    <div class="menu-mobile">
                        <a class="btn btn-navbar">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </a>
                        <span class="brand">Category</span>
                    </div>
                    <%--<ul id="ma-mobilemenu" class="tree  mobilemenu nav-collapse collapse dynamized" style="display: block;">
                        <li><span class="grower CLOSE"> </span><a href="#" title="">Women</a></li>
                        <li><span class="grower CLOSE"> </span><a href="#" title="">Men</a></li>
                        <li><span class="grower CLOSE"> </span><a href="#" title="">Clothing</a></li>
                        <li><span class="grower CLOSE"> </span><a href="#" title="">Interiors</a></li>
                        <li class="last"><span class="grower CLOSE"> </span><a href="#" title="">Accessories</a></li>
                    </ul>--%>               
                </div>
            </div>
		</div>
	</div>
	<!-- /Block categories module -->

    <div class="nav-container visible-lg visible-md">
       <div class="container">
            <div id="pt_custommenu" class="pt_custommenu clearfix">
                <div id="pt_menu_home" class="pt_menu act">
                	<div class="parentMenu" onClick="homeView()">
                   		<g:link action="index" controller="home"><span>Home</span></g:link>
                    </div>
                </div>
                <div id="pt_menu3" class="pt_menu nav-1">
                    <div class="parentMenu">
                    <g:link action="showProducts" controller="home" params="[itemType:'women']"><span>Womens</span></g:link>
</div>
<div id="popup3" class="popup" style="display:none">
<div class="block1" id="block13">
<div class="column first col1">
<div class="itemMenu level1">
<div class="itemSubMenu level3">
<div class="itemMenu level4">
<a class="itemMenuName level4" href="#"><span>Sports Shoes</span></a>
<a class="itemMenuName level4" href="#"><span>Running Shoes</span></a>
<a class="itemMenuName level4" href="#"><span>Heels</span></a>
<a class="itemMenuName level4" href="#"><span>Wedges</span></a>
</div>
</div>
</div>
</div>
<div class="column col2">
<div class="itemMenu level1">
<a class="itemMenuName level3" href="#"><span></span></a>
<div class="itemSubMenu level3">
<div class="itemMenu level4">
<a class="itemMenuName level4" href="#"><span>Formal Shoes</span></a>
<a class="itemMenuName level4" href="#"><span>Casual Shoes</span></a>
<a class="itemMenuName level4" href="#"><span>Sneakers</span></a>
<a class="itemMenuName level4" href="#"><span>Loafers</span></a>
</div>
</div>
</div>
</div>
<div class="column col3">
<div class="itemMenu level1">
<div class="itemSubMenu level3">
<div class="itemMenu level4">
<a class="itemMenuName level4" href="#"><span>Sandals</span></a>
<a class="itemMenuName level4" href="#"><span>Floater Sandals</span></a>
<a class="itemMenuName level4" href="#"><span>Slipper & Flip Flops</span></a>
<a class="itemMenuName level4" href="#"><span>Boots</span></a>
</div>
</div>
</div>
</div>
<div class="column last col4">
<div class="itemMenu level1">
<div class="itemSubMenu level3">
<div class="itemMenu level4">
<a class="itemMenuName level4" href="#"><span>Combo Offers</span></a>
</div>
</div>
</div>
</div>
<div class="clearBoth"></div>
</div>
                    </div>
   				 </div>
                <div id="pt_menu12" class="pt_menu nav-2">
                    <div class="parentMenu">
                    <g:link action="showProducts" controller="home" params="[itemType:'mens']"><span>Mens</span></g:link>
</div>
<div id="popup3" class="popup" style="display:none">
<div class="block1" id="block13">
<div class="column first col1">
<div class="itemMenu level1">
<div class="itemSubMenu level3">
<div class="itemMenu level4">
<a class="itemMenuName level4" href="#"><span>Sports Shoes</span></a>
<a class="itemMenuName level4" href="#"><span>Running Shoes</span></a>
<a class="itemMenuName level4" href="#"><span>Football Shoes</span></a>
<a class="itemMenuName level4" href="#"><span>Cricket Shoes</span></a>
</div>
</div>
</div>
</div>
<div class="column col2">
<div class="itemMenu level1">
<a class="itemMenuName level3" href="#"><span></span></a>
<div class="itemSubMenu level3">
<div class="itemMenu level4">
<a class="itemMenuName level4" href="#"><span>Formal Shoes</span></a>
<a class="itemMenuName level4" href="#"><span>Casual Shoes</span></a>
<a class="itemMenuName level4" href="#"><span>Sneakers</span></a>
<a class="itemMenuName level4" href="#"><span>Loafers</span></a>
</div>
</div>
</div>
</div>
<div class="column col3">
<div class="itemMenu level1">
<div class="itemSubMenu level3">
<div class="itemMenu level4">
<a class="itemMenuName level4" href="#"><span>Sandals</span></a>
<a class="itemMenuName level4" href="#"><span>Floater Sandals</span></a>
<a class="itemMenuName level4" href="#"><span>Slipper & Flip Flops</span></a>
<a class="itemMenuName level4" href="#"><span>Boots</span></a>
</div>
</div>
</div>
</div>
<div class="column last col4">
<div class="itemMenu level1">
<div class="itemSubMenu level3">
<div class="itemMenu level4">
<a class="itemMenuName level4" href="#"><span>Combo Offers</span></a>
</div>
</div>
</div>
</div>
<div class="clearBoth"></div>
</div>
                    </div>
                </div>
                <div id="pt_menu13" class="pt_menu nav-3">
                    <div class="parentMenu">
						<g:link action="showProducts" controller="home" params="[itemType:'kids']"><span>Kids</span></g:link>       
</div>
<div id="popup3" class="popup" style="display:none">
<div class="block1" id="block13">
<div class="column first col1">
<div class="itemMenu level1">
<div class="itemSubMenu level3">
<div class="itemMenu level4">
<a class="itemMenuName level4" href="#"><span>Sports Shoes</span></a>
<a class="itemMenuName level4" href="#"><span>Running Shoes</span></a>
<a class="itemMenuName level4" href="#"><span>Football Shoes</span></a>
<a class="itemMenuName level4" href="#"><span>Cricket Shoes</span></a>
</div>
</div>
</div>
</div>
<div class="column col2">
<div class="itemMenu level1">
<a class="itemMenuName level3" href="#"><span></span></a>
<div class="itemSubMenu level3">
<div class="itemMenu level4">
<a class="itemMenuName level4" href="#"><span>Formal Shoes</span></a>
<a class="itemMenuName level4" href="#"><span>Casual Shoes</span></a>
<a class="itemMenuName level4" href="#"><span>Sneakers</span></a>
<a class="itemMenuName level4" href="#"><span>Loafers</span></a>
</div>
</div>
</div>
</div>
<div class="column col3">
<div class="itemMenu level1">
<div class="itemSubMenu level3">
<div class="itemMenu level4">
<a class="itemMenuName level4" href="#"><span>Sandals</span></a>
<a class="itemMenuName level4" href="#"><span>Floater Sandals</span></a>
<a class="itemMenuName level4" href="#"><span>Slipper & Flip Flops</span></a>
<a class="itemMenuName level4" href="#"><span>Boots</span></a>
</div>
</div>
</div>
</div>
<div class="column last col4">
<div class="itemMenu level1">
<div class="itemSubMenu level3">
<div class="itemMenu level4">
<a class="itemMenuName level4" href="#"><span>Combo Offers</span></a>
</div>
</div>
</div>
</div>
<div class="clearBoth"></div>
</div>
	                </div>
                	</div>
                <div id="pt_menu14" class="pt_menu nav-4">
<div class="parentMenu" id="BrandsType">
                    	<a href="#wholesaler"><span>Wholesaler</span></a>
                    </div>
                </div>
                
              
            </div>
        </div>
    </div>
</div>