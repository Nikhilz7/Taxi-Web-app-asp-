<%@ Page Title="" Language="C#" MasterPageFile="~/main2.Master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="taxi.signup" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<!-- start banner Area -->
			<section class="banner-area relative about-banner" id="home">	
				<div class="overlay overlay-bg"></div>
				<div class="container">				
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">
								Sign-Up!				
							</h1>	
							<p class="text-white link-nav"><a href="index.aspx">Home </a>  <span class="lnr lnr-arrow-right"></span>  <a href="about.html">Sign-Up</a></p>
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
									<asp:TextBox ID="TextBox1" runat="server" CssClass="form-control txt-field" type="text" name="name" placeholder="Your name"  onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your name'" ForeColor="White"></asp:TextBox>
									<asp:RequiredFieldValidator  Font-Bold="true" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Your Name" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
									<asp:TextBox ID="TextBox2" runat="server" CssClass="form-control txt-field" type="email" name="email" placeholder="Email address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email address'" ForeColor="White"></asp:TextBox>
									<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email" ControlToValidate="TextBox2" ValidationExpression="\w+([-+.']\w+)*@\w+([-	.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"  Font-Bold="true"></asp:RegularExpressionValidator>
									<asp:TextBox ID="TextBox3" runat="server" CssClass="form-control txt-field" type="phone" name="phone" placeholder="Phone number" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Phone number'" ForeColor="White"></asp:TextBox>
									<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Phone Number" ControlToValidate="TextBox3" ValidationExpression="^[789]\d{9}$" ForeColor="Red"  Font-Bold="true"></asp:RegularExpressionValidator>
									<asp:TextBox ID="TextBox4" runat="server" CssClass="form-control txt-field" type="password" name="password" placeholder="Password" onfocus="this.placeholder = ''" onblur="this.placeholder = ''" ForeColor="White"></asp:TextBox>
									<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="8 charecters with 1 upper 1 lower 1 special" ForeColor="Red" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&amp;])[A-Za-z\d$@$!%*#?&amp;]{8,}$" ControlToValidate="TextBox4"  Font-Bold="true"></asp:RegularExpressionValidator>
									<asp:TextBox ID="TextBox5" runat="server" CssClass="form-control txt-field" type="password" name="password" placeholder="Comfirm Password" onfocus="this.placeholder = ''" onblur="this.placeholder = ''" ForeColor="White"></asp:TextBox>
									<asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password not matching" ForeColor="Red" ControlToCompare="TextBox4" ControlToValidate="TextBox5" Operator="Equal"  Font-Bold="true"></asp:CompareValidator>
									<asp:TextBox ID="TextBox7" runat="server" CssClass="form-control txt-field" type="text" name="add" placeholder="Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Address'" ForeColor="White"></asp:TextBox>
									<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Full Address" ForeColor="Red" Font-Bold="true" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
									<asp:TextBox ID="TextBox8" runat="server" CssClass="form-control txt-field" TextMode="Date" ForeColor="White"></asp:TextBox>
									<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Select Your DOB" ForeColor="Red" Font-Bold="true" ControlToValidate="TextBox8"></asp:RequiredFieldValidator>
							    </div>							    					    
							    <div class="form-group">
										<asp:Button ID="hv" runat="server" Text="Submit" CssClass="btn btn-default btn-lg btn-block text-center text-uppercase " OnClick="hv_Click" />
									<br />
									<h4 class="pb-30">Already a member?<a href="login.aspx">Login!</a>!</h4>

							    </div>
							</form>
						</div>	
		</div>
				</div>					
			</section>
	<!-- End home-about Area -->
</asp:Content>
