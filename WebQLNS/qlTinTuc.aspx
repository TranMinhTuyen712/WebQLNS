<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="qlTinTuc.aspx.cs" Inherits="WebQLNS.qlTinTuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:QLNhanVienConnectionString4 %>"
        SelectCommand="SELECT [TieuDe], [TomTat], [Hinh], [TheLoaiID] FROM [BanTin] WHERE (([TieuDe] = @TieuDe) AND ([TomTat] = @TomTat) AND ([Hinh] = @Hinh) AND ([TheLoaiID] = @TheLoaiID))">
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

