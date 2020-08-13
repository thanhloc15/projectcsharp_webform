<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageProduct.aspx.cs" Inherits="Project.AddProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 56%;
            background-color: #999966;
        }
        .auto-style2 {
            width: 102px;
        }
        .auto-style3 {
            width: 372px;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            width: 372px;
            text-align: center;
        }
        .auto-style6 {
            width: 102px;
            height: 25px;
        }
        .auto-style7 {
            width: 372px;
            height: 25px;
        }
        .auto-style8 {
            width: 255px;
        }
        </style>
    <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    
    <form id="form1" runat="server">
        <div>
            <div class="auto-style4">
                <br />
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="36px" />
                
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Manage Product Page" Width="100%"></asp:Label>
            <br />
            <br />
            <br />
            </div>
            <table border="1" class="auto-style1">
                <tr>
                    <td class="auto-style6">Product ID</td>
                    <td class="auto-style7">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Product Name</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox1" runat="server" Width="268px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Price</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox2" runat="server" Width="268px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Image</td>
                    <td class="auto-style3">
                        <asp:FileUpload ID="FileUpload1" runat="server" Width="270px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <br />
                    </td>
                    <td class="auto-style5">
                        <asp:Button ID="Button1" runat="server" BackColor="#FF6600" OnClick="Button1_Click" Text="Save Product" />
                        <br />
                        <asp:Label ID="Label4" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <br />
        
        <asp:DataList ID="DataList1" runat="server" CellPadding="3" ForeColor="Black" OnItemCommand="DataList1_ItemCommand" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2" GridLines="Both">
            <EditItemTemplate>
                <asp:Label ID="Label6" runat="server" Text="Product ID"></asp:Label>
                :&nbsp;
                <asp:Label ID="Label9" runat="server" Text='<%# Eval("productid") %>'></asp:Label>
                <br />
                <asp:Label ID="Label7" runat="server" Text="Product Name"></asp:Label>
                :
                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("productname") %>'></asp:TextBox>
                <br />
                <asp:Label ID="Label8" runat="server" Text="Price"></asp:Label>
                :
                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Eval("price") %>'></asp:TextBox>
                <br />
                <asp:Button ID="Button2" runat="server" CommandName="update" Text="UPDATE" />
                <asp:Button ID="Button3" runat="server" CommandName="cancel" Text="CANCEL" />
            </EditItemTemplate>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <ItemTemplate>
                <table class="nav-justified">
                    <tr>
                        <td class="auto-style8"><h4>Product ID:
                            <asp:Label ID="Label1" runat="server" ForeColor="Black" Text='<%# Eval("productid") %>'></asp:Label></h4>
                            <h4>Product Name: <span style="color:black"> <%# Eval("productname") %></span> </h4>
                            <h4>Price:<span style="color:black"> <%# Eval("price") %></span> </h4> 
                                </td>
                        <td class="text-center">
                            <asp:Button ID="Button2" runat="server" CommandName="edit" Text="EDIT" CssClass="btn btn-success" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button3" runat="server" CommandName="delete" Text="DELETE" CssClass="btn btn-danger" />
                        </td>
                    </tr>
                </table>
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
            
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">View All Product</asp:HyperLink>
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ViewOrder.aspx">View Order</asp:HyperLink>
        <br />
    </form>
        
</body>
</html>
