<%@ Page Title="" Language="C#" MasterPageFile="~/Driver/drivermain.Master" AutoEventWireup="true" CodeBehind="user.aspx.cs" Inherits="taxi.Driver.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
		
        <div class="main-panel">
            <nav class="navbar navbar-default navbar-fixed">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="#">Driver Profile</a>
                    </div>
                    <div class="collapse navbar-collapse">
                        <ul class="nav navbar-nav navbar-left">
                            <li>
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-dashboard"></i>
                                    <p class="hidden-lg hidden-md">Dashboard</p>
                                </a>
                            </li>

                        </ul>

                        <ul class="nav navbar-nav navbar-right">
                           <li>
                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click1" CausesValidation="false">Logout</asp:LinkButton>
                        </li>
                            <li class="separator hidden-lg"></li>
                        </ul>
                    </div>
                </div>
            </nav>

            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="card">
                                <div class="header">
                                    <h4 class="title">Edit Profile</h4>
                                </div>
                                <div class="content">
                                    <form>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Name</label>
                                                     <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control txt-field" type="text" name="name" placeholder="Your name"  onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your name'" ></asp:TextBox>
                                    <asp:RequiredFieldValidator  Font-Bold="true" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Your Name" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Email address</label>
                                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" type="email" name="email" placeholder="Email address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email address'" ></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email" ControlToValidate="TextBox2" ValidationExpression="\w+([-+.']\w+)*@\w+([-    .]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"  Font-Bold="true"></asp:RegularExpressionValidator>
                                                </div>
                                            </div>
                                        </div>
            
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Password</label>
                                                     <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control txt-field" type="password" name="password" placeholder="Password" onfocus="this.placeholder = ''" onblur="this.placeholder = ''"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="8 charecters with 1 upper 1 lower 1 special" ForeColor="Red" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&amp;])[A-Za-z\d$@$!%*#?&amp;]{8,}$" ControlToValidate="TextBox4"  Font-Bold="true"></asp:RegularExpressionValidator>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Confirm Password</label>
                                                    <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control txt-field" type="password" name="password" placeholder="Comfirm Password" onfocus="this.placeholder = ''" onblur="this.placeholder = ''" ></asp:TextBox>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password not matching" ForeColor="Red" ControlToCompare="TextBox4" ControlToValidate="TextBox5" Operator="Equal"  Font-Bold="true"></asp:CompareValidator>
                                                </div>
                                            </div>
                                        </div>
            
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label>Address</label>
                                                    <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control txt-field" type="text" name="add" placeholder="Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Address'" ></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Full Address" ForeColor="Red" Font-Bold="true" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                        </div>
            
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>Phone</label>
                                                     <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control txt-field" type="phone" name="phone" placeholder="Phone number" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Phone number'"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Phone Number" ControlToValidate="TextBox3" ValidationExpression="^[789]\d{9}$" ForeColor="Red"  Font-Bold="true"></asp:RegularExpressionValidator>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>License No</label>
                                                    <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control txt-field"  name="license" placeholder="License number" onfocus="this.placeholder = ''" onblur="this.placeholder = 'License number'"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter License Number" ForeColor="Red" Font-Bold="true" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>Date of Birth</label>
                                                    <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control txt-field" TextMode="Date"></asp:TextBox>
									<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Select Date" ForeColor="Red" Font-Bold="true" ControlToValidate="TextBox8"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                        </div>
            
                                        <asp:Button ID="Button1" runat="server" Text="Update Profile" CssClass="btn btn-info btn-fill pull-right" OnClick="Button1_Click"/>
                                        <div class="clearfix"></div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card card-user">
                                <div class="image">
                                    <img src="https://ununsplash.imgix.net/photo-1431578500526-4d9613015464?fit=crop&fm=jpg&h=300&q=75&w=400"
                                        alt="..." />
                                </div>
                                <div class="content">
                                    <div class="author">
                                        <a href="#">
                                            <img class="avatar border-gray" src="assets/img/faces/face-3.jpg" alt="..." />
            
                                            <h4 class="title">Nikhil<br />
                                                <small>Cabbie</small>
                                            </h4>
                                        </a>
                                    </div>
                                </div>
                                <hr>
                                <div class="text-center">
                                    <button href="#" class="btn btn-simple"><i class="fa fa-facebook-square"></i></button>
                                    <button href="#" class="btn btn-simple"><i class="fa fa-twitter"></i></button>
                                    <button href="#" class="btn btn-simple"><i class="fa fa-google-plus-square"></i></button>
            
                                </div>
                            </div>
                        </div>
            
                    </div>
                </div>
            </div>


            

        </div>
</asp:Content>
