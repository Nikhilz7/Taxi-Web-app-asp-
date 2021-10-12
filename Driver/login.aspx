<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="taxi.Driver.login" %>
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
            <div class="col-lg-3 col-md-2"></div>
            <div class="col-lg-6 col-md-8 login-box">
                <div class="col-lg-12 login-key">
                    <i class="fa fa-key" aria-hidden="true"></i>
                </div>
                <div class="col-lg-12 login-title">
                    Driver PANEL
                </div>

                <div class="col-lg-12 login-form">
                    <div class="col-lg-12 login-form">
                        <form>
                            <div class="form-group">
                                <asp:Label ID="Label1" runat="server" Text="Email" CssClass="form-control-label"></asp:Label>
                                <asp:TextBox ID="username" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                               <asp:Label ID="Label2" runat="server" Text="Password" CssClass="form-control-label"></asp:Label>
                                <asp:TextBox ID="password" runat="server" CssClass="form-control" type="password"></asp:TextBox>
                            </div>

                            <div class="col-lg-12 loginbttm">
                                <div class="col-lg-6 login-btm login-text">
                                    <!-- Error Message -->
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required Username" Font-Bold="true" ForeColor="Red" ControlToValidate="username"></asp:RequiredFieldValidator><br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required Password" Font-Bold="true" ForeColor="Red" ControlToValidate="password"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-lg-6 login-btm login-button">
                                    <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn-outline-primary" OnClick="Button1_Click"/>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-lg-3 col-md-2"></div>
            </div>
        </div>
    </div>

    </form>
</body>
</html>
