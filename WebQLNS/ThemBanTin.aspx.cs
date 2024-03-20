using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.DynamicData;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebQLNS
{
    public partial class ThemBanTin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btSave_Click(object sender, EventArgs e)
        {
            //lay gia tri chuoi ket noi trong web.config
            string chuoi_ket_noi = ConfigurationManager.ConnectionStrings["QLNhanVienConnectionString"].ConnectionString;
            //tao doi tuong Connection
            SqlConnection conn = new SqlConnection(chuoi_ket_noi);
            conn.Open();
            //tao cau sql de them ban tin
            string sql = "insert into bantin(tieude,tomtat,noidung,hinh,ngaydang,trangthai,theloaiid" +
                "values (@tieude,@tomtat,@noidung,@hinh,@ngaydang,@trangthai,@theloaiid)";
            SqlCommand cmd = new SqlCommand(sql, conn);
            //truyen gia tri cho cac tham so cau lenh sql
            cmd.Parameters.AddWithValue("@tieude", txtTieude.Text);
            cmd.Parameters.AddWithValue("@tomtat", txtTomtat.Text);
            cmd.Parameters.AddWithValue("@noidung", txtNoidung.Text);
            
            if (FHinh.HasFile)
            {
                //xu ly upload hinh
                string duong_dan = Server.MapPath("~/Uploads") + FHinh.FileName;
                FHinh.SaveAs(duong_dan);
                cmd.Parameters.AddWithValue("@hinh", FHinh.FileName);
            }
            else
            {
                cmd.Parameters.AddWithValue("@hinnh", "no_image.png");
            }
            cmd.Parameters.AddWithValue("@ngaydang", txtNgayDang.Text);
            cmd.Parameters.AddWithValue("@trangthai", ChkTrangthai.Checked);
            cmd.Parameters.AddWithValue("@theloai", ddlTheLoai.SelectedValue);
            //thực hiện câu lệnh truy vấn đến csdl
            if (cmd.ExecuteNonQuery() > 0)
                Response.Redirect("qlTinTuc.aspx");
            else
                lbThongBao.Text = "Thao tác thêm tin thất bại";
        }
    }
}