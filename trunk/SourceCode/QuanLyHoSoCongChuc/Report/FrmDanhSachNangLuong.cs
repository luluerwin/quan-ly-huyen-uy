﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;


namespace QuanLyHoSoCongChuc.Report
{
    #region Using
    using QuanLyHoSoCongChuc.Models;
    using QuanLyHoSoCongChuc.Repositories;
    #endregion
    public partial class FrmDanhSachNangLuong : Form
    {
        DataService dataService = new DataService();
        public FrmDanhSachNangLuong()
        {
            InitializeComponent();
        }

        private void FrmDanhSachNangLuong_Load(object sender, EventArgs e)
        {
            loadDonVi();
            loadNam();
            cboKy.SelectedIndex = 0;
            initGird();
          
        }
        void loadDonVi()
        {
            var lstDonVi = DonViRepository.SelectAll();
            for (int i = 0; i < lstDonVi.Count; i++)
            {
                cbDonVi.Items.Add(new ListItem(lstDonVi[i].MaDonVi, lstDonVi[i].TenDonVi));
            }
            if (lstDonVi.Count > 0)
                cbDonVi.SelectedIndex = 0;
        }

        void loadNam()
        {
            for (int i = 0; i < 100; i++)
            {
                dupNam.Items.Add(1950+i);
            }
            dupNam.SelectedIndex = 50;
        }

        private void btInBieu_Click(object sender, EventArgs e)
        {
            String strDt = cboKy.Text + " năm " + dupNam.Text;
            ListItem DV = (ListItem)cbDonVi.SelectedItem;

            FrmPrintReport frm = new FrmPrintReport("2", DV.ID, strDt);
            frm.Show();
        }

        void initGird()
        {
            SourceGrid.Cells.Views.Cell yellowView = new SourceGrid.Cells.Views.Cell();
            yellowView.BackColor = Color.Lavender;
            yellowView.TextAlignment = DevAge.Drawing.ContentAlignment.MiddleCenter;

            grid1.BorderStyle = BorderStyle.FixedSingle;
            grid1.ColumnsCount = 20;
            grid1.FixedRows = 2;
            grid1.Rows.Insert(0);
            grid1.Rows.Insert(1);

            grid1[0, 0] = new SourceGrid.Cells.ColumnHeader("STT");
            grid1[0, 0].RowSpan = 2;
            grid1[0, 1] = new SourceGrid.Cells.ColumnHeader("Đơn vị");
            grid1[0, 1].RowSpan = 2;
            grid1[0, 2] = new SourceGrid.Cells.ColumnHeader("Họ và Tên");
            grid1[0, 2].RowSpan = 2;
            grid1[0, 3] = new SourceGrid.Cells.ColumnHeader("Năm sinh");
            grid1[0, 3].RowSpan = 2;
            grid1[0, 4] = new SourceGrid.Cells.ColumnHeader("Trình độ đào tạo");
            grid1[0, 4].RowSpan = 2;

            grid1[0, 5] = new SourceGrid.Cells.ColumnHeader("Mức lương đang hưởng");
            grid1[0, 5].ColumnSpan = 6;
            grid1[0, 5].View = yellowView;

            grid1[0, 11] = new SourceGrid.Cells.ColumnHeader("Mức lương đang hưởng");
            grid1[0, 11].ColumnSpan = 9;
            grid1[0, 11].View = yellowView;

            grid1[1, 5] = new SourceGrid.Cells.ColumnHeader("Tên ngạch");
            grid1[1, 6] = new SourceGrid.Cells.ColumnHeader("Mã ngạch");
            grid1[1, 7] = new SourceGrid.Cells.ColumnHeader("Bậc");
            grid1[1, 8] = new SourceGrid.Cells.ColumnHeader("Hệ số lương cơ bản");
            grid1[1, 9] = new SourceGrid.Cells.ColumnHeader("Hệ số c. lệch bảo lưu (nếu có)");
            grid1[1, 10] = new SourceGrid.Cells.ColumnHeader("Ngày tháng năm nâng lương lần sau");

            grid1[1, 11] = new SourceGrid.Cells.ColumnHeader("Tên ngạch");
            grid1[1, 12] = new SourceGrid.Cells.ColumnHeader("Mã ngạch");
            grid1[1, 13] = new SourceGrid.Cells.ColumnHeader("Bậc");
            grid1[1, 14] = new SourceGrid.Cells.ColumnHeader("Hệ số lương cơ bản");
            grid1[1, 15] = new SourceGrid.Cells.ColumnHeader("Hệ số c. lệch bảo lưu (nếu có)");
            grid1[1, 16] = new SourceGrid.Cells.ColumnHeader("Ngày tháng năm hưởng và tính nâng lương lần sau");
            grid1[1, 17] = new SourceGrid.Cells.ColumnHeader("Chênh lệch về hệ số lương do nâng bậc");
            grid1[1, 18] = new SourceGrid.Cells.ColumnHeader("Số tháng được hưởng bậc lương mới");
            grid1[1, 19] = new SourceGrid.Cells.ColumnHeader("Tổng tiền lương tăng thêm do nâng bậc");

            grid1.AutoSizeCells();
        }
        private void btBaoBieu_Click(object sender, EventArgs e)
        {
            grid1.Rows.Clear();
            initGird();
            ListItem DV = (ListItem)cbDonVi.SelectedItem;
            String sql = " select nv.*, t.TenTrinhDoChuyenMon, dv.TenDonVi";
            sql += " from NhanVien nv left join TrinhDoChuyenMon t on nv.MaTrinhDoChuyenMon = t.MaTrinhDoChuyenMon";
            sql += " left join DonVi dv on nv.MaDonVi = dv.MaDonVi";
            sql += " where nv.MaDonVi='" + DV.ID + "'";

            SqlCommand cmd = new SqlCommand(sql);
            dataService.Load(cmd);
            DataTable myDt = dataService;

            for (int r = 0; r < myDt.Rows.Count; r++)
            {
                grid1.Rows.Insert(r+2);
                grid1[2 + r, 0] = new SourceGrid.Cells.Cell(r+1, typeof(int));
                grid1[2 + r, 1] = new SourceGrid.Cells.Cell(myDt.Rows[r]["TenDonVi"], typeof(String));
                grid1[2 + r, 2] = new SourceGrid.Cells.Cell(myDt.Rows[r]["HoTenNhanVien"], typeof(String));

                DateTime dt = (DateTime)myDt.Rows[r]["NgaySinh"];
                grid1[2 + r, 3] = new SourceGrid.Cells.Cell(dt.Year, typeof(int));
                grid1[2 + r, 4] = new SourceGrid.Cells.Cell(myDt.Rows[r]["TenTrinhDoChuyenMon"], typeof(String));
                grid1[2 + r, 5] = new SourceGrid.Cells.Cell("", typeof(String));
                grid1[2 + r, 6] = new SourceGrid.Cells.Cell("", typeof(String));
                grid1[2 + r, 7] = new SourceGrid.Cells.Cell("", typeof(String));
                grid1[2 + r, 8] = new SourceGrid.Cells.Cell("", typeof(String));
                grid1[2 + r, 9] = new SourceGrid.Cells.Cell("", typeof(String));
                grid1[2 + r, 10] = new SourceGrid.Cells.Cell("", typeof(String));
                grid1[2 + r, 11] = new SourceGrid.Cells.Cell("", typeof(String));
                grid1[2 + r, 12] = new SourceGrid.Cells.Cell("", typeof(String));
                grid1[2 + r, 13] = new SourceGrid.Cells.Cell("", typeof(String));
                grid1[2 + r, 14] = new SourceGrid.Cells.Cell("", typeof(String));
                grid1[2 + r, 15] = new SourceGrid.Cells.Cell("", typeof(String));
                grid1[2 + r, 16] = new SourceGrid.Cells.Cell("", typeof(String));
                grid1[2 + r, 17] = new SourceGrid.Cells.Cell("", typeof(String));
                grid1[2 + r, 18] = new SourceGrid.Cells.Cell("", typeof(String));
                grid1[2 + r, 19] = new SourceGrid.Cells.Cell("", typeof(String));
            }

            grid1.AutoSizeCells();
            if (myDt.Rows.Count == 0)
            {
                MessageBox.Show("No data");
            }
        }

       
    }
}
