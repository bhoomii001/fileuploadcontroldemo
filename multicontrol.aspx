<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="multicontrol.aspx.cs" Inherits="fileuploadcontroldemo.multicontrol" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            multiview control demo



            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <asp:View ID="register" runat="server">name:&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="enter name" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    branch:
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    city:
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    sem:
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    AGE:<asp:TextBox ID="AGETXT" runat="server"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="AGETXT" ErrorMessage="ABOVE 18 CAN FILL FORM" ForeColor="Red" MaximumValue="65" MinimumValue="18" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                    <br />
                    <br />
                    password:<asp:TextBox ID="passtxt" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="passtxt" ErrorMessage="enter password"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    confirm password:<asp:TextBox ID="cnfmtxt" runat="server" OnTextChanged="cnfmtxt_TextChanged"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="passtxt" ControlToValidate="cnfmtxt" ErrorMessage="password doesn't match"></asp:CompareValidator>
                    <br />
                    <br />
                    division:
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="next" OnClick="Button1_Click" />
                    <br />
                    <br />
                </asp:View>
                <asp:View ID="login" runat="server">
                    username:
                    <asp:TextBox ID="unametxt" runat="server"></asp:TextBox>
                    <br />
                    password:
                    <asp:TextBox ID="pwdtxt" runat="server"></asp:TextBox>
              <br />
                    <asp:Button ID="previousbtn" Text="previous" runat="server" OnClick="previousbtn_Click" />
                    <asp:Button ID="nxtbtn" Text="Next" runat="server" OnClick="nxtbtn_Click" />
                    
                </asp:View>
                <asp:View ID="home" runat="server">

                    welcome to home page
                </asp:View>
            </asp:MultiView>
            <br />



        </div>
    </form>
</body>
</html>
