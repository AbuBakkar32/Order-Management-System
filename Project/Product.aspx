<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Project.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/product.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <marquee direction="" width="1000px" behavior="" SCROLLDELAY=>
            <h3 style="font-size:25px; color:whitesmoke;">You can see all Products list Below</h3></marquee>
    <div class="date"> 
            <iframe src="https://www.zeitverschiebung.net/clock-widget-iframe-v2?language=en&size=medium&timezone=Asia%2FDhaka" width="100%" height="115" frameborder="0px" seamless></iframe> 

    </div>
    <div class="search">
        <asp:TextBox ID="TextBox11" class="textsearch" placeholder="Product ID"  runat="server"></asp:TextBox>
        <asp:Button ID="Button2" class="buttonsearch" runat="server" Text="Search" OnClick="Button2_Click" />
        <asp:Button ID="Button3" class="backsearch" runat="server" Text="Refresh" OnClick="Button3_Click"  />

    </div>
    <div class="visib"><asp:Label ID="Label9" Class="textvisible" runat="server" >All Product Details</asp:Label></div>
    <div>
        <table class="inputbox">
            <tr>
            <td><asp:label runat="server" class="label" text="Product ID"></asp:label></td>
            <td><asp:textbox ID="TextBox6" placeholder="Product ID" class="textsearch1" runat="server"></asp:textbox> </td>
            </tr>
            <tr>
            <td><asp:label runat="server" class="label" text="Product Name"></asp:label></td>
            <td><asp:textbox ID="TextBox7" placeholder="Product Name" class="textsearch1" runat="server"></asp:textbox> </td>
            </tr>
            <tr>
            <td><asp:label runat="server" class="label" text="Brand Name"></asp:label></td>
            <td><asp:textbox ID="TextBox8" placeholder="Brand Name" class="textsearch1" runat="server"></asp:textbox> </td>
            </tr>
            <tr>
            <td><asp:label runat="server" class="label" text="Quality"></asp:label></td>
            <td><asp:textbox ID="TextBox9" placeholder="Quality" class="textsearch1" runat="server"></asp:textbox> </td>
            </tr>
            <tr>
            <td><asp:label runat="server" class="label" text="Unit Price"></asp:label></td>
            <td><asp:textbox ID="TextBox10" placeholder="Unit Price" class="textsearch1" runat="server"></asp:textbox> </td>
            </tr>
        </table>
        <asp:button ID="Button4" class="buttonsearch2" runat="server" text="Insert" OnClick="Unnamed11_Click" />
        <asp:button ID="Button5" class="buttonsearch3" runat="server" text="Update" OnClick="Button5_Click" />
        
    </div>
    <div class="gridview">
        
        <asp:gridview ID="GridView1" class="grid" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:TemplateField HeaderText="Product ID">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("ProductID") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("ProductID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Product Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("ProductName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("ProductName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Brand Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("BrandName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("BrandName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Quality">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Quality") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Quality") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Unit Cost">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("UnitCost") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("UnitCost") %>'></asp:Label>
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
        </asp:gridview>
    </div>
</asp:Content>
