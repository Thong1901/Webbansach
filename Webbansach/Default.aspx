<%@ Page Title="Báng Sách" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Webbansach.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="col-sm-4">
            <asp:Label ID="lblMessage" runat="server" Text="" />
        </div>
        <div class="col-sm-4" style="text-align: right;">
            <asp:Label ID="Label5" runat="server" Text="[" Font-Size="12px" Visible="true"></asp:Label>

            <asp:Label ID="Label6" runat="server" Text="]" Font-Size="12px" Visible="true"></asp:Label>
        </div>

        <div class="row" style="margin-top: 20px;">
            <div class="col-sm-8">
                <asp:GridView ID="gvBang_sach" runat="server" AutoGenerateColumns="False" AllowSorting="True"
                    DataKeyNames="BookID"
                    CssClass="table table-striped table-bordered table-condensed" BorderColor="Silver"
                    OnRowDeleting="gvBang_sach_RowDeleting"
                    OnRowCommand="gvBang_sach_RowCommand"
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
                        <asp:BoundField DataField="Giaban" HeaderText="Giá bán">
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
                    </Columns>
                </asp:GridView>
            </div>
        </div>
        <div class="row" style="margin-top: 20px;">
            <div class="col-sm-1"></div>
            <div class="col-sm-10">
                <asp:Image ID="Image1" runat="server" Width="500px" Height="500px" />
            </div>
            <div class="col-sm-1"></div>
        </div>
    </div>
</asp:Content>

