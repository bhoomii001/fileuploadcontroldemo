<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="fileuploadcontroldemo.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="1">
                <asp:View ID="view1" runat="server">
                    <asp:Label ID="Label1" runat="server" Text="HELLO VIEW 1"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="NEXT" OnClick="Button1_Click" />
                </asp:View>
                <asp:View ID="view2" runat="server">
                    this is 2 view<br />
                    <br />
                    <asp:Button ID="Button2" runat="server" Text="previous" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="next" />

                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
