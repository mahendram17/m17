<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EmailDemo.aspx.cs" Inherits="EmailDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Button ID="btn_sendmail" runat="server" Text="Send Mail" OnClick="btn_sendmail_Click" />
    </div>
    </form>
</body>
</html>
