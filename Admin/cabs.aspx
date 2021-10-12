<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmain.Master" AutoEventWireup="true" CodeBehind="cabs.aspx.cs" Inherits="taxi.Admin.WebForm7" %>
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
                                    <i class="fa fa-user"></i>
                                    <p class="hidden-lg hidden-md">Cabs</p>
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
                        <div class="col-md-12">
                            <div class="card">
                                <div class="header">
                                    <h4 class="title">Cabs</h4>
                                    <p class="category">All active Cabs</p>
                                </div>
                                <div class="content table-responsive table-full-width">
                                    <asp:GridView ID="GridView1" runat="server" CssClass="table" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="car_id" DataSourceID="SqlDataSource1" GridLines="Horizontal">
										<AlternatingRowStyle BackColor="#F7F7F7" />
										<Columns>
											<asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
											<asp:BoundField DataField="car_id" HeaderText="Car ID" ReadOnly="True" SortExpression="car_id" />
											<asp:BoundField DataField="car_name" HeaderText="Name" SortExpression="car_name" />
											<asp:BoundField DataField="car_type" HeaderText="Type" SortExpression="car_type" />
											<asp:BoundField DataField="car_regno" HeaderText="Registration Number" SortExpression="car_regno" />
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

                                	<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cabConnectionString %>" DeleteCommand="DELETE FROM [cars] WHERE [car_id] = @car_id" InsertCommand="INSERT INTO [cars] ([car_name], [car_type], [car_regno]) VALUES (@car_name, @car_type, @car_regno)" SelectCommand="SELECT * FROM [cars]" UpdateCommand="UPDATE [cars] SET [car_name] = @car_name, [car_type] = @car_type, [car_regno] = @car_regno WHERE [car_id] = @car_id">
										<DeleteParameters>
											<asp:Parameter Name="car_id" Type="Int32" />
										</DeleteParameters>
										<InsertParameters>
											<asp:Parameter Name="car_name" Type="String" />
<asp:Parameter Name="car_type" Type="String"></asp:Parameter>
											<asp:Parameter Name="car_regno" Type="String" />
										</InsertParameters>
										<UpdateParameters>
											<asp:Parameter Name="car_name" Type="String" />
											<asp:Parameter Name="car_type" Type="String" />
											<asp:Parameter Name="car_regno" Type="String" />
											<asp:Parameter Name="car_id" Type="Int32" />
										</UpdateParameters>
									</asp:SqlDataSource>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

</asp:Content>
