<%@ Page Title="" Language="C#" MasterPageFile="~/Driver/drivermain.Master" AutoEventWireup="true" CodeBehind="mycab.aspx.cs" Inherits="taxi.Driver.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div class="main-panel">
        <nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">Dashboard</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-left">
                        <li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-dashboard"></i>
                                <p class="hidden-lg hidden-md">Dashboard</p>
                            </a>
                        </li>
                        <li><p class="hidden-lg hidden-md"><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></p></li>
                        
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click1">Logout</asp:LinkButton>
                        </li>
                        <li class="separator hidden-lg"></li>
                    </ul>
                </div>
            </div>
        </nav>

         <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">

                            <div class="header">
                                <h4 class="title">My Cab</h4>
                                <p class="category"><asp:Label ID="Label2" runat="server" Text="Current Cab"></asp:Label></p>
                            </div>
                            <div class="content">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="car_id" DataSourceID="SqlDataSource1" GridLines="Horizontal" CssClass="table table-full-width">
									<AlternatingRowStyle BackColor="#F7F7F7" />
									<Columns>
										<asp:BoundField DataField="car_id" HeaderText="Car ID" InsertVisible="False" ReadOnly="True" SortExpression="car_id" />
										<asp:BoundField DataField="car_name" HeaderText="Name" SortExpression="car_name" />
										<asp:BoundField DataField="car_type" HeaderText="Type" SortExpression="car_type" />
										<asp:BoundField DataField="car_regno" HeaderText="Registration Number" SortExpression="car_regno" />
									</Columns>
									<FooterStyle BackColor="#B5C7DE" ForeColor="#3138c4" />
                                    <HeaderStyle BackColor="#3138c4" Font-Bold="True" ForeColor="#F7F7F7" />
                                    <PagerStyle BackColor="#E7E7FF" ForeColor="#3138c4" HorizontalAlign="Right" />
                                    <RowStyle BackColor="#E7E7FF" ForeColor="#3138c4" />
                                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                    <SortedAscendingCellStyle BackColor="#F4F4FD" />
                                    <SortedAscendingHeaderStyle BackColor="#4c4d9d" />
                                    <SortedDescendingCellStyle BackColor="#D8D8F0" />
                                    <SortedDescendingHeaderStyle BackColor="#323477" />
								</asp:GridView>
                               
                            	<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cabConnectionString %>" SelectCommand="SELECT drivers.car_id AS Expr1, cars.* FROM drivers INNER JOIN cars ON drivers.car_id = cars.car_id AND drivers.car_id = cars.car_id"></asp:SqlDataSource>
                               
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</asp:Content>
