<%@ Page Title="" Language="C#" MasterPageFile="~/Driver/drivermain.Master" AutoEventWireup="true" CodeBehind="trips.aspx.cs" Inherits="taxi.Driver.WebForm3" %>
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
								<p class="hidden-lg hidden-md">Trips</p>
                            </a>
                        </li>
                        
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
                                <h4 class="title">My Trips</h4>
                                <p class="category"><asp:Label ID="Label2" runat="server" Text="All Cab Requests"></asp:Label></p>
                            </div>
                            <div class="content">

                                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Horizontal" CssClass="table table-responsive" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" >
									<%--  OnRowCommand="GridView1_RowCommand" --%>
									<AlternatingRowStyle BackColor="#F7F7F7" />
									<Columns>
										<asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
										<asp:BoundField DataField="time" HeaderText="Time" SortExpression="time" />
										<asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
										<asp:BoundField DataField="pick_up" HeaderText="Pick Up Location" SortExpression="pick_up" />
										<asp:BoundField DataField="car_type" HeaderText="Car Type" SortExpression="car_type" />
										<asp:BoundField DataField="drop_off" HeaderText="Drop Off Location" SortExpression="drop_off" />
										<asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
										<asp:BoundField DataField="fare" HeaderText="Fare" SortExpression="fare" />
										<asp:BoundField DataField="d_name" HeaderText="Driver Name" SortExpression="d_name" />
										<asp:CommandField ShowSelectButton="True" />
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
                            	<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cabConnectionString %>" SelectCommand="SELECT [date], [time], [email], [pick_up], [car_type], [drop_off], [status], [fare], [d_name] FROM [trips] WHERE ([d_name] = @d_name)">
									<SelectParameters>
										<asp:SessionParameter Name="d_name" SessionField="d_name" Type="String" />
									</SelectParameters>
								</asp:SqlDataSource>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</asp:Content>
