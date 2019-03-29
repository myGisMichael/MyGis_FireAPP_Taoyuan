<%@ Page Language="C#" AutoEventWireup="true" Inherits="FCMTest" Codebehind="FCMTest.aspx.cs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            帳號<asp:TextBox ID="tbAc" runat="server" ClientIDMode="Static"></asp:TextBox>
            密碼<asp:TextBox ID="tbPW" runat="server" ClientIDMode="Static"></asp:TextBox>
            <asp:Button ID="btn" runat="server" Text="btn" ClientIDMode="Static" OnClick="btn_Click"/>
        </div>
    </form>
</body>
</html>
