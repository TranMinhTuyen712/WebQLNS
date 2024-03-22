<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="qlTinTuc.aspx.cs" Inherits="WebQLNS.qlTinTuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="text-center">
        <a href="ThemBanTin.aspx" class="btn btn-outline-primary">Thêm bản tin</a>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:QLNhanVienConnectionString %>"
        SelectCommand="SELECT * FROM [BanTin]" DeleteCommand="DELETE FROM [BanTin] WHERE [Id] = @Id" InsertCommand="INSERT INTO [BanTin] ([TieuDe], [TomTat], [NoiDung], [Hinh], [NgayDang], [TrangThai], [TheLoaiID]) VALUES (@TieuDe, @TomTat, @NoiDung, @Hinh, @NgayDang, @TrangThai, @TheLoaiID)" UpdateCommand="UPDATE [BanTin] SET [TieuDe] = @TieuDe, [TomTat] = @TomTat, [NoiDung] = @NoiDung, [Hinh] = @Hinh, [NgayDang] = @NgayDang, [TrangThai] = @TrangThai, [TheLoaiID] = @TheLoaiID WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TieuDe" Type="String"></asp:Parameter>
            <asp:Parameter Name="TomTat" Type="String"></asp:Parameter>
            <asp:Parameter Name="NoiDung" Type="String"></asp:Parameter>
            <asp:Parameter Name="Hinh" Type="String"></asp:Parameter>
            <asp:Parameter Name="NgayDang" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="TrangThai" Type="Boolean"></asp:Parameter>
            <asp:Parameter Name="TheLoaiID" Type="Int32"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TieuDe" Type="String"></asp:Parameter>
            <asp:Parameter Name="TomTat" Type="String"></asp:Parameter>
            <asp:Parameter Name="NoiDung" Type="String"></asp:Parameter>
            <asp:Parameter Name="Hinh" Type="String"></asp:Parameter>
            <asp:Parameter Name="NgayDang" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="TrangThai" Type="Boolean"></asp:Parameter>
            <asp:Parameter Name="TheLoaiID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>


   
    <asp:GridView ID="gvBanTin" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="TieuDe" HeaderText="TieuDe" SortExpression="TieuDe" />
            <asp:BoundField DataField="TomTat" HeaderText="TomTat" SortExpression="TomTat" />
            <asp:BoundField DataField="Hinh" HeaderText="Hinh" SortExpression="Hinh" />
            <asp:BoundField DataField="TheLoaiID" HeaderText="TheLoaiID" SortExpression="TheLoaiID" />
        </Columns>
  
    </asp:GridView>
</asp:Content>

