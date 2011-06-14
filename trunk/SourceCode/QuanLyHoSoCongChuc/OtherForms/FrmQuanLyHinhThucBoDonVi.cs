﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevComponents.DotNetBar;

namespace QuanLyHoSoCongChuc.OtherForms
{
    #region Using
    using QuanLyHoSoCongChuc.Models;
    using QuanLyHoSoCongChuc.Repositories;
    using QuanLyHoSoCongChuc.Utils;
    #endregion

    /// <summary>
    /// tuansl added: manage loai don vi corresponding with menus in app
    /// </summary>
    public partial class FrmQuanLyHinhThucBoDonVi: DevComponents.DotNetBar.Office2007Form
    {
        // tuansl added: event handler to transfer data to other forms
        public EventHandler Handler { get; set; }
        // ---------------- E -----------------

        public FrmQuanLyHinhThucBoDonVi()
        {
            InitializeComponent();
            InitGridView();
        }

        private void FrmQuanLyHinhThucBoDonVi_Load(object sender, EventArgs e)
        {
            LoadData();
            // No choose any item
            dtgvDataList.ClearSelection();
        }

        private void btnThemMoi_Click(object sender, EventArgs e)
        {
            var errorText = "";
            if (!ValidateInput(EnumUpdateMode.INSERT, ref errorText))
            {
                MessageBox.Show(errorText, "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            if (ActionAdd())
            {
                MessageBox.Show("Lưu dữ liệu thành công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                LoadData();
            }
            else
            {
                MessageBox.Show("Lưu dữ liệu thất bại", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            var errorText = "";
            if (!ValidateInput(EnumUpdateMode.DELETE, ref errorText))
            {
                MessageBox.Show(errorText, "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            if (MessageBox.Show("Bạn có chắc chắn xóa dòng này không?", "Xóa", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                if (ActionDelete())
                {
                    MessageBox.Show("Xóa dữ liệu thành công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    LoadData();
                }
                else
                {
                    MessageBox.Show("Xóa dữ liệu thất bại", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void btnLuu_Click(object sender, EventArgs e)
        {
            var errorText = "";
            if (!ValidateInput(EnumUpdateMode.UPDATE, ref errorText))
            {
                MessageBox.Show(errorText, "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            if (ActionUpdate())
            {
                MessageBox.Show("Cập nhật dữ liệu thành công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                LoadData();
            }
            else
            {
                MessageBox.Show("Cập nhật dữ liệu thất bại", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnReset_Click(object sender, EventArgs e)
        {
            txtMaHinhThucBoDonVi.Text = "";
            txtTenHinhThucBoDonVi.Text = "";
        }

        private void dtgvDataList_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dtgvDataList.SelectedRows == null || dtgvDataList.SelectedRows.Count == 0)
                return;
            btnChon.Enabled = true;
            var selectedItem = dtgvDataList.SelectedRows[0];
            txtMaHinhThucBoDonVi.Text = ((HinhThucBoDonVi)selectedItem.DataBoundItem).MaHinhThucBoDonVi.ToString();
            txtTenHinhThucBoDonVi.Text = ((HinhThucBoDonVi)selectedItem.DataBoundItem).TenHinhThucBoDonVi.ToString();
        }

        private void btnChon_Click(object sender, EventArgs e)
        {
            var errorText = "";
            if (!ValidateInput(EnumUpdateMode.CHOOSING, ref errorText))
            {
                MessageBox.Show(errorText, "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            var id = int.Parse(txtMaHinhThucBoDonVi.Text);
            var name = HinhThucBoDonViRepository.SelectByID(id).TenHinhThucBoDonVi;
            TransferDataInfo(this, new MyEvent(id + "#" + name));
        }

        /// <summary>
        /// Init structure of gridview
        /// </summary>
        private void InitGridView()
        {
            dtgvDataList.AutoGenerateColumns = false;
            dtgvDataList.Columns.Clear();

            DataGridViewTextBoxColumn objColumn = new DataGridViewTextBoxColumn
            {
                HeaderText = "Mã hình thức bỏ đơn vị",
                DataPropertyName = "MaHinhThucBoDonVi",
                Width = (int)((dtgvDataList.Width - dtgvDataList.RowHeadersWidth) * 0.3)
            };
            dtgvDataList.Columns.Add(objColumn);

            objColumn = new DataGridViewTextBoxColumn
            {
                HeaderText = "Tên hình thức bỏ đơn vị",
                DataPropertyName = "TenHinhThucBoDonVi",
                Width = (int)((dtgvDataList.Width - dtgvDataList.RowHeadersWidth) * 0.7 - 1)
            };
            dtgvDataList.Columns.Add(objColumn);
        }

        /// <summary>
        /// Load data from DB
        /// </summary>
        private void LoadData()
        {
            var lstItem = HinhThucBoDonViRepository.SelectAll();
            dtgvDataList.DataSource = lstItem;
            dtgvDataList.ClearSelection();
        }

        /// <summary>
        /// Validate user input
        /// </summary>
        /// <param name="isUpdate"></param>
        /// <returns></returns>
        private bool ValidateInput(EnumUpdateMode mode, ref string errorText)
        {
            // Mode update -> checking MaHinhThucBoDonVi is exists on textbox
            if (mode == EnumUpdateMode.UPDATE || mode == EnumUpdateMode.DELETE || mode == EnumUpdateMode.CHOOSING)
            {
                if (txtMaHinhThucBoDonVi.Text == "")
                {
                    errorText = "Vui lòng chọn hình thức bỏ đơn vị";
                    return false;
                }
            }
            if (mode != EnumUpdateMode.DELETE)
            {
                if (txtTenHinhThucBoDonVi.Text == "")
                {
                    errorText = "Vui lòng nhập tên hình thức bỏ đơn vị";
                    return false;
                }
            }

            return true;
        }

        /// <summary>
        /// Add a new item to DB
        /// </summary>
        /// <returns></returns>
        private bool ActionAdd()
        {
            try
            {
                var item = new HinhThucBoDonVi
                {
                    TenHinhThucBoDonVi = txtTenHinhThucBoDonVi.Text
                };
                if (!HinhThucBoDonViRepository.Insert(item))
                {
                    return false;
                }
                return true;
            }
            catch
            {
                return false;
            }
        }

        /// <summary>
        /// Update item with specificed ID
        /// </summary>
        /// <returns></returns>
        private bool ActionUpdate()
        {
            try
            {
                var item = HinhThucBoDonViRepository.SelectByID(int.Parse(txtMaHinhThucBoDonVi.Text));
                item.TenHinhThucBoDonVi = txtTenHinhThucBoDonVi.Text;
                return HinhThucBoDonViRepository.Save();
            }
            catch
            {
                return false;
            }
        }

        /// <summary>
        /// Delete item with specified ID
        /// </summary>
        /// <returns></returns>
        private bool ActionDelete()
        {
            try
            {
                return HinhThucBoDonViRepository.Delete(int.Parse(txtMaHinhThucBoDonVi.Text));
            }
            catch
            {
                return false;
            }
        }

        /// <summary>
        /// tuansl added: function is used to transfer data when event would be raised
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void TransferDataInfo(object sender, MyEvent e)
        {
            this.Close();
            this.Handler(this, e);
        }
        
    }
}