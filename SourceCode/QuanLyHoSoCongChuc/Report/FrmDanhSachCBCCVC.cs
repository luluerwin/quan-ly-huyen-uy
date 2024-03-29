﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using QuanLyHoSoCongChuc.Danh_muc;
using QuanLyHoSoCongChuc.Utils;
using System.Data.SqlClient;

namespace QuanLyHoSoCongChuc.Report
{
    #region Using
    using QuanLyHoSoCongChuc.Models;
    using QuanLyHoSoCongChuc.Repositories;
    #endregion
    public partial class FrmDanhSachCBCCVC : Form
    {
        public FrmDanhSachCBCCVC()
        {
            InitializeComponent();
        }
        String SelectedId;
        int Level;
        DataService dataService = new DataService();
        private void FrmDanhSachCBCCVC_Load(object sender, EventArgs e)
        {
            DataService.OpenConnection();
            cbDoiTuong.SelectedIndex = 0;
            cbKy.SelectedIndex = 0;
        }
        

        private void btInBieu_Click(object sender, EventArgs e)
        {
            int type = cbDoiTuong.SelectedIndex;
            List<String> ChuKi = new List<string>();
            ChuKi.Add(txtNLB1.Text);
            ChuKi.Add(txtNLB2.Text);
            ChuKi.Add(txtNLB3.Text);
            ChuKi.Add(txtNK1.Text);
            ChuKi.Add(txtNK2.Text);
            ChuKi.Add(txtNK3.Text);
            FrmPrintReport frm = new FrmPrintReport("4-" + type.ToString(), SelectedId, "", ChuKi, Level);
            frm.Show();
        }

        private void btBaoBieu_Click(object sender, EventArgs e)
        {
            DGV.Rows.Clear();
            String sql = " select nv.*, cv.TenChucVu, t.TenBangChuyenMonNghiepVu, t.ChuyenNganh, tt.TenBangLyLuanChinhTri";
            sql += " from NhanVien nv left join ChucVu cv on nv.MaChucVu = cv.MaChucVu";
            sql += " left join BangChuyenMonNghiepVu t on nv.MaBangChuyenMonNghiepVu = t.MaBangChuyenMonNghiepVu";
            sql += " left join BangLyLuanChinhTri tt on nv.MaBangLyLuanChinhTri = tt.MaBangLyLuanChinhTri";
            sql += " join DonVi dv on nv.MaDonVi = dv.MaDonVi";
            sql += " where 1=1";
            sql += LoadSql_MaDonVi();
            SqlCommand cmd = new SqlCommand(sql);
            dataService.Load(cmd);
            DataTable myDt = dataService;

            for (int i = 0; i < myDt.Rows.Count; i++)
            {
                DGV.Rows.Add();
                DGV.Rows[i].Cells["STT"].Value = i + 1;
                DGV.Rows[i].Cells["HoTenKhaiSinh"].Value = myDt.Rows[i]["HoTenKhaiSinh"].ToString();
                DateTime dt = (DateTime)myDt.Rows[i]["NgaySinh"];
                DGV.Rows[i].Cells["NgaySinh"].Value = dt.ToString("dd/MM/yyyy");
                DGV.Rows[i].Cells["QueQuan"].Value = myDt.Rows[i]["QueQuan"].ToString();
                DGV.Rows[i].Cells["NoiOHienTai"].Value = myDt.Rows[i]["NoiOHienNay"].ToString();
                DGV.Rows[i].Cells["TenChucVu"].Value = myDt.Rows[i]["TenChucVu"].ToString();
                DGV.Rows[i].Cells["TenBangChuyenMonNghiepVu"].Value = myDt.Rows[i]["TenBangChuyenMonNghiepVu"].ToString();
                DGV.Rows[i].Cells["ChuyenNganh"].Value = myDt.Rows[i]["ChuyenNganh"].ToString();
                DGV.Rows[i].Cells["TenBangLyLuanChinhTri"].Value = myDt.Rows[i]["TenBangLyLuanChinhTri"].ToString();
            }
            if (myDt.Rows.Count == 0)
            {
                MessageBox.Show("Không có dữ liệu");
            }
        }
        public void GetDonVi(object sender, EventArgs e)
        {
            var eventType = (MyEvent)e;
            string[] comp = eventType.Data.Split(new char[] { '#' });
            SelectedId = comp[0];
            txtDonVi.Text = comp[1];
            Level = int.Parse(comp[2]);
        }
        private void btnChonDonVi_Click(object sender, EventArgs e)
        {
            FrmDanhMuc frm = new FrmDanhMuc(true);
            frm.Handler += GetDonVi;
            frm.ShowDialog();
        }

        private void btThoat_Click(object sender, EventArgs e)
        {
            this.Close();
        }
        private String LoadSql_MaDonVi()
        {
            String sql = "";
            if (Level == 1)//Cap tinh
            {
                sql += " and MaQuanHuyen in (";
                sql += " Select MaQuanHuyen from QuanHuyen where MaTinh='" + SelectedId + "'";
                sql += " )";
            }
            if (Level == 2)//Cap huyen
            {
                sql += " and MaQuanHuyen ='" + SelectedId + "'";
            }
            return sql;
        }
    }
}
