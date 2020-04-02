<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
     <meta charset="utf-8"/>
  
   
</head>
<body>
    <form id="form1" runat="server">
    <div class="container" >
        <h2 style="vertical-align:middle">Login Page</h2>
        <table class="table">
            <thead>
                <tr>
                    <th >
                        UserName :
                    </th>
                    <td>
                        <asp:TextBox CssClass="form-control"   ID="un" runat="server" Width="50%" ></asp:TextBox>
                    </td>
                    
                   
                </tr>

                 <tr>
                    <th >
                        Password :
                    </th>
                    <td>
                        <asp:TextBox CssClass="form-control"  TextMode="Password" ID="pwd" runat="server" Width="50%" ></asp:TextBox>
                    </td>
                    
                   
                </tr>

              



                
            </thead>
   
            </table>
        <div>
               <asp:Button runat="server" Text="Login" ID="login" OnClick="Button1_Click" />

        </div>
    </div>
                <asp:Label ID="lbl" runat="server"></asp:Label>

    </form>
</body>
</html>
