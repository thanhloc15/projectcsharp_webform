<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewOrder.aspx.cs" Inherits="Project.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style2 {
            font-weight: bold;
            font-size: xx-large;
        }
        *{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}*,:after,:before{color:#000!important;text-shadow:none!important;background:0 0!important;-webkit-box-shadow:none!important;box-shadow:none!important}</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                     <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="36px" />
                    <span class="auto-style2">
                        <span style="float:left">Shoes Store </span>
                    </span>
        </div>
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333">
            <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <ItemTemplate>
                Order ID
                <asp:Label ID="orderidLabel" runat="server" Text='<%# Eval("orderid") %>' />
                <br />
                sno:
                <asp:Label ID="snoLabel" runat="server" Text='<%# Eval("sno") %>' />
                <br />
                Product ID:
                <asp:Label ID="productidLabel" runat="server" Text='<%# Eval("productid") %>' />
                <br />
                Product Name:
                <asp:Label ID="productnameLabel" runat="server" Text='<%# Eval("productname") %>' />
                <br />
                Price:
                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                <br />
                Quantity:
                <asp:Label ID="quantityLabel" runat="server" Text='<%# Eval("quantity") %>' />
                <br />
                Date of order:
                <asp:Label ID="dateoforderLabel" runat="server" Text='<%# Eval("dateoforder") %>' />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Comfirm" />
<br />
                <asp:Button ID="Button2" runat="server" Text="Cannel" />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HaritiShoppingConnectionString %>" SelectCommand="SELECT * FROM [OrderDetails]"></asp:SqlDataSource>
    </form>
</body>
</html>
