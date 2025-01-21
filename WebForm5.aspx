<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="fileuploadcontroldemo.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            name:<asp:TextBox ID="nametxt" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="nametxt" ErrorMessage="fill the name" ForeColor="Red"></asp:RequiredFieldValidator>
<br />
            sem:<asp:TextBox ID="semtext" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="semtext" ErrorMessage="out of range(1-6)" ForeColor="Red" MaximumValue="6" MinimumValue="1"></asp:RangeValidator>
        <br />
            branch:<asp:TextBox ID="branchtxt" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="branchtxt" ErrorMessage="fill the branch" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            password:<asp:TextBox ID="pwdtxt" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="pwdtxt" ErrorMessage="put the password" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
            confirm password:<asp:TextBox ID="cnfmtxt" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pwdtxt" ControlToValidate="cnfmtxt" ErrorMessage="password doesn't match" ForeColor="#FF3300"></asp:CompareValidator>
<br />
            email:<asp:TextBox ID="emailtxt" runat="server">

                  </asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailtxt" ErrorMessage="invalid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <asp:Button ID="register_btn" runat="server" OnClick="register_btn_Click" Text="register" />
            </div>
    </form>
</body>
</html>
