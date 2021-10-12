<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="taxi.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

			<section class="banner-area relative" id="home">
				<div class="overlay overlay-bg"></div>	
				<div class="container">
					<div class="row fullscreen d-flex align-items-center justify-content-between">
						<div class="banner-content col-lg-6 col-md-6 ">
							<h6 class="text-white ">Need a ride? just call</h6>
							<h1 class="text-uppercase">
								9321 6410 23			
							</h1>
							<p class="pt-10 pb-10 text-white">
								Whether you enjoy city breaks or extended holidays in the sun, you can always improve your travel experiences by staying in a small.
							</p>
							<a href="#" class="primary-btn text-uppercase">Call for Cab</a>
						</div>
						<div class="col-lg-4  col-md-6 header-right">
							<h4 class="pb-30">Book Your Cab Online!</h4>
							<form class="form">
							    <div class="from-group">

									<asp:TextBox ID="TextBox1" runat="server" CssClass="form-control txt-field" type="text" name="name" placeholder="Your name"  onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your name'" ForeColor="White" ></asp:TextBox>
									<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Name" ControlToValidate="TextBox1" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
									<asp:TextBox ID="TextBox2" runat="server" CssClass="form-control txt-field"  type="email" name="email" placeholder="Email address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email address'" ForeColor="White" ></asp:TextBox>
									<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Bold="true"></asp:RegularExpressionValidator>
									<asp:TextBox ID="TextBox3" runat="server" CssClass="form-control txt-field"  type="tel" name="phone" placeholder="Phone number" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Phone number'" ForeColor="White" ></asp:TextBox>
									<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Phone" ControlToValidate="TextBox3" ValidationExpression="^[789]\d{9}$" ForeColor="Red"  Font-Bold="true"></asp:RegularExpressionValidator>
							    </div>						

								<div class="form-group default-select" id="default-select" >

										   <asp:DropDownList ID="DropDownList1" runat="server" CssClass="default-select" ForeColor="White">
											   <asp:ListItem Value="" Selected="false" Enabled="true">From Destination</asp:ListItem>
											   <asp:ListItem Value="Yeswanthpur" >Yeswantpur</asp:ListItem>
											   <asp:ListItem Value="Jayanagar" >Jayanagar</asp:ListItem>
											   <asp:ListItem Value="Yelahanka" >Yelahanka</asp:ListItem>
											   
										   </asp:DropDownList>
									<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="No Destination Selected" ForeColor="Red" Font-Bold="true" ControlToValidate="DropDownList1"></asp:RequiredFieldValidator>
								</div>
								<div class="form-group default-select">

										   <asp:DropDownList ID="DropDownList2" runat="server" CssClass="default-select" ForeColor="White">
											   <asp:ListItem Value="" Selected="false" Enabled="true" >To Destination</asp:ListItem>
											   <asp:ListItem Value="Yeswanthpur" >Yeswantpur</asp:ListItem>
											   <asp:ListItem Value="Jayanagar" >Jayanagar</asp:ListItem>
											   <asp:ListItem Value="Yelahanka" >Yelahanka</asp:ListItem>
										   </asp:DropDownList>
									<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="No Destination Selected" Font-Bold="true" ForeColor="Red" ControlToValidate="DropDownList2"></asp:RequiredFieldValidator>
								</div>
								<div class="form-group default-select">

										   <asp:DropDownList ID="DropDownList3" runat="server" CssClass="default-select" ForeColor="White">
											   <asp:ListItem Value="" Selected="false" Enabled="true" >Select CarType</asp:ListItem>
											   <asp:ListItem Value="economy" >Economy</asp:ListItem>
											   <asp:ListItem Value="commute" >Commute</asp:ListItem>
											   <asp:ListItem Value="luxury" >Luxury</asp:ListItem>
										   </asp:DropDownList>
									<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="No Destination Selected" Font-Bold="true" ForeColor="Red" ControlToValidate="DropDownList2"></asp:RequiredFieldValidator>
								</div>

							    <div class="form-group">
									<asp:TextBox ID="TextBox4" runat="server" CssClass="form-control txt-field" TextMode="Date" ForeColor="White"></asp:TextBox>
									<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Select Date" ForeColor="Red" Font-Bold="true" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
									<asp:TextBox ID="TextBox5" runat="server" CssClass="form-control txt-field" TextMode="Time" Format="HH:mm" ForeColor="White"></asp:TextBox>
									<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Select Time" ForeColor="Red" Font-Bold="true" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
							    </div>	
								
							    <div class="form-group">
										<asp:Button ID="Button1" runat="server" Text="Make Reservation" CssClass="btn btn-default btn-lg btn-block text-center text-uppercase" OnClick="Button1_Click" />

							    </div>
							</form>
						</div>											
					</div>
				</div>					
			</section>

			<section class="home-about-area section-gap">
				<div class="container">
					<div class="row align-items-center">
						<div class="col-lg-6 about-left">
							<img class="img-fluid" src="img/about-img.jpg" alt="">
						</div>
						<div class="col-lg-6 about-right">
							<h1>Globally Connected
							by Large Network</h1>
							<h4>We are here to listen from you deliver exellence</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor.								
							</p>
							<a class="text-uppercase primary-btn" href="#">Get Details</a>
						</div>
					</div>
				</div>	
			</section>

			<section class="services-area pb-120">
				<div class="container">
					<div class="row section-title">
						<h1>What Services we offer to our clients</h1>
						<p>Who are in extremely love with eco friendly system.</p>
					</div>
					<div class="row">
						<div class="col-lg-4 single-service">
							<span class="lnr lnr-car"></span>
							<a href="#"><h4>Taxi Service</h4></a>
							<p>
								Usage of the Internet is becoming more common due to rapid advancement of technology and power.
							</p>
						</div>
						<div class="col-lg-4 single-service">
							<span class="lnr lnr-briefcase"></span>
							<a href="#"><h4>Office Pick-ups</h4></a>
							<p>
								Usage of the Internet is becoming more common due to rapid advancement of technology and power.
							</p>
						</div>
						<div class="col-lg-4 single-service">
							<span class="lnr lnr-bus"></span>
							<a href="#"><h4>Event Transportation</h4></a>
							<p>
								Usage of the Internet is becoming more common due to rapid advancement of technology and power.
							</p>
						</div>												
					</div>	
				</div>	
			</section>

			<section class="image-gallery-area section-gap">
				<div class="container">
					<div class="row section-title">
						<h1>Image Gallery that we like to share</h1>
						<p>Who are in extremely love with eco friendly system.</p>
					</div>					
					<div class="row">
						<div class="col-lg-4 single-gallery">
							<a href="img/g1.jpg" class="img-gal"><img class="img-fluid" src="img/g1.jpg" alt=""></a>
							<a href="img/g4.jpg" class="img-gal"><img class="img-fluid" src="img/g4.jpg" alt=""></a>
						</div>	
						<div class="col-lg-4 single-gallery">
							<a href="img/g2.jpg" class="img-gal"><img class="img-fluid" src="img/g2.jpg" alt=""></a>
							<a href="img/g5.jpg" class="img-gal"><img class="img-fluid" src="img/g5.jpg" alt=""></a>						
						</div>	
						<div class="col-lg-4 single-gallery">
							<a href="img/g3.jpg" class="img-gal"><img class="img-fluid" src="img/g3.jpg" alt=""></a>
							<a href="img/g6.jpg" class="img-gal"><img class="img-fluid" src="img/g6.jpg" alt=""></a>
						</div>				
					</div>
				</div>	
			</section>

			<section class="reviews-area section-gap">
				<div class="container">
					<div class="row section-title">
						<h1>Client’s Reviews</h1>
						<p>Who are in extremely love with eco friendly system.</p>
					</div>					
					<div class="row">
						<div class="col-lg-4 col-md-6">
							<div class="single-review">
								<h4>Cody Hines</h4>
								<p>
									Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker.
								</p>
								<div class="star">
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star"></span>
									<span class="fa fa-star"></span>
								</div>
							</div>
						</div>	
						<div class="col-lg-4 col-md-6">
							<div class="single-review">
								<h4>Chad Herrera</h4>
								<p>
									Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker.
								</p>
								<div class="star">
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star"></span>
									<span class="fa fa-star"></span>
								</div>
							</div>
						</div>	
						<div class="col-lg-4 col-md-6">
							<div class="single-review">
								<h4>Andre Gonzalez</h4>
								<p>
									Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker.
								</p>
								<div class="star">
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star"></span>
									<span class="fa fa-star"></span>
								</div>
							</div>
						</div>	
						<div class="col-lg-4 col-md-6">
							<div class="single-review">
								<h4>Jon Banks</h4>
								<p>
									Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker.
								</p>
								<div class="star">
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star"></span>
									<span class="fa fa-star"></span>
								</div>
							</div>
						</div>	
						<div class="col-lg-4 col-md-6">
							<div class="single-review">
								<h4>Landon Houston</h4>
								<p>
									Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker.
								</p>
								<div class="star">
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star"></span>
									<span class="fa fa-star"></span>
								</div>
							</div>
						</div>	
						<div class="col-lg-4 col-md-6">
							<div class="single-review">
								<h4>Nelle Wade</h4>
								<p>
									Accessories Here you can find the best computer accessory for your laptop, monitor, printer, scanner, speaker.
								</p>
								<div class="star">
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star checked"></span>
									<span class="fa fa-star"></span>
									<span class="fa fa-star"></span>
								</div>
							</div>
						</div>																															
					</div>
				</div>	
			</section>
			
</asp:Content>
