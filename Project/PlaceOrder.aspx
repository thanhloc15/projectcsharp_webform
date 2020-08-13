<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PlaceOrder.aspx.cs" Inherits="Project.PlaceOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 44%;
            height: 189px;
        }
        .auto-style2 {
            width: 260px;
        }
        .auto-style3 {
            width: 453px;
        }
        .auto-style4 {
            width: 51%;
        }
        .auto-style5 {
            width: 126px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

                <div class="auto-style4">
                     <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="36px" />
                </div>
                
            <br />

            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Order ID</td>
                    <td class="auto-style3">
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Order Date</td>
                    <td class="auto-style3">
                        <asp:Label ID="Label3" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>

        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" ShowFooter="True">
            <Columns>
                <asp:BoundField DataField="sno" HeaderText="S.No" />
                <asp:BoundField DataField="productid" HeaderText="Product ID" />
                <asp:BoundField DataField="productname" HeaderText="Product Name" />
                <asp:ImageField DataImageUrlField="productimage" HeaderText="Product" ControlStyle-Height="50" ControlStyle-Width="50">
                </asp:ImageField>
                <asp:BoundField DataField="price" HeaderText="Price" />
                <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                <asp:BoundField DataField="totalprice" HeaderText="Total Price" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" Height="40px" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <br />
        <br />
        <br />
        <table border="1" class="auto-style4">
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label4" runat="server" Text="Type Your Address"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="61px" TextMode="MultiLine" Width="430px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label5" runat="server" Text="Mobile Number"></asp:Label>
                    <br />
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="426px"></asp:TextBox>
                </td>
            </tr>
            <asp:Label ID="Label6" runat="server"></asp:Label>
        </table>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Place Order" />
        </p>
    </form>
</body>
</html>
