<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="fileuploadcontroldemo.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <strong>MULTIVIEW CONTROL<br />
            <br />
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <asp:View ID="view1" runat="server">

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <asp:Label ID="Label1" runat="server" Text="NAME"></asp:Label>
                    :<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="ENTER NAME" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Text="BRANCH"></asp:Label>
                    :<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    </strong>
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="NEXT" />



                </asp:View>
                <asp:View ID="view2" runat="server">



                    THIS IS VIEW 2<br />
                    <br />
                    <br />
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="PREVIOUS" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="NEXT" />



                </asp:View>
                <asp:View ID="view3" runat="server">



                    THIS IS LAST VIEW<br /> &nbsp;<br />
                    <asp:Button ID="Button4" runat="server" Text="PREVIOUS" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button5" runat="server" Text="OK" />



                </asp:View>
            </asp:MultiView>
            <br />
            <br />
            <br />
            </strong>
        </div>
    </form>
</body>
</html>
