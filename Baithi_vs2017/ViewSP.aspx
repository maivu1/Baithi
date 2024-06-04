<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ViewSP.aspx.cs" Inherits="Baithi_vs2017.ViewSP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 96px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style2" rowspan="5">
                <asp:Image ID="Image1" runat="server" Height="90px" Width="90px" />
            </td>
            <td>
                <asp:Label ID="lblTen" runat="server" Font-Bold="True" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblMota" runat="server" Font-Italic="True" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblDongia" runat="server" Font-Bold="True" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                So luong:
                <asp:TextBox ID="TextBox1" runat="server">1</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Mua" />
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Xem gio hang" />
            </td>
        </tr>
    </table>
</asp:Content>
