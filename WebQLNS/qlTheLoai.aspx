<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="qlTheLoai.aspx.cs" Inherits="WebQLNS.qlTheLoai" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <h2>Trang Quản Lý Thể Loại Tin </h2>
<hr />
    <asp:SqlDataSource ID="dsTheLoai" runat="server" 
        ConnectionString="<%$ ConnectionStrings:QLNhanVienConnectionString %>" 
        DeleteCommand="DELETE FROM [TheLoai] WHERE [Id] = @Id" 
        InsertCommand="INSERT INTO [TheLoai] ([TenTheLoai], [TrangThai]) VALUES (@TenTheLoai, @TrangThai)" 
        SelectCommand="SELECT * FROM [TheLoai]" 
        UpdateCommand="UPDATE [TheLoai] SET [TenTheLoai] = @TenTheLoai, [TrangThai] = @TrangThai WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TenTheLoai" Type="String"></asp:Parameter>
            <asp:Parameter Name="TrangThai" Type="Boolean"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenTheLoai" Type="String"></asp:Parameter>
            <asp:Parameter Name="TrangThai" Type="Boolean"></asp:Parameter>
            <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:ListView ID="lvTheLoai" runat="server" DataSourceID="dsTheLoai" DataKeyNames="Id" InsertItemPosition="LastItem">
        <AlternatingItemTemplate>
            <tr style="">
                <td>
                    <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                    <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("TenTheLoai") %>' runat="server" ID="TenTheLoaiLabel" /></td>
                <td>
                    <asp:CheckBox Checked='<%# Eval("TrangThai") %>' runat="server" ID="TrangThaiCheckBox" Enabled="false" /></td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="">
                <td>
                    <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" />
                    <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel1" /></td>
                <td>
                    <asp:TextBox Text='<%# Bind("TenTheLoai") %>' runat="server" ID="TenTheLoaiTextBox" /></td>
                <td>
                    <asp:CheckBox Checked='<%# Bind("TrangThai") %>' runat="server" ID="TrangThaiCheckBox" /></td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" />
                    <asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" />
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox Text='<%# Bind("TenTheLoai") %>' runat="server" ID="TenTheLoaiTextBox" /></td>
                <td>
                    <asp:CheckBox Checked='<%# Bind("TrangThai") %>' runat="server" ID="TrangThaiCheckBox" /></td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="">
                <td>
                    <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                    <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("TenTheLoai") %>' runat="server" ID="TenTheLoaiLabel" /></td>
                <td>
                    <asp:CheckBox Checked='<%# Eval("TrangThai") %>' runat="server" ID="TrangThaiCheckBox" Enabled="false" /></td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table runat="server" id="itemPlaceholderContainer" style="" border="0">
                            <tr runat="server" style="">
                                <th runat="server"></th>
                                <th runat="server">Id</th>
                                <th runat="server">TenTheLoai</th>
                                <th runat="server">TrangThai</th>
                            </tr>
                            <tr runat="server" id="itemPlaceholder"></tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style=""></td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="">
                <td>
                    <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                    <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                </td>
                <td>
                    <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" /></td>
                <td>
                    <asp:Label Text='<%# Eval("TenTheLoai") %>' runat="server" ID="TenTheLoaiLabel" /></td>
                <td>
                    <asp:CheckBox Checked='<%# Eval("TrangThai") %>' runat="server" ID="TrangThaiCheckBox" Enabled="false" /></td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
</asp:Content>

    