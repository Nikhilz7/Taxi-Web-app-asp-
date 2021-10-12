<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="taxi.Driver.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
	<link href="assets/css/login.css" rel="stylesheet" />
	<link href="assets/fonts/font-awesome.min.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12"></div>
            <div class="col-lg-12 col-md-12 login-box">
                <div class="col-lg-12 login-key">
                    <i class="fa fa-key" aria-hidden="true"></i>
                </div>
                <div class="col-lg-12 login-title">
                    Driver Sign Up
                </div>

                <div class="col-lg-12 login-form">
                    <div class="col-md-6 login-form">
                            <div class="form-group">
                                <asp:Label ID="Label1" runat="server" Text="Name" CssClass="form-control-label"></asp:Label>
                                <asp:TextBox ID="name" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required Name" Font-Bold="true" ForeColor="Red" ControlToValidate="name"></asp:RequiredFieldValidator>
                            </div>
                        <div class="form-group">
                               <asp:Label ID="Label3" runat="server" Text="Password" CssClass="form-control-label"></asp:Label>
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" type="password"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="8 charecters with 1 upper 1 lower 1 special" ForeColor="Red" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&amp;])[A-Za-z\d$@$!%*#?&amp;]{8,}$" ControlToValidate="TextBox1"  Font-Bold="true"></asp:RegularExpressionValidator>
                                
                            </div>
                            <div class="form-group">
                               <asp:Label ID="Label2" runat="server" Text="Phone" CssClass="form-control-label"></asp:Label>
                                <asp:TextBox ID="phone" runat="server" CssClass="form-control" type=""></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Phone Number" ControlToValidate="phone" ValidationExpression="^[789]\d{9}$" ForeColor="Red"  Font-Bold="true"></asp:RegularExpressionValidator>
                            </div>
                        <div class="form-group">
                               <asp:Label ID="Label7" runat="server" Text="Date Of Birth" CssClass="form-control-label"></asp:Label>
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Date" BackColor="#1a2226"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Select Your DOB" ForeColor="Red" Font-Bold="true" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                            </div>

                    </div>
                        <div class="col-md-6 login-form">
                            <div class="form-group">
                               <asp:Label ID="Label4" runat="server" Text="email" CssClass="form-control-label"></asp:Label>
                                <asp:TextBox ID="email" runat="server" CssClass="form-control" type=""></asp:TextBox>
                                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email" ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-    .]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"  Font-Bold="true"></asp:RegularExpressionValidator>
                            </div>
                            <div class="form-group">
                               <asp:Label ID="Label5" runat="server" Text="Confirm Password" CssClass="form-control-label"></asp:Label>
                                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" type="password"></asp:TextBox>
                                 <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password not matching" ForeColor="Red" ControlToCompare="TextBox1" ControlToValidate="TextBox3" Operator="Equal"  Font-Bold="true"></asp:CompareValidator>

                            </div>
                            <div class="form-group">
                               <asp:Label ID="Label6" runat="server" Text="License Number" CssClass="form-control-label"></asp:Label>
                                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" type=""></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter License Number" ForeColor="Red" Font-Bold="true" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>

                            </div>
                            <div class="form-group">
                               <asp:Label ID="Label8" runat="server" Text="Address" CssClass="form-control-label"></asp:Label>
                                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter your Address" ForeColor="Red" Font-Bold="true" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-lg-12 loginbttm">
                                <div class="col-lg-6 login-btm login-text">
                                    <!-- Error Message -->
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required Username" Font-Bold="true" ForeColor="Red" ControlToValidate="username"></asp:RequiredFieldValidator><br />--%>
                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required Password" Font-Bold="true" ForeColor="Red" ControlToValidate="password"></asp:RequiredFieldValidator>--%>
                                </div>
                                <div class="col-lg-6 login-btm login-button">
                                    <asp:Button ID="Button1" runat="server" Text="Register" CssClass="btn btn-outline-primary" OnClick="Button1_Click" BackColor="#14c6ce" ForeColor="#1a2226"/>
                                </div>
                            </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-2"></div>
            </div>
        </div>
    </div>

    </form>
</body>
</html>

