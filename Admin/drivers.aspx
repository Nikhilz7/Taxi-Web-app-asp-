<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmain.Master" AutoEventWireup="true" CodeBehind="drivers.aspx.cs" Inherits="taxi.Admin.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	
		<div class="main-panel">
            <nav class="navbar navbar-default navbar-fixed">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="#">Drivers</a>
                    </div>
                    <div class="collapse navbar-collapse">
                        <ul class="nav navbar-nav navbar-left">
                            <li>
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-user"></i>
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
                                    <h4 class="title">Drivers</h4>
                                    <p class="category">All hired Cabbies</p>
                                </div>
                                <div class="content table-responsive table-full-width">
                                    <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="d_name" DataSourceID="SqlDataSource1" GridLines="Horizontal" CssClass="table table-responsive">
										<AlternatingRowStyle BackColor="#F7F7F7" />
										<Columns>
											<asp:BoundField DataField="d_name" HeaderText="Driver Name" ReadOnly="True" SortExpression="d_name" />
											<asp:BoundField DataField="d_email" HeaderText="Email" SortExpression="d_email" />
											<asp:BoundField DataField="d_password" HeaderText="Password" SortExpression="d_password" />
											<asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
											<asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
											<asp:BoundField DataField="license" HeaderText="License" SortExpression="license" />
											<asp:BoundField DataField="car_id" HeaderText="Car_ID" SortExpression="car_id" />
											<asp:BoundField DataField="earning" HeaderText="Earning" SortExpression="earning" />
											<asp:BoundField DataField="d_date_of_birth" HeaderText="Date Of Birth" SortExpression="d_date_of_birth" />
											<asp:BoundField DataField="verified" HeaderText="Verified" SortExpression="verified" />
											<asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
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

                                	<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cabConnectionString %>" DeleteCommand="DELETE FROM [drivers] WHERE [d_name] = @d_name" InsertCommand="INSERT INTO [drivers] ([d_name], [d_email], [d_password], [phone], [address], [license], [car_id], [earning], [d_date_of_birth], [verified], [status]) VALUES (@d_name, @d_email, @d_password, @phone, @address, @license, @car_id, @earning, @d_date_of_birth, @verified, @status)" SelectCommand="SELECT * FROM [drivers]" UpdateCommand="UPDATE [drivers] SET [d_email] = @d_email, [d_password] = @d_password, [phone] = @phone, [address] = @address, [license] = @license, [car_id] = @car_id, [earning] = @earning, [d_date_of_birth] = @d_date_of_birth, [verified] = @verified, [status] = @status WHERE [d_name] = @d_name">
										<DeleteParameters>
											<asp:Parameter Name="d_name" Type="String" />
										</DeleteParameters>
										<InsertParameters>
											<asp:Parameter Name="d_name" Type="String" />
											<asp:Parameter Name="d_email" Type="String" />
											<asp:Parameter Name="d_password" Type="String" />
											<asp:Parameter Name="phone" Type="String" />
											<asp:Parameter Name="address" Type="String" />
											<asp:Parameter Name="license" Type="String" />
											<asp:Parameter Name="car_id" Type="Int32" />
											<asp:Parameter Name="earning" Type="Int32" />
											<asp:Parameter Name="d_date_of_birth" Type="String" />
											<asp:Parameter Name="verified" Type="String" />
											<asp:Parameter Name="status" Type="String" />
										</InsertParameters>
										<UpdateParameters>
											<asp:Parameter Name="d_email" Type="String" />
											<asp:Parameter Name="d_password" Type="String" />
											<asp:Parameter Name="phone" Type="String" />
											<asp:Parameter Name="address" Type="String" />
											<asp:Parameter Name="license" Type="String" />
											<asp:Parameter Name="car_id" Type="Int32" />
											<asp:Parameter Name="earning" Type="Int32" />
											<asp:Parameter Name="d_date_of_birth" Type="String" />
											<asp:Parameter Name="verified" Type="String" />
											<asp:Parameter Name="status" Type="String" />
											<asp:Parameter Name="d_name" Type="String" />
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
