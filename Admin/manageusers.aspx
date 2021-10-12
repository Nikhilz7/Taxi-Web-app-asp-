<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminmain.Master" AutoEventWireup="true" CodeBehind="manageusers.aspx.cs" Inherits="taxi.Admin.WebForm6" %>
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
                                <a href="#">
                                    <p>Log out</p>
                                </a>
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
                                    <p class="category">Manage Customers</p>
                                </div>
                                <asp:TextBox ID="cname" runat="server" CssClass="input-sm"></asp:TextBox><asp:LinkButton ID="LinkButton1" runat="server" CssClass="fa fa-search" CausesValidation="True" OnClick="LinkButton1_Click"></asp:LinkButton>
                                
                            </div>
                        </div>
                    </div>
					<div class="row">
						<div class="col-md-12">
                            <div class="card">
                                     <div class="content table-responsive table-full-width  ">

			                        </div>
                                
						        </div>
                            </div>
					</div>
                </div>
			
            </div>


        </div>
</asp:Content>
