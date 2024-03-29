using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Data.OleDb;
namespace QuanLyHoSoCongChuc.DataLayer
{
    public class BangLyLuanChinhTriData
    {
        DataService m_BangLyLuanChinhTriData = new DataService();
        // DataService ds = new DataService();
        public DataTable LayDanhSachBangLyLuanChinhTri()
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM BangLyLuanChinhTri");
            m_BangLyLuanChinhTriData.Load(cmd);
            return m_BangLyLuanChinhTriData;
        }

        public DataRow ThemDongMoi()
        {
            return m_BangLyLuanChinhTriData.NewRow();
        }

        public void ThemBangLyLuanChinhTri(DataRow m_Row)
        {
            m_BangLyLuanChinhTriData.Rows.Add(m_Row);
        }

        public bool LuuBangLyLuanChinhTri()
        {
            return m_BangLyLuanChinhTriData.ExecuteNoneQuery() > 0;
        }

    }
}
