<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Project.Registration1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
    <link href="CSS/registration.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <section>
            <img class="middleImg" src="CSS/images/pexels-photo-953214.jpeg" />
        </section>
        <div class="sec2">
            <div class="container">
                <div class="content">
                    <h2 id="ogin"><span class="login">R</span><span class="ogin">egistration</span></h2>
            <table class="table">
                <tr>
                    <td>
                    <asp:Label ID="Label1" Class="label" runat="server" Text="Customer ID"></asp:Label>
                    </td>
                    <td>
                    <asp:TextBox ID="TextBox5" Class="input" placeholder="Customer ID(Unique)" runat="server"></asp:TextBox>
                     </td>
                    </tr>
                <tr>
                    <td>
                    <asp:Label ID="Label2" Class="label" runat="server" Text="Customer Name"></asp:Label>
                    </td>
                    <td>
                    <asp:TextBox ID="TextBox1" Class="input" placeholder="Customer Name" runat="server"></asp:TextBox>
                     </td>
                    </tr>
                <tr>
                    <td>
                    <asp:Label ID="Label3" Class="label" runat="server" Text="Password"></asp:Label>
                   </td>
                  <td>
                    <asp:TextBox ID="TextBox2" Class="input" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox>
                    </td>
                  </tr>
                   <tr>  
                    <td> <asp:Label ID="Label9" Class="label" runat="server" Text="Confirm Password"></asp:Label></td>  
                    <td>  
                        <asp:TextBox ID="TextBox7" Class="input" placeholder="Confirm Password" runat="server" TextMode="Password"></asp:TextBox>  
                    </td>  
                </tr>
                <tr>
                    <td>
                         <asp:Label ID="Label8" Class="label" runat="server" Text="Gender"></asp:Label>
                    </td>
                    <td>  
                        <asp:RadioButtonList ID="RadioButtonList1" class="radio" runat="server">  
                            <asp:ListItem  Selected="false">Male</asp:ListItem>
                            
                            <asp:ListItem>Female</asp:ListItem>
              
                        </asp:RadioButtonList>  
                    </td>  
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label7" Class="label" runat="server" Text="Country"></asp:Label>
                    </td>
                  
                    <td>
                        <asp:DropDownList ID="DropDownList1" class="dropdown" runat="server">  
                            <asp:ListItem Text="BANGLADESH" Value="bangladesh"></asp:ListItem>  
                            <asp:ListItem Text="INDIA" Value="india"></asp:ListItem>  
                            <asp:ListItem Text="USA" Value="usa"></asp:ListItem>  
                            <asp:ListItem Text="ENGLAND" Value="england"></asp:ListItem> 
                            <asp:ListItem Text="RASIA" Value="rasia"></asp:ListItem> 
                            <asp:ListItem Text="CHINE" Value="chine"></asp:ListItem> 
                            <asp:ListItem Text="PAKISTAN" Value="pakistan"></asp:ListItem> 
                            <asp:ListItem Text="CANADA" Value="canada" Selected="True"></asp:ListItem> 
                            <asp:ListItem Text="SOUTH AFRICA" Value="south africa"></asp:ListItem> 
                            <asp:ListItem Text="JAPAN" Value="japan"></asp:ListItem> 
                        </asp:DropDownList>  
                    </td>
                </tr>
                 <tr>
                     <td>
                    <asp:Label ID="Label5" Class="label" runat="server" Text="Address"></asp:Label>
                    </td>
                     <td>
                    <asp:TextBox ID="TextBox4" Class="input" placeholder="Address" runat="server"></asp:TextBox>
                       </td>
                    </tr>
                <tr>
                    <td>
                     <asp:Label ID="Label4" Class="label" runat="server" Text="Phone"></asp:Label>
                     </td>
                    <td>
                    <asp:TextBox ID="TextBox3" Class="input" placeholder="Phone" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                 <tr>
                     <td>
                    <asp:Label ID="Label6" Class="label" runat="server" Text="Email"></asp:Label>
                    </td>
                     <td>
                    <asp:TextBox ID="TextBox6" Class="input" placeholder="E-mail" runat="server"></asp:TextBox>
                       </td>
                    </tr>
               
                       
                   </table>
                    <asp:Button ID="Submit" Class="submit" runat="server" Text="Sing Up" OnClick="Submit_Click" /> 
                    
                </div>
            </div>
        </div>
    </form>
</body>
</html>
