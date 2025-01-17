<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="fileuploadcontroldemo.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <asp:View ID="view1" runat="server">
                    this is my view 1
                    <br />
                    <br />
                    register page<br />
                    <br />
                    <br />
                    <br />
                    NAME:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="ENTER NAME" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    BRANCH:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    password:<asp:TextBox ID="pwd" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pwd" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    confirm password:<asp:TextBox ID="cpwd" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pwd" ControlToValidate="cpwd" ErrorMessage="password does not match"></asp:CompareValidator>
                    <br />
                    <br />
                    AGE:<asp:TextBox ID="AGETXT" runat="server"></asp:TextBox>
                    &nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="AGETXT" ErrorMessage="ABOVE 18 ONLY" MaximumValue="40" MinimumValue="18"></asp:RangeValidator>
                    <br />
                    <br />
                    CITY:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="next" OnClick="Button1_Click" />


                </asp:View>
                <asp:View ID="login" runat="server">
                    this is my login page or view 2<br /> &nbsp;<asp:Button ID="btn2" runat="server" Text="previous" OnClick="btn2_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn3" runat="server" Text="ok" OnClick="btn3_Click" />
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
