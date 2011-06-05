using System.Data;
using System.Collections.Generic;
using System.Text;
using System.Windows.Forms;
using QuanLyHoSoCongChuc.DataLayer;
using QuanLyHoSoCongChuc.BusinessObject;

namespace QuanLyHoSoCongChuc.Controller
{
    public class BangChuyenMonNghiepVuControl
    {
        BangChuyenMonNghiepVuData m_BangChuyenMonNghiepVuData = new BangChuyenMonNghiepVuData();


        public void HienThiComboBox(ComboBox cmb)
        {
            cmb.DataSource = m_BangChuyenMonNghiepVuData.LayDsBangChuyenMonNghiepVu();
            cmb.DisplayMember = "TenBangChuyenMonNghiepVu";
            cmb.ValueMember = "MaBangChuyenMonNghiepVu";
        }

        //        
        public void HienThiDataGridViewComboBoxColumnBangChuyenMonNghiepVu(DataGridViewComboBoxColumn cmbColumnBangChuyenMonNghiepVu)
        {
            cmbColumnBangChuyenMonNghiepVu.DataSource = m_BangChuyenMonNghiepVuData.LayDsBangChuyenMonNghiepVu();
            cmbColumnBangChuyenMonNghiepVu.DisplayMember = "TenBangChuyenMonNghiepVu";
            cmbColumnBangChuyenMonNghiepVu.ValueMember = "MaBangChuyenMonNghiepVu";
        }

        public void HienThi(DataGridView dGV, BindingNavigator bN)
        {
            BindingSource bS = new BindingSource();
            DataTable tbl = m_BangChuyenMonNghiepVuData.LayDsBangChuyenMonNghiepVu();
            bS.DataSource = tbl;
            bN.BindingSource = bS;
            dGV.DataSource = bS;
        }
        //Hien thi DataGirdView     
        public void HienThi(DataGridView dGV, BindingNavigator bN, TextBox txtMaBangChuyenMonNghiepVu, TextBox txtTenBangChuyenMonNghiepVu)
        {
            BindingSource bS = new BindingSource();
            DataTable tbl = m_BangChuyenMonNghiepVuData.LayDsBangChuyenMonNghiepVu();
            bS.DataSource = tbl;

            txtMaBangChuyenMonNghiepVu.DataBindings.Clear();
            txtMaBangChuyenMonNghiepVu.DataBindings.Add("Text", bS, "MaBangChuyenMonNghiepVu");
            txtTenBangChuyenMonNghiepVu.DataBindings.Clear();
            txtTenBangChuyenMonNghiepVu.DataBindings.Add("Text", bS, "TenBangChuyenMonNghiepVu");

            bN.BindingSource = bS;
            dGV.DataSource = bS;
        }
        public DataRow ThemDongMoi()
        {
            return m_BangChuyenMonNghiepVuData.ThemDongMoi();
        }

        public void ThemBangChuyenMonNghiepVu(DataRow m_Row)
        {
            m_BangChuyenMonNghiepVuData.ThemBangChuyenMonNghiepVu(m_Row);
        }

        public bool LuuBangChuyenMonNghiepVu()
        {
            return m_BangChuyenMonNghiepVuData.LuuBangChuyenMonNghiepVu();
        }
    }


}


