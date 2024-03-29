using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Data.OleDb;
namespace QuanLyHoSoCongChuc.DataLayer
{
    public class BangChuyenMonNghiepVuData
    {
        DataService m_BangChuyenMonNghiepVuData = new DataService();
        // DataService ds = new DataService();
        public DataTable LayDsBangChuyenMonNghiepVu()
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM BangChuyenMonNghiepVu");
            m_BangChuyenMonNghiepVuData.Load(cmd);
            return m_BangChuyenMonNghiepVuData;
        }

        public DataRow ThemDongMoi()
        {
            return m_BangChuyenMonNghiepVuData.NewRow();
        }

        public void ThemBangChuyenMonNghiepVu(DataRow m_Row)
        {
            m_BangChuyenMonNghiepVuData.Rows.Add(m_Row);
        }

        public bool LuuBangChuyenMonNghiepVu()
        {
            return m_BangChuyenMonNghiepVuData.ExecuteNoneQuery() > 0;
        }

    }
}
