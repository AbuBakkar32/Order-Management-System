<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="Project.Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Order
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/order.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <marquee direction="" width="1000px" behavior="" SCROLLDELAY= >
            <h3 style="font-size:25px; color:whitesmoke;">Complete Order Lists......</h3></marquee>

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
            <td><asp:label runat="server" class="label" text="Order ID"></asp:label></td>
            <td><asp:textbox ID="TextBox6" placeholder="Order ID" class="textsearch1" runat="server"></asp:textbox> </td>
            </tr>
            <tr>
            <td><asp:label runat="server" class="label" text="Customer ID"></asp:label></td>
            <td><asp:textbox ID="TextBox7" placeholder="Customer ID" class="textsearch1" runat="server"></asp:textbox> </td>
            </tr>          
        </table>
        <asp:button ID="Button4" class="buttonsearch2" runat="server" text="Insert" OnClick="Unnamed11_Click" />
        <asp:button ID="Button5" class="buttonsearch3" runat="server" text="Update" OnClick="Button5_Click" Height="29px" Width="80px" />
        
    </div>
    

    <div class="gridview">
        <asp:GridView ID="GridView1" class="grid" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="Order ID">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("OrderID") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("OrderID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Customer ID">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("CustomerID") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("CustomerID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowSelectButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
    </div>

</asp:Content>
