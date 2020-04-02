<asp:button runat="server" text="Button" />

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
</head>

<body>
    <form id="form1" runat="server">
         <div>
        <asp:Label ID="id" runat="server" Text="Employee id"></asp:Label>&nbsp
        <asp:TextBox ID="t_id" runat="server" CssClass="form" ></asp:TextBox>
             <br/><br/>

    </div>
    <div>
        <asp:Label ID="first" runat="server" CssClass="form" Text="First Name"></asp:Label>&nbsp
        <asp:TextBox ID="f_name" runat="server" ></asp:TextBox>
        <br/><br/>

    </div>
       
              <asp:Label ID="last" runat="server" Text="Last Name"></asp:Label>&nbsp
        <asp:TextBox ID="l_name" runat="server" ></asp:TextBox>
            <br/>
            <br/><br/>
        <asp:Button ID="submit" runat="server" Text="Submit" Height="40px" Width="60px" OnClick="btn_insert"/>
       <br />
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
        
         
        
    </form>
</body>
</html>
