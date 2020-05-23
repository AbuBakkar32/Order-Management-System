<%@ Page Title="" Language="C#" MasterPageFile="~/MasterCustomer.Master" AutoEventWireup="true" CodeBehind="CustomerProfile.aspx.cs" Inherits="Project.CustomerProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/customerProfile.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
      
     <div class="date"> 
            <iframe src="https://www.zeitverschiebung.net/clock-widget-iframe-v2?language=en&size=medium&timezone=Asia%2FDhaka" width="100%" height="115" frameborder="0px" seamless></iframe> 

    </div>

    <%--<div class="search">
        <asp:TextBox ID="TextBox8" class="textsearch" placeholder="Customer ID"  runat="server"></asp:TextBox>
        <asp:Button ID="Button2" class="buttonsearch" runat="server" Text="Search" OnClick="Button2_Click" />
        <asp:Button ID="Button3" class="backsearch" runat="server" Text="Refresh" OnClick="Button3_Click"  />

    </div>--%>

    <div class="section">
   
     <div class="visib"><asp:Label ID="Label15" Class="textvisible" runat="server" >My Information</asp:Label></div>
    <div class="inputbox">
        <table>
            <tr>
                <td><asp:Label ID="Label8"  class="label"  runat="server" Text="Customer ID"></asp:Label></td>
                <td> <asp:TextBox ID="CID" class="textsearch1" placeholder="Customer ID" runat="server"></asp:TextBox></td>
            </tr>
      
             <tr>
                <td><asp:Label ID="Label9" class="label" runat="server" Text="Customer Name"></asp:Label></td>
                <td> <asp:TextBox ID="Cname" class="textsearch1" placeholder="Customer Name" runat="server"></asp:TextBox></td>
            </tr>
             <tr>
                <td><asp:Label ID="Label10"  class="label" runat="server" Text="Gender"></asp:Label></td>
                <td> <asp:TextBox ID="cgender" class="textsearch1" placeholder="Gender" runat="server"></asp:TextBox></td>
            </tr>
             <tr>
                <td><asp:Label ID="Label11" class="label"  runat="server" Text="Country"></asp:Label></td>
                <td> <asp:TextBox ID="country" class="textsearch1" placeholder="Country" runat="server"></asp:TextBox></td>
            </tr>
             <tr>
                <td><asp:Label ID="Label12" class="label" runat="server" Text="Address"></asp:Label></td>
                <td> <asp:TextBox ID="caddress" class="textsearch1" placeholder="Address" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label13" class="label" runat="server" Text="Phone"></asp:Label></td>
                <td> <asp:TextBox ID="Cphone" class="textsearch1" placeholder="Phone" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label14" class="label" runat="server" Text="Email"></asp:Label></td>
         <td> <asp:TextBox ID="Cmail" class="textsearch1" placeholder="Email" runat="server"></asp:TextBox></td>

        </table>
         <asp:Button ID="Button4" class="buttonsearch2" runat="server" Text="Update" OnClick="Button4_Click1"/>
        
    </div>
        </div>
    <div class="gridview">
        <asp:GridView ID="GridView1" class="grid" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDeleting="GridView1_RowDeleting" >
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns> 
                <asp:TemplateField HeaderText="Customer ID">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox7"  runat="server" Text='<%# Bind("CustomerID") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("CustomerID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Customer Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("CustomerName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("CustomerName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Gender">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Gender") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Country">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Country") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Country") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Address">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Phone">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Phone") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Phone") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="E-mail">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowSelectButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    </div>
</asp:Content>
