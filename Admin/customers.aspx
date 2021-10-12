<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmain.Master" AutoEventWireup="true" CodeBehind="customers.aspx.cs" Inherits="taxi.Admin.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	
		<div class="main-panel">
            <nav class="navbar navbar-default navbar-fixed">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="#">Customers</a>
                    </div>
                    <div class="collapse navbar-collapse">
                        <ul class="nav navbar-nav navbar-left">
                            <li>
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-users"></i>
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
                                    <h4 class="title">Customers</h4>
                                    <p class="category"><i class="fa fa-cogs"></i>Manage Users</p>
                                </div>
                                <div class="content table-responsive table-full-width">
									
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="email" DataSourceID="SqlDataSource1" GridLines="Horizontal" CssClass="table table-responsive">
										<AlternatingRowStyle BackColor="#F7F7F7" />
										<Columns>
											<asp:TemplateField HeaderText="Email" SortExpression="email">
												<EditItemTemplate>
													<asp:Label ID="Label1" runat="server" Text='<%# Eval("email") %>'></asp:Label>
												</EditItemTemplate>
												<FooterTemplate>
													<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
												</FooterTemplate>
												<ItemTemplate>
													<asp:Label ID="Label1" runat="server" Text='<%# Bind("email") %>'></asp:Label>
												</ItemTemplate>
											</asp:TemplateField>
											<asp:TemplateField HeaderText="Phone" SortExpression="phone">
												<EditItemTemplate>
													<asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("phone") %>'></asp:TextBox>
												</EditItemTemplate>
												<FooterTemplate>
													<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
												</FooterTemplate>
												<ItemTemplate>
													<asp:Label ID="Label2" runat="server" Text='<%# Bind("phone") %>'></asp:Label>
												</ItemTemplate>
											</asp:TemplateField>
											<asp:TemplateField HeaderText="Name" SortExpression="name">
												<EditItemTemplate>
													<asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
												</EditItemTemplate>
												<FooterTemplate>
													<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
												</FooterTemplate>
												<ItemTemplate>
													<asp:Label ID="Label3" runat="server" Text='<%# Bind("name") %>'></asp:Label>
												</ItemTemplate>
											</asp:TemplateField>
											<asp:TemplateField HeaderText="Password" SortExpression="password">
												<EditItemTemplate>
													<asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("password") %>'></asp:TextBox>
												</EditItemTemplate>
												<FooterTemplate>
													<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
												</FooterTemplate>
												<ItemTemplate>
													<asp:Label ID="Label4" runat="server" Text='<%# Bind("password") %>'></asp:Label>
												</ItemTemplate>
											</asp:TemplateField>
											<asp:TemplateField HeaderText="Address" SortExpression="address">
												<EditItemTemplate>
													<asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("address") %>'></asp:TextBox>
												</EditItemTemplate>
												<FooterTemplate>
													<asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
												</FooterTemplate>
												<ItemTemplate>
													<asp:Label ID="Label5" runat="server" Text='<%# Bind("address") %>'></asp:Label>
												</ItemTemplate>
											</asp:TemplateField>
											<asp:TemplateField HeaderText="Date of Birth" SortExpression="date_of_birth">
												<EditItemTemplate>
													<asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("date_of_birth") %>'></asp:TextBox>
												</EditItemTemplate>
												<FooterTemplate>
													<asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
												</FooterTemplate>
												<ItemTemplate>
													<asp:Label ID="Label6" runat="server" Text='<%# Bind("date_of_birth") %>'></asp:Label>
												</ItemTemplate>
											</asp:TemplateField>
											<asp:TemplateField HeaderText="Manage" ShowHeader="False">
												<EditItemTemplate>
													<asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
													&nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
												</EditItemTemplate>
												<FooterTemplate>
													<asp:LinkButton ID="LinkButton3" runat="server">Insert</asp:LinkButton>
												</FooterTemplate>
												<ItemTemplate>
													<asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
													&nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
												</ItemTemplate>
											</asp:TemplateField>
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
									<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:cabConnectionString %>" DeleteCommand="DELETE FROM [customers] WHERE [email] = @original_email AND (([phone] = @original_phone) OR ([phone] IS NULL AND @original_phone IS NULL)) AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL)) AND (([address] = @original_address) OR ([address] IS NULL AND @original_address IS NULL)) AND (([date_of_birth] = @original_date_of_birth) OR ([date_of_birth] IS NULL AND @original_date_of_birth IS NULL))" InsertCommand="INSERT INTO [customers] ([email], [phone], [name], [password], [address], [date_of_birth]) VALUES (@email, @phone, @name, @password, @address, @date_of_birth)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [customers]" UpdateCommand="UPDATE [customers] SET [phone] = @phone, [name] = @name, [password] = @password, [address] = @address, [date_of_birth] = @date_of_birth WHERE [email] = @original_email AND (([phone] = @original_phone) OR ([phone] IS NULL AND @original_phone IS NULL)) AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL)) AND (([address] = @original_address) OR ([address] IS NULL AND @original_address IS NULL)) AND (([date_of_birth] = @original_date_of_birth) OR ([date_of_birth] IS NULL AND @original_date_of_birth IS NULL))">
										<DeleteParameters>
											<asp:Parameter Name="original_email" Type="String" />
											<asp:Parameter Name="original_phone" Type="String" />
											<asp:Parameter Name="original_name" Type="String" />
											<asp:Parameter Name="original_password" Type="String" />
											<asp:Parameter Name="original_address" Type="String" />
											<asp:Parameter Name="original_date_of_birth" Type="String" />
										</DeleteParameters>
										<InsertParameters>
											<asp:Parameter Name="email" Type="String" />
											<asp:Parameter Name="phone" Type="String" />
											<asp:Parameter Name="name" Type="String" />
											<asp:Parameter Name="password" Type="String" />
											<asp:Parameter Name="address" Type="String" />
											<asp:Parameter Name="date_of_birth" Type="String" />
										</InsertParameters>
										<UpdateParameters>
											<asp:Parameter Name="phone" Type="String" />
											<asp:Parameter Name="name" Type="String" />
											<asp:Parameter Name="password" Type="String" />
											<asp:Parameter Name="address" Type="String" />
											<asp:Parameter Name="date_of_birth" Type="String" />
											<asp:Parameter Name="original_email" Type="String" />
											<asp:Parameter Name="original_phone" Type="String" />
											<asp:Parameter Name="original_name" Type="String" />
											<asp:Parameter Name="original_password" Type="String" />
											<asp:Parameter Name="original_address" Type="String" />
											<asp:Parameter Name="original_date_of_birth" Type="String" />
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
