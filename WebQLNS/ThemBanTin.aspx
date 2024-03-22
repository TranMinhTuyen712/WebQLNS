<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ThemBanTin.aspx.cs" Inherits="WebQLNS.ThemBanTin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Scripts/ckeditor/ckeditor.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">   

    <div class="text-center">
<h2>Thêm mới Bản Tin</h2>
<hr />
    <br />
<div class="row mb-2">
    <div class="col-4" >Tiêu đề</div>
    <div class="col-md-7">
        <asp:TextBox ID="txtTieude" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
</div>
<div class="row mb-2">
    <div class="col-md-4">Tóm tắt</div>
    <div class="col-md-7">
        <asp:TextBox ID="txtTomtat" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
    </div>
</div>
 <div class="row mb-2">
    <div class="col-md-4">Nội dung</div>
    <div class="col-md-7">
       <asp:TextBox ID="txtNoidung" runat="server" TextMode="MultiLine" CssClass="ckeditor" Rows="30"></asp:TextBox>
    </div>
</div>
<div class="row mb-2">
    <div class="col-md-4">Hình đại diện</div>
    <div class="col-md-7">
        <asp:FileUpload ID="FHinh" runat="server" />
    </div>
</div>
<div class="row mb-2">
    <div class="col-md-4">Ngày đăng</div>
    <div class="col-md-7">
        <asp:TextBox ID="txtNgayDang" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
    </div>
</div>
<div class="row mb-2">
    <div class="col-md-4">Trạng thái</div>
    <div class="col-md-7">
        <asp:CheckBox ID="ChkTrangthai" runat="server" Text="Hiện" Checked="true" />
    </div>
</div>
        <div class="row mb-2">
    <div class="col-md-4">Thể loại</div>
    <div class="col-md-7">
       <asp:DropDownList ID="ddlTheLoai" runat="server" CssClass="form-control"
           DataSourceID="dsTheLoai" DataTextField="TenTheLoai" DataValueField="Id">
           </asp:DropDownList>
    </div>
</div>
 <div class="row mb-2">
    <div class="col-md-4"></div>
    <div class="col-md-7">
        <asp:Button ID="btSave" runat="server" Text="Lưu" CssClass="btn btn-primary" OnClick="btSave_Click" />
         <asp:Label ID="lbThongBao" runat="server" Text="" ForeColor="#cc3300"></asp:Label>
    </div>
</div>

<asp:SqlDataSource ID="dsTheLoai" runat="server"
    ConnectionString="<%$ ConnectionStrings:QLNhanVienConnectionString %>" 
    SelectCommand="SELECT * FROM [TheLoai]"></asp:SqlDataSource>
    </div>

</asp:Content>
