<%@ Page Title="" Language="C#" MasterPageFile="~/main2.Master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="taxi.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<!-- start banner Area -->
			<section class="banner-area relative about-banner" id="home">	
				<div class="overlay overlay-bg"></div>
				<div class="container">				
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">
								Login!				
							</h1>	
							<p class="text-white link-nav"><a href="index.html">Home </a>  <span class="lnr lnr-arrow-right"></span>  <a href="about.html">Login</a></p>
						</div>	
					</div>
				</div>
			</section>
			<!-- End banner Area -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<!-- Start home-about Area -->
	<section class="banner-area relative" id="home">
		<div class="overlay overlay-bg"></div>	
			<div class="container">
	<div  class="row fullscreen d-flex align-items-center justify-content-between">
		<div class="col-lg-6  col-md-6 header-right" style="display:block;margin-left:auto;margin-right:auto;">
							<h4 class="pb-30">Book Your Cab Online!</h4>
							<form class="form">
							    <div class="from-group">
							    	<asp:TextBox ID="TextBox1" runat="server" CssClass="form-control txt-field" type="email" name="email" placeholder="Email address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email address'" ></asp:TextBox>
									<asp:TextBox ID="TextBox2" runat="server" CssClass="form-control txt-field" type="password" name="phone" placeholder="Password" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Password'"></asp:TextBox>
									<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email" ControlToValidate="TextBox1" ValidationExpression="\w+([-+.']\w+)*@\w+([- .]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"  Font-Bold="true"></asp:RegularExpressionValidator>
							    </div>								
							    							    
							    <div class="form-group">
									<asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn-default btn-lg btn-block text-center text-uppercase" OnClick="Button1_Click" />
									<br />
									<br />
									<h4 class="pb-30">Not a member?<a href="signup.aspx">Sign-up!</a>!</h4>
							    </div>
							</form>
						</div>	
		</div>
				</div>					
			</section>
	<!-- End home-about Area -->
</asp:Content>
