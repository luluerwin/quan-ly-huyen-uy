using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Data.OleDb;
namespace QuanLyHoSoCongChuc.DataLayer
{
    public class DonViData
    {
        DataService m_DonViData = new DataService();
        // DataService ds = new DataService();
        public DataTable LayDsDonVi()
        {
            SqlCommand cmd = new SqlCommand("SELECT * From DonVi");
            m_DonViData.Load(cmd);
            return m_DonViData;
        }
        public DataTable LayDSTheoLoaiDonVi(String phong)
        {
            SqlCommand cmd = new SqlCommand("Select * From DonVi DV,  LoaiDonVi LDV Where DV.MaLoaiDonVi = LDV.MaLoaiDonVi And LDV.MaLoaiDonVi = @phong");
            cmd.Parameters.Add("phong", SqlDbType.NVarChar).Value = phong;
            m_DonViData.Load(cmd);
            return m_DonViData;
        }
        public DataTable LayDSPhong(string maPhong)
        {
            try
            {
                //
                SqlCommand cmd = new SqlCommand("SELECT nv.HoTenKhaiSinh AS HoTenKhaiSinh, cv.TenChucVu AS TenChucVu, dv.MaDonVi AS MaDonVi, dv.TenDonVi AS TenDonVi FROM NhanVien AS nv, DonVi AS dv, ChucVu AS cv WHERE nv.MaDonVi = dv.MaDonVi AND nv.MaChucVu = cv.MaChucVu AND dv.MaDonVi=@ma");
                cmd.Parameters.Add("@ma", SqlDbType.NVarChar).Value = maPhong;
                // cmd.Parameters.Add("@ma", sqlType.VarChar).Value = maPhong;
                m_DonViData.Load(cmd);
                return m_DonViData;
            }
            catch (Exception e)
            {
                MessageBox.Show("Lấy thông tin phòng ban không thành công." + e.Message, "Thông Báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return null;
            }
        }

        public DataRow ThemDongMoi()
        {
            return m_DonViData.NewRow();
        }

        public void ThemDonVi(DataRow m_Row)
        {
            m_DonViData.Rows.Add(m_Row);
        }

        public bool LuuDonVi()
        {
            return m_DonViData.ExecuteNoneQuery() > 0;
        }
    }
}
