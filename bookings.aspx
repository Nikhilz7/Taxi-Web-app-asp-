<%@ Page Title="" Language="C#" MasterPageFile="~/main2.Master" AutoEventWireup="true" CodeBehind="bookings.aspx.cs" Inherits="taxi.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<!-- start banner Area -->
			<section class="banner-area relative about-banner" id="home">	
				<div class="overlay overlay-bg"></div>
				<div class="container">				
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">
								My Bookings!				
							</h1>	
							<p class="text-white link-nav"><a href="index.aspx">Home </a>  <span class="lnr lnr-arrow-right"></span>  <a href="#">My-Bookings</a></p>
						</div>	
					</div>
				</div>
			</section>
			<!-- End banner Area -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<!-- Start home-about Area -->
			<section class="home-about-area section-gap">
				<div class="container" style="background-color:yellow;">
					<div class="row align-items-center">
						
						<table class="table" style="color:black;">
							<thead class="thead-dark">
								<th>Date</th>
								<th>Pickup Loacation</th>
								<th>Car Name</th>
								<th>Drop off Location</th>
								<th>Status</th>
								<th>fare</th>
								<th>Payment</th>
							</thead>
							
									
							
							<tr>
								<th>
									<asp:Label ID="date" runat="server"></asp:Label>
								</th>
								<th>
									<asp:Label ID="pick" runat="server"></asp:Label>
								</th>
								<th>
									<asp:Label ID="carname" runat="server"></asp:Label>
								</th>
								<th>
									<asp:Label ID="drop" runat="server"></asp:Label>
								</th>
								<th>
									<asp:Label ID="status" runat="server"></asp:Label>
								</th>
								<th>
									<asp:Label ID="fare" runat="server"></asp:Label>
								</th>
								<th>
									<asp:LinkButton ID="pay" runat="server" CausesValidation="false" OnClick="pay_Click">Pay</asp:LinkButton>
								</th>
							</tr>
							<%--<tr>
								<th>10/01/12</th>
								<th>yelhanka</th>
								<th>Maruthi Swift</th>
								<th>Bel Circle</th>
								<th>Pending</th>
								<th>1234</th>
							</tr>--%>
						</table>
					</div>
				</div>	
			</section>
			<!-- End home-about Area -->
</asp:Content>
