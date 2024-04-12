<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="Webbansach.View" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Noidung" runat="server">
<div style="text-align: center;">
    <asp:Label ID="lblSanphamNew" runat="server" Text="Thông tin sản phẩm" Font-Size="24px" Font-Bold="true" />
    <asp:Label runat="server" ID="lblBookID" Visible="false" Font-Size="12px" />
</div>
<div class="myrow">
    <div class="mycol-4">
        <asp:Image ID="Image1" runat="server" Width="100%" Height="100%"/>
    </div>
    <div class="mycol-8">
        <asp:Label ID="lblMessage" ForeColor="Red" Font-Bold="true" runat="server" Text="" />
        <table align="center">
            <tr>
                <td>Tiêu Đề</td>
                <td>
                    <asp:TextBox ID="txtTieude" runat="server" MaxLength="50" 
                        ToolTip="Tiêu đề"
                        AutoCompleteType="Disabled" placeholder="Tiêu Đề" />
                </td>
            </tr>
            
            
            <tr>
                <td>Giá bán</td>
                <td>
                    <asp:TextBox ID="txtGiaban" runat="server" MaxLength="20" 
                        ToolTip="Giá bán"
                        AutoCompleteType="Disabled" placeholder="Giá bán sản phẩm" />
                </td>
            </tr>
            <tr>
    <td>Tác Giả</td>
    <td>
        <asp:TextBox ID="txtTacgia" runat="server" MaxLength="50" 
            ToolTip="Tác Giả"
            AutoCompleteType="Disabled" placeholder="Tác Giả" />
    </td>
</tr>

            <tr>
                <td>Số lượng</td>
                <td>
                    <asp:TextBox ID="txtSoluong" runat="server" MaxLength="20" 
                        ToolTip="Số lượng"
                        AutoCompleteType="Disabled" placeholder="Số lượng sản phẩm" />
                </td>
            </tr>

            <tr>
                <td colspan="2">
                    <asp:Button ID="btnChonSanpham" runat="server" 
                        Text="Chọn sản phẩm"
                        Visible="true" CausesValidation="false"
                        OnClick="btnChonSanpham_Click"
                        UseSubmitBehavior="false" />
                    <asp:Button ID="btnClose" runat="server" 
                        Text="Close" CausesValidation="false"
                        OnClick="btnClose_Click"
                        UseSubmitBehavior="false" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblModalMessage" runat="server" ForeColor="Red" Font-Size="12px" Text="" />
                </td>
            </tr>
        </table>
    </div>
</div>
</asp:Content>
