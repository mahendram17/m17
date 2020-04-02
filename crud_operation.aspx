<%@ Page Language="C#" AutoEventWireup="true" CodeFile="crud_operation.aspx.cs" Inherits="crud_operation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="employee_id" HeaderText="employee_id" SortExpression="employee_id" />
                <asp:BoundField DataField="first_name" HeaderText="first_name" SortExpression="first_name" />
                <asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:InfosysConnectionString %>" SelectCommand="SELECT * FROM [employees]"></asp:SqlDataSource>
  
          <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
  
          </form>
</body>
</html>
