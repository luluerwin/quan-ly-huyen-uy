using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevComponents.DotNetBar;
using WeifenLuo.WinFormsUI.Docking;
using QuanLyHoSoCongChuc.BusinessObject;
using QuanLyHoSoCongChuc.Controller;
using QuanLyHoSoCongChuc.DataLayer;

namespace QuanLyHoSoCongChuc.OtherForms
{
    #region Using
    using QuanLyHoSoCongChuc.NhanVienManager;
    using QuanLyHoSoCongChuc.Danh_muc;
    using QuanLyHoSoCongChuc.Utils;
    using QuanLyHoSoCongChuc.Repositories;
    #endregion

    public partial class FrmQuanLyNhanVien : DockContent
    {
        public FrmQuanLyNhanVien(string madonvi, string tendonvidaydu)
        {
            InitializeComponent();
            txtMaDonVi.Text = madonvi;
            txtTenDonViDayDu.Text = tendonvidaydu;
        }

        private void FrmQuanLyNhanVien_Load(object sender, EventArgs e)
        {

        }

        /// <summary>
        /// Load list of nhanvien belong to donvi
        /// </summary>
        public void LoadData()
        {
            var lstItem = NhanVienRepository.SelectByMaDonVi(txtMaDonVi.Text);
            lstvNhanVien.Items.Clear();
            for(int i=0; i<lstItem.Count; i++)
            {
                var objListViewItem = new ListViewItem();
                objListViewItem.Tag = lstItem[i];
                objListViewItem.Text = (i + 1).ToString();
                objListViewItem.SubItems.Add(lstItem[i].MaNhanVien);
                objListViewItem.SubItems.Add(lstItem[i].HoTenDangDung);
                objListViewItem.SubItems.Add(lstItem[i].GioiTinh.TenGioiTinh);
                objListViewItem.SubItems.Add(lstItem[i].NgaySinh.ToString());
                objListViewItem.SubItems.Add(lstItem[i].HoKhau);
                lstvNhanVien.Items.Add(objListViewItem);
            }
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            string errorText = "";
            if (!ValidateUserInput(ref errorText))
            {
                MessageBox.Show(errorText, "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            FrmThongTinNhanVien frm = new FrmThongTinNhanVien(txtMaDonVi.Text, txtTenDonViDayDu.Text);
            frm.ShowDialog();
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            string errorText = "";
            if (!ValidateUserInput(ref errorText))
            {
                MessageBox.Show(errorText, "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            if (MessageBox.Show("Bạn có chắc chắn xóa nhân viên này không?", "Xóa", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                
            }
        }

        /// <summary>
        /// Validate user input
        /// </summary>
        /// <param name="errorText"></param>
        /// <returns></returns>
        public bool ValidateUserInput(ref string errorText)
        {
            if (txtMaDonVi.Text == "")
            {
                errorText = "Vui lòng chọn đơn vị";
                return false;
            }
            return true;
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnChonDonVi_Click(object sender, EventArgs e)
        {
            FrmDanhMuc frm = new FrmDanhMuc();
            frm.Handler += GetDonVi;
            frm.ShowDialog();
        }

        /// <summary>
        /// Retrive info of don vi
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void GetDonVi(object sender, EventArgs e)
        {
            var eventType = (MyEvent)e;
            string[] comp = eventType.Data.Split(new char[] { '#' });
            txtMaDonVi.Text = comp[0];
            txtTenDonViDayDu.Text = comp[1];
        } 
    }
}