<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Baithi_vs2017._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="myrow">
        <div class="colloai">
            <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" DataSourceID="ListLoai" DataTextField="Tenloai" DataValueField="Maloai" Width="90%" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged"></asp:ListBox>
            <asp:ObjectDataSource ID="ListLoai" runat="server"></asp:ObjectDataSource>
        </div>
        <div class="colsp">
            <asp:ListView ID="ListView1" runat="server" DataSourceID="ListSP" DataKeyNames="MaSP" GroupItemCount="3" OnItemCommand="ListView1_ItemCommand" >
                <AlternatingItemTemplate>
                    <td runat="server" style="background-color: #FFFFFF;color: #284775;">
                        <asp:image ID="HinhAnhLabel" runat="server" imageurl='<%# "~/Images/"+ Eval("HinhAnh") %>'  Width="90px" Height="90px"/>
                        <br />
                        <asp:Label ID="MaSPLabel" Visible="false" runat="server" Text='<%# Eval("MaSP") %>' />
                        <br />
                        <asp:Label ID="TenSPLabel" runat="server" Text='<%# Eval("TenSP") %>' Font-Bold="true" />
                        <br />Don gia:
                        <asp:Label ID="GiabanLabel" runat="server" Text='<%# Eval("Giaban") %>' />
                        <br />
                        <asp:LinkButton runat="server" ID="chitiet" Text="Chi tiet" CommandName="xem" CommandArgument='<%# Eval("MaSP") %>' />
                    </td>
                </AlternatingItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                <ItemTemplate>
                    <td runat="server" style="background-color: #E0FFFF;color: #333333;">
                        <asp:image ID="Image1" runat="server" imageurl='<%# "~/Images/"+ Eval("HinhAnh") %>'   Width="90px" Height="90px"/>
                        <br />
                        <asp:Label ID="MaSPLabel"  Visible="false" runat="server" Text='<%# Eval("MaSP") %>' />
                        <br />
                        <asp:Label ID="TenSPLabel" runat="server" Text='<%# Eval("TenSP") %>' Font-Bold="true" />
                        <br />Don gia:
                        <asp:Label ID="GiabanLabel" runat="server" Text='<%# Eval("Giaban") %>' />
                        <br />
                        <asp:LinkButton runat="server" ID="chitiet" Text="Chi tiet" CommandName="xem" CommandArgument='<%# Eval("MaSP") %>' />

                    </td>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr id="groupPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF"></td>
                        </tr>
                    </table>
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="ListSP" runat="server"></asp:ObjectDataSource>
        </div>
    </div>
</asp:Content>
