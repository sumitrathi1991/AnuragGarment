	<div class="columns-container">
		<div id="columns" class="container">
											
            <!-- Breadcrumb -->
            <div class="breadcrumb clearfix">
                <a class="home" href="index.html" title="Return to Home">Home</a>
                <span class="navigation-pipe">&gt;</span>
				<span class="navigation_page">	Authentication</span>
            </div>
            <!-- /Breadcrumb -->
			<div class="row">
				<div id="center_column" class="center_column  col-sm-12">
					<h1 class="page-heading">Authentication</h1>
					<!---->
					<div class="row">
						<div class="col-xs-12 col-sm-6">
							<form id="createAccountForm" name="createAccountForm" onsubmit="return false" class="box">
								<h3 class="page-subheading">Create an account</h3>
                                <div class="form_content clearfix">
                                    <p>Please enter your your information to create an account.</p>
                                    <div class="form-group">
                                        <label for="email_create">First Name</label>
                                        <input type="text" class="is_required validate account_input form-control" data-validate="isEmail" id="email_create" name="email_create" value="">
                                    </div>
                                   <div class="form-group">
                                        <label for="email_create">Last Name</label>
                                        <input type="text" class="is_required validate account_input form-control" data-validate="isEmail" id="email_create" name="email_create" value="">
                                    </div>
                                    <div class="form-group">
                                        <label for="email_create">Email address</label>
                                        <input type="text" class="is_required validate account_input form-control" data-validate="isEmail" id="email_create" name="email_create" value="">
                                    </div>
                                   <div class="form-group">
                                        <label for="email_create">Address</label>
                                        <input type="text" class="is_required validate account_input form-control" data-validate="isEmail" id="email_create" name="email_create" value="">
                                    </div>
                                    <div class="form-group">
                                        <label for="email_create">City</label>
                                        <input type="text" class="is_required validate account_input form-control" data-validate="isEmail" id="email_create" name="email_create" value="">
                                    </div>
                                    <div class="form-group">
                                        <label for="email_create">State</label>
                                        <input type="text" class="is_required validate account_input form-control" data-validate="isEmail" id="email_create" name="email_create" value="">
                                    </div>
                                    <div class="form-group">
                                        <label for="email_create">Zip code</label>
                                        <input type="text" class="is_required validate account_input form-control" data-validate="isEmail" id="email_create" name="email_create" value="">
                                    </div>
                                    <div class="form-group">
                                        <label for="email_create">Contact</label>
                                        <input type="text" class="is_required validate account_input form-control" data-validate="isEmail" id="email_create" name="email_create" value="">
                                    </div>
                                    <div class="form-group">
                                        <label for="email_create">Password</label>
                                        <input type="password" class="is_required validate account_input form-control" data-validate="isEmail" id="email_create" name="email_create" value="">
                                    </div>
                                    <div class="form-group">
                                        <label for="email_create">Re password</label>
                                        <input type="password" class="is_required validate account_input form-control" data-validate="isEmail" id="email_create" name="email_create" value="">
                                    </div>
                                   
                                    <div class="submit">	
                                    	<button class="btn btn-default button button-medium exclusive" type="button" id="SubmitBtn" name="SubmitCreate" onClick="registerValidation()">
                                            <span>
                                                <i class="fa fa-user fa-lg"></i>
                                                Create an account
                                            </span>
                                        </button>
                                    </div>
                                </div>
						</form>
					</div>
                    <div class="col-xs-12 col-sm-6">
                        <form action="" method="" id="login_form" class="box">
                            <h3 class="page-subheading">Already registered?</h3>
                            <div class="form_content clearfix">
                                <div class="form-group">
                                    <label for="email">Email address</label>
                                    <input class="is_required validate account_input form-control" data-validate="isEmail" type="text" id="email" name="email" value="">
                                </div>
                                <div class="form-group">
                                    <label for="passwd">Password</label>
                                    <span><input class="is_required validate account_input form-control" type="password" data-validate="isPasswd" id="passwd" name="passwd" value=""></span>
                                </div>
                                <p class="lost_password form-group"><a href="#" title="Recover your forgotten password" rel="nofollow">Forgot your password?</a></p>
                                <p class="submit">
                                    <input type="hidden" class="hidden" name="back" value="my-account">						<button type="submit" id="SubmitLogin" name="SubmitLogin" class="button btn btn-default button-medium">
                                        <span>
                                            <i class="fa fa-lock fa-lg"></i>
                                            Sign in
                                        </span>
                                    </button>
                                </p>
                            </div>
                        </form>
                    </div>
					</div>
				</div><!-- #center_column -->
                
                <div id="noSlide">
                	<h1 class="page-heading">Create an account</h1>
	<!---->
                    <form action="" method="" id="account-creation_form" class="std box">
           				 <div class="account_creation">
                			<h3 class="page-subheading">Your personal information</h3>
               				 <div class="clearfix">
                   				 <label>Title</label>
                    			<br>
                              <div class="radio-inline">
                                <label for="id_gender1" class="top">
									<input type="radio" name="id_gender" id="id_gender1" value="1">
                                Mr.
                                </label>
                        	  </div>
                                <div class="radio-inline">
                                    <label for="id_gender2" class="top">
                                        <input type="radio" name="id_gender" id="" value="2">
                                    Mrs.
                                    </label>
                                </div>
                           </div>
                            <div class="required form-group">
                                <label for="customer_firstname">First name <sup>*</sup></label>
                                <input  type="text" class="form-control" data-validate="isName" id="customer_firstname" name="customer_firstname" value="">
                            </div>
                            <div class="required form-group">
                                <label for="customer_lastname">Last name <sup>*</sup></label>
                                <input onkeyup="" type="text" class="form-control" data-validate="isName" id="customer_lastname" name="customer_lastname" value="">
                            </div>
                            <div class="required form-group">
                                <label for="email">Email <sup>*</sup></label>
                                <input type="text" class="is_required validate form-control" data-validate="isEmail" id="email" name="email" value="abc@gmail.com">
                            </div>
                            <div class="required password form-group">
                                <label for="passwd">Password <sup>*</sup></label>
                                <input type="password" class="is_required validate form-control" data-validate="isPasswd" name="passwd" id="passwd">
                                <span class="form_info">(Five characters minimum)</span>
                            </div> 
               					<div class="form-group">
                   					 <label>Date of Birth</label>
                    <div class="row">
                        <div class="col-xs-3">
                           		 <select id="" name="days" class="form-control">
                              		<option value="">-</option>
                                        <option value="1">1&nbsp;&nbsp;</option>
                                        <option value="2">2&nbsp;&nbsp;</option>
                                        <option value="3">3&nbsp;&nbsp;</option>
                                        <option value="4">4&nbsp;&nbsp;</option>
                                        <option value="5">5&nbsp;&nbsp;</option>
                                        <option value="6">6&nbsp;&nbsp;</option>
                                        <option value="7">7&nbsp;&nbsp;</option>
                                        <option value="8">8&nbsp;&nbsp;</option>
                                        <option value="9">9&nbsp;&nbsp;</option>
                                        <option value="10">10&nbsp;&nbsp;</option>
                                        <option value="11">11&nbsp;&nbsp;</option>
                                        <option value="12">12&nbsp;&nbsp;</option>
                                        <option value="13">13&nbsp;&nbsp;</option>
                                        <option value="14">14&nbsp;&nbsp;</option>
                                        <option value="15">15&nbsp;&nbsp;</option>
                                        <option value="16">16&nbsp;&nbsp;</option>
                                        <option value="17">17&nbsp;&nbsp;</option>
                                        <option value="18">18&nbsp;&nbsp;</option>
                                        <option value="19">19&nbsp;&nbsp;</option>
                                        <option value="20">20&nbsp;&nbsp;</option>
                                        <option value="21">21&nbsp;&nbsp;</option>
                                        <option value="22">22&nbsp;&nbsp;</option>
                                        <option value="23">23&nbsp;&nbsp;</option>
                                        <option value="24">24&nbsp;&nbsp;</option>
                                        <option value="25">25&nbsp;&nbsp;</option>
                                        <option value="26">26&nbsp;&nbsp;</option>
                                        <option value="27">27&nbsp;&nbsp;</option>
                                        <option value="28">28&nbsp;&nbsp;</option>
                                        <option value="29">29&nbsp;&nbsp;</option>
                                        <option value="30">30&nbsp;&nbsp;</option>
                                        <option value="31">31&nbsp;&nbsp;</option>
                                    </select>
                        </div>
                        <div class="col-xs-3">
                            <div class="" id="uniform-months">
                                <select id="months" name="months" class="form-control">
                                	<option value="">-</option>
                                      <option value="1">January&nbsp;</option>
                                      <option value="2">February&nbsp;</option>
                                      <option value="3">March&nbsp;</option>
                                      <option value="4">April&nbsp;</option>
                                      <option value="5">May&nbsp;</option>
                                      <option value="6">June&nbsp;</option>
                                      <option value="7">July&nbsp;</option>
                                      <option value="8">August&nbsp;</option>
                                      <option value="9">September&nbsp;</option>
                                      <option value="10">October&nbsp;</option>
                                      <option value="11">November&nbsp;</option>
                                      <option value="12">December&nbsp;</option>
								 </select>
                             </div>
                        </div>
                        <div class="col-xs-3">
                            <div class="" id="uniform-years">
                            <select id="years" name="years" class="form-control">
                                <option value="">-</option>
                                  <option value="2014">2014&nbsp;&nbsp;</option>
                                  <option value="2013">2013&nbsp;&nbsp;</option>
                                  <option value="2012">2012&nbsp;&nbsp;</option>
                                  <option value="2011">2011&nbsp;&nbsp;</option>
                                  <option value="2010">2010&nbsp;&nbsp;</option>
                                  <option value="2009">2009&nbsp;&nbsp;</option>
                                  <option value="2008">2008&nbsp;&nbsp;</option>
                                  <option value="2007">2007&nbsp;&nbsp;</option>
                                  <option value="2006">2006&nbsp;&nbsp;</option>
                                  <option value="2005">2005&nbsp;&nbsp;</option>
                                  <option value="2004">2004&nbsp;&nbsp;</option>
                                  <option value="2003">2003&nbsp;&nbsp;</option>
                                  <option value="2002">2002&nbsp;&nbsp;</option>
                                  <option value="2001">2001&nbsp;&nbsp;</option>
                                  <option value="2000">2000&nbsp;&nbsp;</option>
                                  <option value="1999">1999&nbsp;&nbsp;</option>
                                  <option value="1998">1998&nbsp;&nbsp;</option>
                                  <option value="1997">1997&nbsp;&nbsp;</option>
                                  <option value="1996">1996&nbsp;&nbsp;</option>
                                  <option value="1995">1995&nbsp;&nbsp;</option>
                                  <option value="1994">1994&nbsp;&nbsp;</option>
                                  <option value="1993">1993&nbsp;&nbsp;</option>
                                  <option value="1992">1992&nbsp;&nbsp;</option>
                                  <option value="1991">1991&nbsp;&nbsp;</option>
                                  <option value="1990">1990&nbsp;&nbsp;</option>
                                  <option value="1989">1989&nbsp;&nbsp;</option>
                                  <option value="1988">1988&nbsp;&nbsp;</option>
                                  <option value="1987">1987&nbsp;&nbsp;</option>
                                  <option value="1986">1986&nbsp;&nbsp;</option>
                                  <option value="1985">1985&nbsp;&nbsp;</option>
                                  <option value="1984">1984&nbsp;&nbsp;</option>
                                  <option value="1983">1983&nbsp;&nbsp;</option>
                                  <option value="1982">1982&nbsp;&nbsp;</option>
                                  <option value="1981">1981&nbsp;&nbsp;</option>
                                  <option value="1980">1980&nbsp;&nbsp;</option>
                                  <option value="1979">1979&nbsp;&nbsp;</option>
                                  <option value="1978">1978&nbsp;&nbsp;</option>
                                  <option value="1977">1977&nbsp;&nbsp;</option>
                                  <option value="1976">1976&nbsp;&nbsp;</option>
                                  <option value="1975">1975&nbsp;&nbsp;</option>
                                  <option value="1974">1974&nbsp;&nbsp;</option>
                                  <option value="1973">1973&nbsp;&nbsp;</option>
                                  <option value="1972">1972&nbsp;&nbsp;</option>
    
                                  <option value="1971">1971&nbsp;&nbsp;</option>
                                  <option value="1970">1970&nbsp;&nbsp;</option>
                                  <option value="1969">1969&nbsp;&nbsp;</option>
                                  <option value="1968">1968&nbsp;&nbsp;</option>
                                  <option value="1967">1967&nbsp;&nbsp;</option>
                                  <option value="1966">1966&nbsp;&nbsp;</option>
                                  <option value="1965">1965&nbsp;&nbsp;</option>
                                  <option value="1964">1964&nbsp;&nbsp;</option>
                                  <option value="1963">1963&nbsp;&nbsp;</option>
                                  <option value="1962">1962&nbsp;&nbsp;</option>
                                  <option value="1961">1961&nbsp;&nbsp;</option>
                                  <option value="1960">1960&nbsp;&nbsp;</option>
                                  <option value="1959">1959&nbsp;&nbsp;</option>
                                  <option value="1958">1958&nbsp;&nbsp;</option>
                                  <option value="1957">1957&nbsp;&nbsp;</option>
                                  <option value="1956">1956&nbsp;&nbsp;</option>
                                  <option value="1955">1955&nbsp;&nbsp;</option>
                                  <option value="1954">1954&nbsp;&nbsp;</option>
                                  <option value="1953">1953&nbsp;&nbsp;</option>
                                  <option value="1952">1952&nbsp;&nbsp;</option>
                                  <option value="1951">1951&nbsp;&nbsp;</option>
                                  <option value="1950">1950&nbsp;&nbsp;</option>
                                  <option value="1949">1949&nbsp;&nbsp;</option>
                                  <option value="1948">1948&nbsp;&nbsp;</option>
                                  <option value="1947">1947&nbsp;&nbsp;</option>
                                  <option value="1946">1946&nbsp;&nbsp;</option>
                                  <option value="1945">1945&nbsp;&nbsp;</option>
                                  <option value="1944">1944&nbsp;&nbsp;</option>
                                  <option value="1943">1943&nbsp;&nbsp;</option>
                                  <option value="1942">1942&nbsp;&nbsp;</option>
                                  <option value="1941">1941&nbsp;&nbsp;</option>
                                  <option value="1940">1940&nbsp;&nbsp;</option>
                                  <option value="1939">1939&nbsp;&nbsp;</option>
                                  <option value="1938">1938&nbsp;&nbsp;</option>
                                  <option value="1937">1937&nbsp;&nbsp;</option>
                                  <option value="1936">1936&nbsp;&nbsp;</option>
                                  <option value="1935">1935&nbsp;&nbsp;</option>
                                  <option value="1934">1934&nbsp;&nbsp;</option>
                                  <option value="1933">1933&nbsp;&nbsp;</option>
                                  <option value="1932">1932&nbsp;&nbsp;</option>
                                  <option value="1931">1931&nbsp;&nbsp;</option>
                                  <option value="1930">1930&nbsp;&nbsp;</option>
                                  <option value="1929">1929&nbsp;&nbsp;</option>
                                  <option value="1928">1928&nbsp;&nbsp;</option>
                                  <option value="1927">1927&nbsp;&nbsp;</option>
                                  <option value="1926">1926&nbsp;&nbsp;</option>
                                  <option value="1925">1925&nbsp;&nbsp;</option>
                                  <option value="1924">1924&nbsp;&nbsp;</option>
                                  <option value="1923">1923&nbsp;&nbsp;</option>
                                  <option value="1922">1922&nbsp;&nbsp;</option>
                                  <option value="1921">1921&nbsp;&nbsp;</option>
                                  <option value="1920">1920&nbsp;&nbsp;</option>
                                  <option value="1919">1919&nbsp;&nbsp;</option>
                                  <option value="1918">1918&nbsp;&nbsp;</option>
                                  <option value="1917">1917&nbsp;&nbsp;</option>
                                  <option value="1916">1916&nbsp;&nbsp;</option>
                                  <option value="1915">1915&nbsp;&nbsp;</option>
                                  <option value="1914">1914&nbsp;&nbsp;</option>
                                  <option value="1913">1913&nbsp;&nbsp;</option>
                                  <option value="1912">1912&nbsp;&nbsp;</option>
                                  <option value="1911">1911&nbsp;&nbsp;</option>
                                  <option value="1910">1910&nbsp;&nbsp;</option>
                                  <option value="1909">1909&nbsp;&nbsp;</option>
                                  <option value="1908">1908&nbsp;&nbsp;</option>
                                  <option value="1907">1907&nbsp;&nbsp;</option>
                                  <option value="1906">1906&nbsp;&nbsp;</option>
                                  <option value="1905">1905&nbsp;&nbsp;</option>
                                  <option value="1904">1904&nbsp;&nbsp;</option>
                                  <option value="1903">1903&nbsp;&nbsp;</option>
                                  <option value="1902">1902&nbsp;&nbsp;</option>
                                  <option value="1901">1901&nbsp;&nbsp;</option>
                                  <option value="1900">1900&nbsp;&nbsp;</option>	
								</select>
							</div>
                        </div>
                    </div>
                </div>
                                <div class="checkbox">
                                    <div class="checker" id="uniform-newsletter">
                                        <span><input type="checkbox" name="newsletter" id="newsletter" value="1"></span>
                                    </div>
                       				 <label for="newsletter">Sign up for our newsletter!</label>
                   				 </div>
                                <div class="checkbox">
                                    <div class="checker" id="uniform-optin"><span><input type="checkbox" name="optin" id="optin" value="1"></span></div>
                                    <label for="optin">Receive special offers from our partners!</label>
                                </div>
                        </div>

            			 <div class="submit clearfix">
               				 <input type="hidden" name="email_create" value="1">
                			<input type="hidden" name="is_new_customer" value="1">
                			<input type="hidden" class="hidden" name="back" value="my-account">			
                            <button type="submit" name="submitAccount" id="submitAccount" class="btn btn-default button button-medium">
                    			<span>Register<i class="fa fa-chevron-right right"></i></span>
                			</button>
                			<p class="pull-right required"><span><sup>*</sup>Required field</span></p>
            			</div>
        			</form>
				</div>
                
                
			</div><!-- .row -->
		</div><!-- #columns -->
	</div>
