<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PlaceSuccessfully.aspx.cs" Inherits="Project.PlaceSuccessfully" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <br />
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/home.png" PostBackUrl="~/Default.aspx" Width="36px" />
                
            </p>
        <div class="alert alert-success">
             <strong>Success!</strong> Your order checkout was successful. Thanks
        </div>
    </form>
</body>
</html>
