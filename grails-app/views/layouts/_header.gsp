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
						
						 <!-- User Nav Dropdown Menu -->
							<sec:ifLoggedIn>
							<div class="dropdown">
							  <a href=""  class="dropdown-toggle" type="button" data-toggle="dropdown">
							    Hi ${userFullName }!
							    <span class="caret"></span>
							  </a>
								<ul class="dropdown-menu">
								    <li><a href="">Account</a></li>
								    <li><a href="">Order</a></li>
								    <li><a href="">Wallet</a></li>
								    <li><a href="">Wishlist</a></li>
								    <li><a onClick="loginOut()">Logout</a></li>
								</ul>
							</div>
						</sec:ifLoggedIn>
						<!-- User Nav Dropdown Menu Ends -->

						<!-- Block permanent links module HEADER -->
						<ul id="header_links">
							<sec:ifNotLoggedIn>
								<li class="last">
									<g:link action="loginView" controller="home">
										<span class="link-login cursor" title="Login" rel="nofollow">Login</span>
									</g:link>
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
						<a class="btn btn-navbar"> <span class="icon-bar"></span> <span
							class="icon-bar"></span> <span class="icon-bar"></span>
						</a> <span class="brand">Category</span>
					</div>
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
						<g:link action="index" controller="home">
							<span>Home</span>
						</g:link>
					</div>
				</div>
				<div id="pt_menu3" class="pt_menu nav-1">
					<div class="parentMenu">
						<g:link action="showProducts" controller="home"
							params="[itemFor:'women']">
							<span>Women</span>
						</g:link>
					</div>
					<div id="popup3" class="popup" style="display: none">
						<div class="block1" id="block13">
							<div class="column first col1">
								<div class="itemMenu level1">
									<div class="itemSubMenu level3">
										<div class="itemMenu level4">
												<g:link class="itemMenuName level4" action="renderHeaderData" controller="home" params="[itemFor:'women', itemCategory:'Sports Shoes']"><span>Sports Shoes</span></g:link>
												<g:link class="itemMenuName level4" action="renderHeaderData" controller="home" params="[itemFor:'women', itemCategory:'Running Shoes']"><span>Running Shoes</span></g:link>
												<g:link class="itemMenuName level4" action="renderHeaderData" controller="home" params="[itemFor:'women', itemCategory:'Heels']"><span>Heels</span></g:link>
												<g:link class="itemMenuName level4" action="renderHeaderData" controller="home" params="[itemFor:'women', itemCategory:'Wedges']"><span>Wedges</span></g:link>
										</div>
									</div>
								</div>
							</div>
							<div class="column col2">
								<div class="itemMenu level1">
									<a class="itemMenuName level3" href="#"><span></span></a>
									<div class="itemSubMenu level3">
										<div class="itemMenu level4">
											<g:link class="itemMenuName level4" action="renderHeaderData" controller="home" params="[itemFor:'women', itemCategory:'Formal Shoes']"><span>Formal Shoes</span></g:link>
											<g:link class="itemMenuName level4" action="renderHeaderData" controller="home" params="[itemFor:'women', itemCategory:'Casual Shoes']"><span>Casual Shoes</span></g:link>
											<g:link class="itemMenuName level4" action="renderHeaderData" controller="home" params="[itemFor:'women', itemCategory:'Sneakers']"><span>Sneakers</span></g:link>
											<g:link class="itemMenuName level4" action="renderHeaderData" controller="home" params="[itemFor:'women', itemCategory:'Loafers']"><span>Loafers</span></g:link>
										</div>
									</div>
								</div>
							</div>
							<div class="column col3">
								<div class="itemMenu level1">
									<div class="itemSubMenu level3">
										<div class="itemMenu level4">
											<g:link class="itemMenuName level4" action="renderHeaderData" controller="home" params="[itemFor:'women', itemCategory:'Sandals']"><span>Sandals</span></g:link>
											<g:link class="itemMenuName level4" action="renderHeaderData" controller="home" params="[itemFor:'women', itemCategory:'Boots']"><span>Boots</span></g:link>
										</div>
									</div>
								</div>
							</div>
							<%--<div class="column last col4">
								<div class="itemMenu level1">
									<div class="itemSubMenu level3">
										<div class="itemMenu level4">
											<g:link class="itemMenuName level4" action="renderHeaderData" controller="home" params="[itemFor:'women', itemCategory:'wedges']"><span>Combo Offers</span></g:link>
										</div>
									</div>
								</div>
							</div>
							--%><div class="clearBoth"></div>
						</div>
					</div>
				</div>
				<div id="pt_menu12" class="pt_menu nav-2">
					<div class="parentMenu">
						<g:link action="showProducts" controller="home"
							params="[itemFor:'men']">
							<span>Men</span>
						</g:link>
					</div>
					<div id="popup3" class="popup" style="display: none">
						<div class="block1" id="block13">
							<div class="column first col1">
								<div class="itemMenu level1">
									<div class="itemSubMenu level3">
										<div class="itemMenu level4">
											<g:link class="itemMenuName level4" action="renderHeaderData" controller="home" params="[itemFor:'men', itemCategory:'Sports Shoes']"><span>Sports Shoes</span></g:link> 
											<g:link class="itemMenuName level4" action="renderHeaderData" controller="home" params="[itemFor:'men', itemCategory:'Running Shoes']"><span>Running Shoes</span></g:link>
											<g:link class="itemMenuName level4" action="renderHeaderData" controller="home" params="[itemFor:'men', itemCategory:'Converse']"><span>Converse</span></g:link>
											<g:link class="itemMenuName level4" action="renderHeaderData" controller="home" params="[itemFor:'men', itemCategory:'Wedges']"><span>Wedges</span></g:link>
										</div>
									</div>
								</div>
							</div>
							<div class="column col2">
								<div class="itemMenu level1">
									<a class="itemMenuName level3" href="#"><span></span></a>
									<div class="itemSubMenu level3">
										<div class="itemMenu level4">
											<g:link class="itemMenuName level4" action="renderHeaderData" controller="home" params="[itemFor:'men', itemCategory:'Formal Shoes']"><span>Formal Shoes</span></g:link> 
											<g:link class="itemMenuName level4" action="renderHeaderData" controller="home" params="[itemFor:'men', itemCategory:'Casual Shoes']"><span>Casual Shoes</span></g:link>
											<g:link class="itemMenuName level4" action="renderHeaderData" controller="home" params="[itemFor:'men', itemCategory:'Sneakers']"><span>Sneakers</span></g:link>
											<g:link class="itemMenuName level4" action="renderHeaderData" controller="home" params="[itemFor:'men', itemCategory:'Loafers']"><span>Loafers</span></g:link>
										</div>
									</div>
								</div>
							</div>
							<div class="column col3">
								<div class="itemMenu level1">
									<div class="itemSubMenu level3">
										<div class="itemMenu level4">
											<g:link class="itemMenuName level4" action="renderHeaderData" controller="home" params="[itemFor:'men', itemCategory:'Sandals']"><span>Sandals</span></g:link>
											<g:link class="itemMenuName level4" action="renderHeaderData" controller="home" params="[itemFor:'men', itemCategory:'Boots']"><span>Boots</span></g:link>
										</div>
									</div>
								</div>
							</div>
							<%--<div class="column last col4">
								<div class="itemMenu level1">
									<div class="itemSubMenu level3">
										<div class="itemMenu level4">
											<g:link class="itemMenuName level4" action="renderHeaderData" controller="home" params="[itemFor:'men', itemCategory:'wedges']"><span>Converse</span></g:link>
											<g:link class="itemMenuName level4" action="renderHeaderData" controller="home" params="[itemFor:'men', itemCategory:'wedges']"><span>Combo	Offers</span></g:link>
										</div>
									</div>
								</div>
							</div>
							--%><div class="clearBoth"></div>
						</div>
					</div>
				</div>
				<div id="pt_menu13" class="pt_menu nav-3">
					<div class="parentMenu">
						<g:link action="showProducts" controller="home"
							params="[itemFor:'kids']">
							<span>Kids</span>
						</g:link>
					</div>
					<div id="popup3" class="popup" style="display: none">
						<div class="block1" id="block13">
							<div class="column first col1">
								<div class="itemMenu level1">
									<div class="itemSubMenu level3">
										<div class="itemMenu level4">
											<g:link class="itemMenuName level4" action="renderHeaderData" controller="home" params="[itemFor:'kids', itemCategory:'Sports Shoes']"><span>Sports Shoes</span></g:link>
											<g:link class="itemMenuName level4" action="renderHeaderData" controller="home" params="[itemFor:'kids', itemCategory:'Running Shoes']"><span>Running Shoes</span></g:link>
											<g:link class="itemMenuName level4" action="renderHeaderData" controller="home" params="[itemFor:'kids', itemCategory:'Heels']"><span>Heels</span></g:link>
											<g:link class="itemMenuName level4" action="renderHeaderData" controller="home" params="[itemFor:'kids', itemCategory:'Wedges']"><span>Wedges</span></g:link>
										</div>
									</div>
								</div>
							</div>
							<div class="column col2">
								<div class="itemMenu level1">
									<a class="itemMenuName level3" href="#"><span></span></a>
									<div class="itemSubMenu level3">
										<div class="itemMenu level4">
											<g:link class="itemMenuName level4" action="renderHeaderData" controller="home" params="[itemFor:'kids', itemCategory:'Formal Shoes']"><span>Formal Shoes</span></g:link> 
											<g:link class="itemMenuName level4" action="renderHeaderData" controller="home" params="[itemFor:'kids', itemCategory:'Casual Shoes']"><span>Casual Shoes</span></g:link>
											<g:link class="itemMenuName level4" action="renderHeaderData" controller="home" params="[itemFor:'kids', itemCategory:'Sneakers']"><span>Sneakers</span></g:link>
											<g:link class="itemMenuName level4" action="renderHeaderData" controller="home" params="[itemFor:'kids', itemCategory:'Loafers']"><span>Loafers</span></g:link>
										</div>
									</div>
								</div>
							</div>
							<div class="column col3">
								<div class="itemMenu level1">
									<div class="itemSubMenu level3">
										<div class="itemMenu level4">
											<g:link class="itemMenuName level4" action="renderHeaderData" controller="home" params="[itemFor:'kids', itemCategory:'Sandals']"><span>Sandals</span></g:link>
											<g:link class="itemMenuName level4" action="renderHeaderData" controller="home" params="[itemFor:'kids', itemCategory:'Boots']"><span>Boots</span></g:link>
										</div>
									</div>
								</div>
							</div>
							<%--<div class="column last col4">
								<div class="itemMenu level1">
									<div class="itemSubMenu level3">
										<div class="itemMenu level4">
											<g:link class="itemMenuName level4" action="renderHeaderData" controller="home" params="[itemFor:'kids', itemCategory:'wedges']"><span>Combo Offers</span></g:link>
										</div>
									</div>
								</div>
							</div>
							--%><div class="clearBoth"></div>
						</div>
					</div>
				</div>
				<div id="pt_menu14" class="pt_menu nav-4">
					<div class="parentMenu" id="BrandsType">
						<a href="#wholesaler"><span>Wholesale</span></a>
					</div>
				</div>


			</div>
		</div>
	</div>
</div>