<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CardDetails.aspx.cs" Inherits="CardDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
   <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
  
<nav class="navbar navbar-dark bg-primary">
    <div class="container-fluid">
        <div class="navbar navbar-header">
       <div class="navbar navbar-brand">
           <a href="CardDetails.aspx" style="color:white;font-weight:normal" >Infosys</a>
       </div>    
        </div>
       
        <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="#">Page 1</a></li>
      <li><a href="#">Page 2</a></li>
      <li><a href="#">Page 3</a></li>
    </ul>
    </div>
</nav> 
        <br/>
        <br />
   
    <div class="container">
     <form id="form1" runat="server">  
        <div class="form-group" >
            <table class="table">
                <thead>
                    <tr>
                        <td style="text-align:center;color:purple;">Enter Your Details</td>

                    </tr>
                     
                </thead>
                <tbody>
                <tr>
                    <td>
                         <asp:Label ID="firstname" Text="First Name" runat="server" ></asp:Label>
                       &nbsp &nbsp;
                        <asp:TextBox ID="txt_fn" class="form-control" runat="server" placeholder="First Name" ></asp:TextBox>
                    </td>
                </tr>

                      <tr>
                    <td>
                         <asp:Label ID="lastname" Text="Last Name" runat="server" ></asp:Label>
                       &nbsp &nbsp;
                        <asp:TextBox ID="txt_ln" class="form-control" runat="server" placeholder="Last Name" ></asp:TextBox>
                    </td>
                </tr>
                       <tr>
                    <td>
                         <asp:Label ID="pwd" Text="Password" runat="server" ></asp:Label>
                       &nbsp &nbsp;
                        <asp:TextBox ID="txt_pwd" class="form-control" TextMode="Password" runat="server" placeholder="Password"  ></asp:TextBox>
                    </td>
                </tr>
                       <tr>
                    <td>
                         <asp:Label ID="email" Text=" Email Address" runat="server" ></asp:Label>
                       &nbsp &nbsp;
                        <asp:TextBox ID="txt_email" class="form-control" runat="server" placeholder="E-Mail" ></asp:TextBox>
                        <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txt_email" ForeColor="Red" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>

<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_email" ForeColor="Red"  ErrorMessage = "Please Enter Email Address" />
                    </td>
                </tr>

                       <tr>
                    <td>
                         <asp:Label ID="lbl_mobil" Text=" Mobile Number" runat="server" ></asp:Label>
                       &nbsp &nbsp;
                        <asp:TextBox ID="txt_mobile" class="form-control" runat="server" placeholder="Eg - 987654321" ></asp:TextBox>
                    <asp:RegularExpressionValidator ID="vld_mobile" runat="server"  
ControlToValidate="txt_mobile" ErrorMessage="Please enter 10 digit mobile number"  
ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator> 
                    </td>
                </tr>
                       <tr>
                    <td>
                         <asp:Label ID="lbl_add" Text=" Current Address" runat="server" ></asp:Label>
                       &nbsp &nbsp;
                        <asp:TextBox Height="100" ID="txt_add" class="form-control"  runat="server" placeholder="Current Address" ></asp:TextBox>
                    </td>
                </tr>
                     <tr>
                    <td>
                         <asp:Label ID="lbl_dob" Text=" Date Of Birth" runat="server" ></asp:Label>
                       &nbsp &nbsp;
                <asp:TextBox ID="txt_dob" class="form-control" runat="server" TextMode="Date"  ></asp:TextBox>

    
                    </td>
                </tr>
                     <tr>
                    <td>
                         <asp:Label ID="lbl_gender" runat="server" >Gender:</asp:Label>
                       &nbsp &nbsp;
                        <asp:RadioButtonList ID="gender" runat="server">
<asp:ListItem ID="male" runat="server" GroupName="gender" >Male</asp:ListItem>
                        <asp:ListItem ID="female" runat="server" GroupName="gender" >Female</asp:ListItem>
    </asp:RadioButtonList>
                    </td>
                </tr>

                      <tr>
                    <td>
                         <asp:Label ID="lbl_country" Text="Choose Country" runat="server" ></asp:Label>
                       &nbsp &nbsp;
<asp:DropDownList  runat="server" ID="dd_country"  >
        <asp:ListItem Value="Select"></asp:ListItem>

    <asp:ListItem Value="India" ></asp:ListItem>
        <asp:ListItem Value="Pakistan"></asp:ListItem>

</asp:DropDownList>

                    </td>
                </tr>
                   
                    
                    </tbody>
                <tfoot>
                     <tr>
                        <td>
                            <asp:Button ID="btn_reg" runat="server" Text="Register" CssClass="btn btn-primary" OnClick="btn_register" />
                        </td>
                    </tr>

                </tfoot>
            </table>
             <div class="label-danger">
        <asp:Label ID="lbl_error" runat="server"></asp:Label>
    </div>
    <div class="label-success">
        <asp:Label ID="lbl_success" runat="server"></asp:Label>
    </div>
           
        </div> 
                
        </form>
        </div>
   

        
</body>
</html>
