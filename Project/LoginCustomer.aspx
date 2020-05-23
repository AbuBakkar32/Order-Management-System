<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginCustomer.aspx.cs" Inherits="Project.LoginCustomer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="CSS/LoginCustomer.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        
        <section>
            <img src="CSS/images/pexels-photo-953214.jpeg" />
        </section>
       
        <div class="sec2">
            <div class="container">
                <div class="content">
                    <asp:Label ID="Label4" Class="session" runat="server"></asp:Label>
                    <h2 id="ogin"><span class="login">C</span><span class="ogin">ustomer</span>&nbsp<span class="login">L</span><span class="ogin">ogin</span></h2>
                    <asp:Label ID="Label2" Class="label" runat="server" Text="User Name"></asp:Label>
                    <asp:TextBox ID="TextBox1" placeholder="Username" runat="server"></asp:TextBox><br />

                    <asp:Label ID="Label3" Class="label" runat="server" Text="Password"></asp:Label>
                    <asp:TextBox ID="TextBox2" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox><br />

                    <asp:Button ID="Submit" runat="server" Text="Login" OnClick="Submit_Click" />
                    <p>If alredy not Registered<a href="Registration.aspx" id="click">Click Here</a></p>             
                    <asp:Label  class="passlabel" ID="Label1" runat="server"></asp:Label>  
                </div>
            </div>
        </div>

    </form>
</body>
</html>
