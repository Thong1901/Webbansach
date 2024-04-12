<%@ Page Title="Web Sách" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Webbansach.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Noidung" runat="server">
    <div class="mycol-8" style="text-align: right;">
        <asp:Label ID="Label5" runat="server" Text="[" Font-Size="Small" Visible="true"></asp:Label>
        <asp:LinkButton ID="lbGiohang" runat="server" Font-Size="Small" OnClick="lbGiohang_Click" Text="Giỏ Hàng"> </asp:LinkButton>
        <asp:Label ID="Label6" runat="server" Text="]" Font-Size="Small" Visible="true"></asp:Label>

    </div>
    <div class="container">
        <div class="col-sm-4">
            <asp:Label ID="lblMessage" runat="server" Text="" />
        </div>
        <div class="row" style="margin-top: 20px;">
            <div class="col-sm-8">
                <asp:GridView ID="gvBang_sach" runat="server" AutoGenerateColumns="False" AllowSorting="True"
                    DataKeyNames="BookID"
                    CssClass="table table-striped table-bordered table-condensed" BorderColor="Silver"
               
                    EmptyDataText="Không có dữ liệu trong nhóm">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <%# Container.DataItemIndex + 1 %>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" Width="25px" />
                            <ItemStyle HorizontalAlign="Left" Font-Bold="true" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="Tieude" HeaderText="Tiêu đề">
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Giaban" HeaderText="Giá bán" DataFormatString="{0:### ### ###}">
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Tacgia" HeaderText="Tác giả">
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Soluong" HeaderText="Số lượng">
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="image">
                            <ItemTemplate>
                                <asp:Image ID="img" runat="server" Width="100px" Height="100px" ImageUrl='<%#  "~/image/"+Eval("img") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="lbXoaSanpham" Text="Xóa" runat="server"
                                    OnClientClick="return confirm('Bạn chắc chắn muốn xóa sản phẩm này?');" CommandName="Delete" />
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle HorizontalAlign="Center" Width="50px" />
                        </asp:TemplateField>
                        <%-- Update Company --%>
                        <asp:TemplateField HeaderText="">
                            <ItemTemplate>
                                <asp:LinkButton ID="lbChitietSanpham" runat="server" CommandArgument='<%# Eval("BookID") %>'
                                    CommandName="XemSanpham" Text="Xem" CausesValidation="false"></asp:LinkButton>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" Width="80px" />
                        </asp:TemplateField>

                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>

