<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmain.Master" AutoEventWireup="true" CodeBehind="trips.aspx.cs" Inherits="taxi.Admin.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="main-panel">
            <nav class="navbar navbar-default navbar-fixed">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="#">Cabs</a>
                    </div>
                    <div class="collapse navbar-collapse">
                        <ul class="nav navbar-nav navbar-left">
                            <li>
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-taxi"></i>
                                    <p class="hidden-lg hidden-md">Dashboard</p>
                                </a>
                            </li>

                        </ul>

                        <ul class="nav navbar-nav navbar-right">
                             <li>
                                <asp:LinkButton ID="LinkButtonlo" runat="server" OnClick="LinkButtonlo_Click1">Logout</asp:LinkButton>
                            </li>
                            <li class="separator hidden-lg"></li>
                        </ul>
                    </div>
                </div>
            </nav>

            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="header">
                                    <h4 class="title">Trips</h4>
                                    <p class="category">All Trips of cabs</p>
                                </div>
                                <div class="content table-responsive table-full-width">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Horizontal" CssClass="table table-responsive">
										<AlternatingRowStyle BackColor="#F7F7F7" />
										<Columns>
											<asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
											<asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
											<asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
											<asp:BoundField DataField="pick_up" HeaderText="pick_up" SortExpression="pick_up" />
											<asp:BoundField DataField="car_type" HeaderText="car_type" SortExpression="car_type" />
											<asp:BoundField DataField="drop_off" HeaderText="drop_off" SortExpression="drop_off" />
											<asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
											<asp:BoundField DataField="duration" HeaderText="duration" SortExpression="duration" />
											<asp:BoundField DataField="fare" HeaderText="fare" SortExpression="fare" />
											<asp:BoundField DataField="d_name" HeaderText="d_name" SortExpression="d_name" />
											<asp:BoundField DataField="d_phone" HeaderText="d_phone" SortExpression="d_phone" />
										</Columns>
										<FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
										<HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
										<PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
										<RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
										<SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
										<SortedAscendingCellStyle BackColor="#F4F4FD" />
										<SortedAscendingHeaderStyle BackColor="#5A4C9D" />
										<SortedDescendingCellStyle BackColor="#D8D8F0" />
										<SortedDescendingHeaderStyle BackColor="#3E3277" />
									</asp:GridView>

                                	<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cabConnectionString %>" SelectCommand="SELECT * FROM [trips]"></asp:SqlDataSource>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
</asp:Content>
