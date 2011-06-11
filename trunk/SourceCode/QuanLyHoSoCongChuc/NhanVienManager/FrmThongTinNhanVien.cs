﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevComponents.DotNetBar;
using QuanLyHoSoCongChuc.Repositories;
using QuanLyHoSoCongChuc.Models;
using QuanLyHoSoCongChuc.Utils;
using QuanLyHoSoCongChuc.Danh_muc;
using QuanLyHoSoCongChuc.OtherForms;

namespace QuanLyHoSoCongChuc.NhanVienManager
{
    /// <summary>
    /// tuansl added: main form is used to manage infos of nhanvien
    /// </summary>
    public partial class FrmThongTinNhanVien : DevComponents.DotNetBar.Office2007Form
    {
        #region Variables
        private enum EnumThongTinNhanVien
        {
            TOMTAT,
            CACQUATRINH,
            DACDIEMLS,
            GIADINH,
            LUONGPHUCAP
        }
        private NhanVien _nhanvien;
        private Color imgCurrentNavImage;
        private FrmThongTinNhanVien_TomTat frmThongTinNhanVien_TomTat;
        private FrmThongTinNhanVien_CacQuaTrinh frmThongTinNhanVien_CacQuaTrinh;
        private FrmThongTinNhanVien_GiaDinh frmThongTinNhanVien_GiaDinh;
        private FrmThongTinNhanVien_DacDiemLichSu frmThongTinNhanVien_DacDiemLichSu;
        private FrmThongTinNhanVien_LuongPhuCap frmThongTinNhanVien_LuongPhuCap;
        // Hidden files are used to store ids 
        private DevComponents.DotNetBar.Controls.TextBoxX txtMaGioiTinh;
        private EnumUpdateMode Mode = EnumUpdateMode.UPDATE;
        private EnumThongTinNhanVien Functionality = EnumThongTinNhanVien.TOMTAT;
        private bool Updated = false;
        public EventHandler Handler { get; set; }
        #endregion

        #region Methods
        /// <summary>
        /// Using when add new nhanvien
        /// </summary>
        /// <param name="madonvi"></param>
        /// <param name="tendonvidaydu"></param>
        public FrmThongTinNhanVien(string madonvi, string tendonvidaydu)
        {
            InitializeComponent();
            InitHiddenFields();
            txtMaDonVi.Text = madonvi;
            txtTenDonViDayDu.Text = tendonvidaydu;
            Mode = EnumUpdateMode.INSERT;
        }

        /// <summary>
        /// Using when update info of nhanvien
        /// </summary>
        /// <param name="manhanvien"></param>
        public FrmThongTinNhanVien(NhanVien nhanvien)
        {
            InitializeComponent();
            _nhanvien = nhanvien;
            InitHiddenFields();
            Mode = EnumUpdateMode.UPDATE;
        }

        /// <summary>
        /// tuansl added: Init hidden fields to store ids
        /// </summary>
        private void InitHiddenFields()
        {
            // Add a new textbox
            txtMaGioiTinh = new DevComponents.DotNetBar.Controls.TextBoxX
            {
                Name = "txtMaGioiTinh"
            };
            txtMaGioiTinh.Visible = false;
        }

        private void FrmThongTinNhanVien_Load(object sender, EventArgs e)
        {
            if (Mode == EnumUpdateMode.INSERT)
            {
                InitForm(null);
            }
            else if (Mode == EnumUpdateMode.UPDATE)
            {
                if(_nhanvien != null)
                    LoadInfo();
            }
        }

        /// <summary>
        /// Only using this function when load info of given nhanvien
        /// </summary>
        public void LoadInfo()
        {
            txtMaDonVi.Text = _nhanvien.MaDonVi;
            txtTenDonViDayDu.Text = _nhanvien.DonVi.TenDonVi;

            txtHoTenKhaiSinh.Text = _nhanvien.HoTenKhaiSinh;
            dtSinhNgay.Value = _nhanvien.NgaySinh.Value;
            txtGioiTinh.Text = _nhanvien.GioiTinh.TenGioiTinh;
            txtMaGioiTinh.Text = _nhanvien.MaGioiTinh.ToString();

            InitForm(_nhanvien);
        }

        public void InitForm(NhanVien nhanvien = null)
        {
            lblTomTat.MouseEnter += new EventHandler(NavigationChildControl_MouseEnter);
            lblTomTat.MouseLeave += new EventHandler(NavigationChildControl_MouseLeave);
            lblTomTat.MouseUp += new MouseEventHandler(NavigationChildControl_MouseUp);

            lblCacQuaTrinh.MouseEnter += new EventHandler(NavigationChildControl_MouseEnter);
            lblCacQuaTrinh.MouseLeave += new EventHandler(NavigationChildControl_MouseLeave);
            lblCacQuaTrinh.MouseUp += new MouseEventHandler(NavigationChildControl_MouseUp);

            lblDacDiemLS.MouseEnter += new EventHandler(NavigationChildControl_MouseEnter);
            lblDacDiemLS.MouseLeave += new EventHandler(NavigationChildControl_MouseLeave);
            lblDacDiemLS.MouseUp += new MouseEventHandler(NavigationChildControl_MouseUp);

            lblGiaDinh.MouseEnter += new EventHandler(NavigationChildControl_MouseEnter);
            lblGiaDinh.MouseLeave += new EventHandler(NavigationChildControl_MouseLeave);
            lblGiaDinh.MouseUp += new MouseEventHandler(NavigationChildControl_MouseUp);

            lblLuongPhuCap.MouseEnter += new EventHandler(NavigationChildControl_MouseEnter);
            lblLuongPhuCap.MouseLeave += new EventHandler(NavigationChildControl_MouseLeave);
            lblLuongPhuCap.MouseUp += new MouseEventHandler(NavigationChildControl_MouseUp);

            frmThongTinNhanVien_TomTat = new FrmThongTinNhanVien_TomTat(nhanvien);
            frmThongTinNhanVien_TomTat.TopLevel = false;
            frmThongTinNhanVien_TomTat.FormBorderStyle = FormBorderStyle.None;
            frmThongTinNhanVien_TomTat.Dock = DockStyle.Fill;

            frmThongTinNhanVien_CacQuaTrinh = new FrmThongTinNhanVien_CacQuaTrinh(nhanvien);
            frmThongTinNhanVien_CacQuaTrinh.TopLevel = false;
            frmThongTinNhanVien_CacQuaTrinh.FormBorderStyle = FormBorderStyle.None;
            frmThongTinNhanVien_CacQuaTrinh.Dock = DockStyle.Fill;

            frmThongTinNhanVien_DacDiemLichSu = new FrmThongTinNhanVien_DacDiemLichSu(nhanvien);
            frmThongTinNhanVien_DacDiemLichSu.TopLevel = false;
            frmThongTinNhanVien_DacDiemLichSu.FormBorderStyle = FormBorderStyle.None;
            frmThongTinNhanVien_DacDiemLichSu.Dock = DockStyle.Fill;

            frmThongTinNhanVien_GiaDinh = new FrmThongTinNhanVien_GiaDinh(nhanvien);
            frmThongTinNhanVien_GiaDinh.TopLevel = false;
            frmThongTinNhanVien_GiaDinh.FormBorderStyle = FormBorderStyle.None;
            frmThongTinNhanVien_GiaDinh.Dock = DockStyle.Fill;

            frmThongTinNhanVien_LuongPhuCap = new FrmThongTinNhanVien_LuongPhuCap(nhanvien);
            frmThongTinNhanVien_LuongPhuCap.TopLevel = false;
            frmThongTinNhanVien_LuongPhuCap.FormBorderStyle = FormBorderStyle.None;
            frmThongTinNhanVien_LuongPhuCap.Dock = DockStyle.Fill;

            //Add to middle view
            pnlChangeView.Controls.Clear();
            pnlChangeView.Controls.Add(frmThongTinNhanVien_TomTat);
            frmThongTinNhanVien_TomTat.Show();
        }

        private void NavigationChildControl_MouseEnter(Object sender, EventArgs e)
        {
            if (sender.GetType() == typeof(LabelX))
            {
                imgCurrentNavImage = ((LabelX)sender).ForeColor;
                if (((LabelX)sender).ForeColor == Color.White)
                {
                    ((LabelX)sender).ForeColor = Color.Lime;
                }
                ((LabelX)sender).Cursor = Cursors.Hand;
            }
        }

        private void NavigationChildControl_MouseLeave(Object sender, EventArgs e)
        {
            if (sender.GetType() == typeof(LabelX))
            {
                ((LabelX)sender).ForeColor = imgCurrentNavImage;
                ((LabelX)sender).Cursor = Cursors.Default;
            }
        }

        private void NavigationChildControl_MouseUp(Object sender, System.Windows.Forms.MouseEventArgs e)
        {
            if (sender.GetType() == typeof(LabelX))
            {
                imgCurrentNavImage = Color.Lime;
                ((LabelX)sender).ForeColor = Color.Lime;
                Navigate(((LabelX)sender).Name);
            }
        }

        private void Navigate(string Shortcut)
        {
            foreach (Control objControl in pnlChucNang.Controls)
            {
                if (objControl.GetType() == typeof(LabelX))
                {
                    switch (objControl.Name)
                    {
                        case "lblTomTat":
                            if (Shortcut == "lblTomTat")
                            {
                                Functionality = EnumThongTinNhanVien.TOMTAT;
                                objControl.ForeColor = Color.Lime;
                                pnlChangeView.Controls.Clear();
                                pnlChangeView.Controls.Add(frmThongTinNhanVien_TomTat);
                                frmThongTinNhanVien_TomTat.Show();
                            }
                            else
                            {
                                objControl.ForeColor = Color.White;
                            }
                            break;

                        case "lblCacQuaTrinh":
                            if (Shortcut == "lblCacQuaTrinh")
                            {
                                Functionality = EnumThongTinNhanVien.CACQUATRINH;
                                objControl.ForeColor = Color.Lime;
                                pnlChangeView.Controls.Clear();
                                pnlChangeView.Controls.Add(frmThongTinNhanVien_CacQuaTrinh);
                                frmThongTinNhanVien_CacQuaTrinh.Show();
                            }
                            else
                            {
                                objControl.ForeColor = Color.White;
                            }
                            break;

                        case "lblDacDiemLS":
                            if (Shortcut == "lblDacDiemLS")
                            {
                                Functionality = EnumThongTinNhanVien.DACDIEMLS;
                                objControl.ForeColor = Color.Lime;
                                pnlChangeView.Controls.Clear();
                                pnlChangeView.Controls.Add(frmThongTinNhanVien_DacDiemLichSu);
                                frmThongTinNhanVien_DacDiemLichSu.Show();
                            }
                            else
                            {
                                objControl.ForeColor = Color.White;
                            }
                            break;

                        case "lblGiaDinh":
                            if (Shortcut == "lblGiaDinh")
                            {
                                Functionality = EnumThongTinNhanVien.GIADINH;
                                objControl.ForeColor = Color.Lime;
                                pnlChangeView.Controls.Clear();
                                pnlChangeView.Controls.Add(frmThongTinNhanVien_GiaDinh);
                                frmThongTinNhanVien_GiaDinh.Show();
                            }
                            else
                            {
                                objControl.ForeColor = Color.White;
                            }
                            break;

                        case "lblLuongPhuCap":
                            if (Shortcut == "lblLuongPhuCap")
                            {
                                Functionality = EnumThongTinNhanVien.LUONGPHUCAP;
                                objControl.ForeColor = Color.Lime;
                                pnlChangeView.Controls.Clear();
                                pnlChangeView.Controls.Add(frmThongTinNhanVien_LuongPhuCap);
                                frmThongTinNhanVien_LuongPhuCap.Show();
                            }
                            else
                            {
                                objControl.ForeColor = Color.White;
                            }
                            break;
                    }
                }
            }
        }

        private void btnChonDonVi_Click(object sender, EventArgs e)
        {
            FrmDanhMuc frm = new FrmDanhMuc();
            frm.Handler += GetDonVi;
            frm.EnableButtonChon = true;
            frm.ShowDialog();
        }

        /// <summary>
        /// Get thong tin don vi
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

        private void FrmThongTinNhanVien_FormClosed(object sender, FormClosedEventArgs e)
        {
            this.Handler(sender, new MyEvent(Updated ? "true" : "false"));
        }

        private void btnThoat_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnChonGioiTinh_Click(object sender, EventArgs e)
        {
            FrmQuanLyGioiTinh frm = new FrmQuanLyGioiTinh();
            frm.Handler += GetGioiTinh;
            frm.ShowDialog();
        }

        /// <summary>
        /// Get chose gioitinh 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void GetGioiTinh(object sender, EventArgs e)
        {
            var eventType = (MyEvent)e;
            string[] comp = eventType.Data.Split(new char[] { '#' });
            txtMaGioiTinh.Text = comp[0];
            txtGioiTinh.Text = comp[1];
        }

        /// <summary>
        /// Validate user input
        /// </summary>
        /// <param name="errorText"></param>
        /// <returns></returns>
        public bool ValidateUserInput(ref string errorText)
        {
            if (txtHoTenKhaiSinh.Text == "")
            {
                errorText = "Vui lòng nhập họ tên khai sinh nhân viên";
                return false;
            }
            if (frmThongTinNhanVien_TomTat.MaNhanVien == "")
            {
                errorText = "Vui lòng nhập mã nhân viên";
                return false;
            }
            if (txtMaGioiTinh.Text == "")
            {
                errorText = "Vui lòng nhập mã giới tính";
                return false;
            }
            if (dtSinhNgay.Value == DateTime.MinValue)
            {
                errorText = "Vui lòng nhập ngày sinh";
                return false;
            }
            if (frmThongTinNhanVien_TomTat.NgayVaoDang == DateTime.MinValue)
            {
                errorText = "Vui lòng nhập ngày vào đảng";
                return false;
            }
            if (frmThongTinNhanVien_TomTat.MaTonGiao == -1)
            {
                errorText = "Vui lòng nhập tôn giáo";
                return false;
            }
            return true;
        }

        public void UpdateForeignKeys(ref NhanVien item)
        {
            if (frmThongTinNhanVien_TomTat.PathHinhAnh != "")
            {
                byte[] imageData = FileHelper.ReadFile(frmThongTinNhanVien_TomTat.PathHinhAnh);
                item.HinhAnh = imageData;
            }
            else
            {
                item.HinhAnh = null;
            }

            if (txtMaGioiTinh.Text != "")
            {
                item.MaGioiTinh = int.Parse(txtMaGioiTinh.Text);
            }
            if (txtMaDonVi.Text != "")
            {
                item.MaDonVi = txtMaDonVi.Text;
            }
            if (frmThongTinNhanVien_TomTat.MaDanToc != -1)
            {
                item.MaDanToc = frmThongTinNhanVien_TomTat.MaDanToc;
            }
            if (frmThongTinNhanVien_TomTat.MaTonGiao != -1)
            {
                item.MaTonGiao = frmThongTinNhanVien_TomTat.MaTonGiao;
            }
            if (frmThongTinNhanVien_TomTat.MaThanhPhanGiaDinh != -1)
            {
                item.MaThanhPhanGiaDinh = frmThongTinNhanVien_TomTat.MaThanhPhanGiaDinh;
            }
            if (frmThongTinNhanVien_TomTat.MaNgheNghiepTruocKhiDuocTuyenDung != -1)
            {
                item.MaNgheNghiepTruocKhiDuocTuyenDung = frmThongTinNhanVien_TomTat.MaNgheNghiepTruocKhiDuocTuyenDung;
            }
            if (frmThongTinNhanVien_TomTat.MaBangGiaoDucPhoThong != -1)
            {
                item.MaBangGiaoDucPhoThong = frmThongTinNhanVien_TomTat.MaBangGiaoDucPhoThong;
            }
            if (frmThongTinNhanVien_TomTat.MaBangChuyenMonNghiepVu != -1)
            {
                item.MaBangChuyenMonNghiepVu = frmThongTinNhanVien_TomTat.MaBangChuyenMonNghiepVu;
            }
            if (frmThongTinNhanVien_TomTat.MaBangLyLuanChinhTri != -1)
            {
                item.MaBangLyLuanChinhTri = frmThongTinNhanVien_TomTat.MaBangLyLuanChinhTri;
            }
            if (frmThongTinNhanVien_TomTat.MaBangNgoaiNgu != -1)
            {
                item.MaBangNgoaiNgu = frmThongTinNhanVien_TomTat.MaBangNgoaiNgu;
            }
            if (frmThongTinNhanVien_TomTat.MaHocVi != -1)
            {
                item.MaHocVi = frmThongTinNhanVien_TomTat.MaHocVi;
            }
            if (frmThongTinNhanVien_TomTat.MaHocHam != -1)
            {
                item.MaHocHam = frmThongTinNhanVien_TomTat.MaHocHam;
            }
            if (frmThongTinNhanVien_TomTat.MaTinhTrangSucKhoe != -1)
            {
                item.MaTinhTrangSucKhoe = frmThongTinNhanVien_TomTat.MaTinhTrangSucKhoe;
            }
            if (frmThongTinNhanVien_TomTat.MaLoaiThuongBinh != -1)
            {
                item.MaLoaiThuongBinh = frmThongTinNhanVien_TomTat.MaLoaiThuongBinh;
            }
            if (frmThongTinNhanVien_TomTat.MaChucVu != -1)
            {
                item.MaChucVu = frmThongTinNhanVien_TomTat.MaChucVu;
            }
        }

        private void btnGhi_Click(object sender, EventArgs e)
        {
            var errorText = "";
            switch (Functionality)
            {
                case EnumThongTinNhanVien.TOMTAT:
                    if (Mode == EnumUpdateMode.INSERT)
                    {
                        if (!ValidateUserInput(ref errorText))
                        {
                            MessageBox.Show(errorText, "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                            return;
                        }

                        if (ActionAdd_TomTat())
                        {
                            MessageBox.Show("Thêm dữ liệu thành công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                            Updated = true;
                        }
                        else
                        {
                            MessageBox.Show("Thêm dữ liệu thất bại", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        }
                    }
                    else if(Mode == EnumUpdateMode.UPDATE)
                    {
                        if (!ValidateUserInput(ref errorText))
                        {
                            MessageBox.Show(errorText, "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                            return;
                        }

                        if (ActionUpdate_TomTat())
                        {
                            MessageBox.Show("Cập nhật dữ liệu thành công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                            Updated = true;
                        }
                        else
                        {
                            MessageBox.Show("Cập nhật dữ liệu thất bại", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        }
                    }
                    break;

                case EnumThongTinNhanVien.DACDIEMLS:
                    if (Mode == EnumUpdateMode.INSERT)
                    {
                        if (ActionAdd_DacDiemLS())
                        {
                            MessageBox.Show("Thêm dữ liệu thành công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                            Updated = true;
                        }
                        else
                        {
                            MessageBox.Show("Thêm dữ liệu thất bại", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        }
                    }
                    else if (Mode == EnumUpdateMode.UPDATE)
                    {
                        var lstItem = DacDiemLichSuRepository.SelectByMaNhanVien(_nhanvien.MaNhanVien);
                        if (lstItem.Count > 0)
                        {
                            var item = lstItem[0];
                            if (ActionUpdate_DacDiemLS(item))
                            {
                                MessageBox.Show("Cập nhật dữ liệu thành công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                                Updated = true;
                            }
                            else
                            {
                                MessageBox.Show("Cập nhật dữ liệu thất bại", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                            }
                        }
                        else// Neu nhanvien chua cap nhat dac diem lich su, thuc hien them moi
                        {
                            if (ActionAdd_DacDiemLS())
                            {
                                MessageBox.Show("Thêm dữ liệu thành công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                                Updated = true;
                            }
                            else
                            {
                                MessageBox.Show("Thêm dữ liệu thất bại", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                            }
                        }
                    }
                    break;

                case EnumThongTinNhanVien.GIADINH:
                    if (Mode == EnumUpdateMode.INSERT)
                    {
                    }
                    else if (Mode == EnumUpdateMode.UPDATE)
                    {

                    }
                    break;

                case EnumThongTinNhanVien.LUONGPHUCAP:
                    if (Mode == EnumUpdateMode.INSERT)
                    {
                    }
                    else if (Mode == EnumUpdateMode.UPDATE)
                    {

                    }
                    break;
            }
        }

        private void txtHoTenKhaiSinh_TextChanged(object sender, EventArgs e)
        {
            int start = this.txtHoTenKhaiSinh.SelectionStart;
            this.txtHoTenKhaiSinh.Text = this.txtHoTenKhaiSinh.Text.ToUpper();
            this.txtHoTenKhaiSinh.SelectionStart = start;
        }

        /// <summary>
        /// Add tomtat for specified nhanvien
        /// </summary>
        /// <returns></returns>
        public bool ActionAdd_TomTat()
        {
            var item = new NhanVien
            {
                MaNhanVien = frmThongTinNhanVien_TomTat.MaNhanVien,
                HoTenKhaiSinh = txtHoTenKhaiSinh.Text,
                HoTenDangDung = frmThongTinNhanVien_TomTat.HoTenDangDung,
                NgaySinh = dtSinhNgay.Value,
                NoiSinh = frmThongTinNhanVien_TomTat.NoiSinh,
                QueQuan = frmThongTinNhanVien_TomTat.QueQuan,
                HoKhau = frmThongTinNhanVien_TomTat.HoKhau,
                TamTru = frmThongTinNhanVien_TomTat.TamTru,
                CongViecChinh = frmThongTinNhanVien_TomTat.CongViecChinh,
                NgayVaoDang = frmThongTinNhanVien_TomTat.NgayVaoDang,
                VaoDangTaiChiBo = frmThongTinNhanVien_TomTat.VaoDangTaiChiBo,
                NguoiGioiThieu1 = frmThongTinNhanVien_TomTat.NguoiGioiThieu1,
                ChucVuNguoi1 = frmThongTinNhanVien_TomTat.ChucVuNguoi1,
                NguoiGioiThieu2 = frmThongTinNhanVien_TomTat.NguoiGioiThieu2,
                ChucVuNguoi2 = frmThongTinNhanVien_TomTat.ChucVuNguoi2,
                NgayChinhThuc = frmThongTinNhanVien_TomTat.NgayChinhThuc,
                ChinhThucTaiChiBo = frmThongTinNhanVien_TomTat.ChinhThucTaiChiBo,
                NgayTuyenDung = frmThongTinNhanVien_TomTat.NgayTuyenDung,
                CoQuanTuyenDung = frmThongTinNhanVien_TomTat.CoQuanTuyenDung,
                NgayVaoDoan = frmThongTinNhanVien_TomTat.NgayVaoDoan,
                ChiDoan = frmThongTinNhanVien_TomTat.ChiDoan,
                ThamGiaCTXH = frmThongTinNhanVien_TomTat.ThamGiaCTXH,
                NgayNhapNgu = frmThongTinNhanVien_TomTat.NgayNhapNgu,
                NgayXuatNgu = frmThongTinNhanVien_TomTat.NgayXuatNgu,
                GiaDinhLietSy = frmThongTinNhanVien_TomTat.GiaDinhLietSy,
                GiaDinhCoCongVoiCM = frmThongTinNhanVien_TomTat.GiaDinhCoCongVoiCM,
                SoCMND = frmThongTinNhanVien_TomTat.SoCMND,
                NgayMienSHD = frmThongTinNhanVien_TomTat.NgayMienSHD,
                ConSinhHoat = frmThongTinNhanVien_TomTat.ConSinhHoat,
                SoDienThoai = frmThongTinNhanVien_TomTat.SoDienThoai
            };

            // Update foreign keys
            UpdateForeignKeys(ref item);

            if (NhanVienRepository.Insert(item))
            {
                return true;
            }
            return false;
        }

        /// <summary>
        /// Update tomtat info for specified nhanvien
        /// </summary>
        /// <returns></returns>
        public bool ActionUpdate_TomTat()
        {
            var item = _nhanvien;
            item.HoTenKhaiSinh = txtHoTenKhaiSinh.Text;
            item.HoTenDangDung = frmThongTinNhanVien_TomTat.HoTenDangDung;
            item.NgaySinh = dtSinhNgay.Value;
            item.NoiSinh = frmThongTinNhanVien_TomTat.NoiSinh;
            item.QueQuan = frmThongTinNhanVien_TomTat.QueQuan;
            item.HoKhau = frmThongTinNhanVien_TomTat.HoKhau;
            item.TamTru = frmThongTinNhanVien_TomTat.TamTru;
            item.CongViecChinh = frmThongTinNhanVien_TomTat.CongViecChinh;
            item.NgayVaoDang = frmThongTinNhanVien_TomTat.NgayVaoDang;
            item.VaoDangTaiChiBo = frmThongTinNhanVien_TomTat.VaoDangTaiChiBo;
            item.NguoiGioiThieu1 = frmThongTinNhanVien_TomTat.NguoiGioiThieu1;
            item.ChucVuNguoi1 = frmThongTinNhanVien_TomTat.ChucVuNguoi1;
            item.NguoiGioiThieu2 = frmThongTinNhanVien_TomTat.NguoiGioiThieu2;
            item.ChucVuNguoi2 = frmThongTinNhanVien_TomTat.ChucVuNguoi2;
            item.NgayChinhThuc = frmThongTinNhanVien_TomTat.NgayChinhThuc;
            item.ChinhThucTaiChiBo = frmThongTinNhanVien_TomTat.ChinhThucTaiChiBo;
            item.NgayTuyenDung = frmThongTinNhanVien_TomTat.NgayTuyenDung;
            item.CoQuanTuyenDung = frmThongTinNhanVien_TomTat.CoQuanTuyenDung;
            item.NgayVaoDoan = frmThongTinNhanVien_TomTat.NgayVaoDoan;
            item.ChiDoan = frmThongTinNhanVien_TomTat.ChiDoan;
            item.ThamGiaCTXH = frmThongTinNhanVien_TomTat.ThamGiaCTXH;
            item.NgayNhapNgu = frmThongTinNhanVien_TomTat.NgayNhapNgu;
            item.NgayXuatNgu = frmThongTinNhanVien_TomTat.NgayXuatNgu;
            item.GiaDinhLietSy = frmThongTinNhanVien_TomTat.GiaDinhLietSy;
            item.GiaDinhCoCongVoiCM = frmThongTinNhanVien_TomTat.GiaDinhCoCongVoiCM;
            item.SoCMND = frmThongTinNhanVien_TomTat.SoCMND;
            item.NgayMienSHD = frmThongTinNhanVien_TomTat.NgayMienSHD;
            item.ConSinhHoat = frmThongTinNhanVien_TomTat.ConSinhHoat;
            item.SoDienThoai = frmThongTinNhanVien_TomTat.SoDienThoai;

            // Update foreign keys
            UpdateForeignKeys(ref item);

            if (NhanVienRepository.Save())
            {
                return true;
            }
            return false;
        }

        /// <summary>
        /// Add new dacdiemlichsu for specified nhanvien
        /// </summary>
        /// <returns></returns>
        public bool ActionAdd_DacDiemLS()
        {
            var item = new DacDiemLichSu
            {
                MaNhanVien = _nhanvien.MaNhanVien,
                NgayVaoDangLan2 = frmThongTinNhanVien_DacDiemLichSu.NgayVaoDangLan2,
                VaoDangLan2TaiChiBo = frmThongTinNhanVien_DacDiemLichSu.VaoDangLan2TaiChiBo,
                NguoiGioiThieu1 = frmThongTinNhanVien_DacDiemLichSu.NguoiGioiThieu1,
                ChucVuNguoi1 = frmThongTinNhanVien_DacDiemLichSu.ChucVuNguoi1,
                NguoiGioiThieu2 = frmThongTinNhanVien_DacDiemLichSu.NguoiGioiThieu2,
                ChucVuNguoi2 = frmThongTinNhanVien_DacDiemLichSu.ChucVuNguoi2,
                NgayChinhThucLan2 = frmThongTinNhanVien_DacDiemLichSu.NgayChinhThucLan2,
                ChinhThucLan2TaiChiBo = frmThongTinNhanVien_DacDiemLichSu.ChinhThucLan2TaiChiBo,
                NgayKhoiPhucDang = frmThongTinNhanVien_DacDiemLichSu.NgayKhoiPhucDang,
                KhoiPhucDangtaiChiBo = frmThongTinNhanVien_DacDiemLichSu.KhoiPhucDangtaiChiBo,
                BiBatTu = frmThongTinNhanVien_DacDiemLichSu.BiBatTu,
                LamViecChoCheDoCu = frmThongTinNhanVien_DacDiemLichSu.LamViecChoCheDoCu,
                DaDiNuocNgoai = frmThongTinNhanVien_DacDiemLichSu.DaDiNuocNgoai,
                QuanHeVoiToChucNN = frmThongTinNhanVien_DacDiemLichSu.QuanHeVoiToChucNN,
                ThanhNhanONuocNgoai = frmThongTinNhanVien_DacDiemLichSu.ThanhNhanONuocNgoai,
                NhanXetCuaDonVi = frmThongTinNhanVien_DacDiemLichSu.NhanXetCuaDonVi
            };

            if (DacDiemLichSuRepository.Insert(item))
            {
                return true;
            }
            return false;
        }

        /// <summary>
        /// Update dacdiemlichsu info for specified nhanvien
        /// </summary>
        /// <param name="item"></param>
        /// <returns></returns>
        public bool ActionUpdate_DacDiemLS(DacDiemLichSu item)
        {
            item.NgayVaoDangLan2 = frmThongTinNhanVien_DacDiemLichSu.NgayVaoDangLan2;
            item.VaoDangLan2TaiChiBo = frmThongTinNhanVien_DacDiemLichSu.VaoDangLan2TaiChiBo;
            item.NguoiGioiThieu1 = frmThongTinNhanVien_DacDiemLichSu.NguoiGioiThieu1;
            item.ChucVuNguoi1 = frmThongTinNhanVien_DacDiemLichSu.ChucVuNguoi1;
            item.NguoiGioiThieu2 = frmThongTinNhanVien_DacDiemLichSu.NguoiGioiThieu2;
            item.ChucVuNguoi2 = frmThongTinNhanVien_DacDiemLichSu.ChucVuNguoi2;
            item.NgayChinhThucLan2 = frmThongTinNhanVien_DacDiemLichSu.NgayChinhThucLan2;
            item.ChinhThucLan2TaiChiBo = frmThongTinNhanVien_DacDiemLichSu.ChinhThucLan2TaiChiBo;
            item.NgayKhoiPhucDang = frmThongTinNhanVien_DacDiemLichSu.NgayKhoiPhucDang;
            item.KhoiPhucDangtaiChiBo = frmThongTinNhanVien_DacDiemLichSu.KhoiPhucDangtaiChiBo;
            item.BiBatTu = frmThongTinNhanVien_DacDiemLichSu.BiBatTu;
            item.LamViecChoCheDoCu = frmThongTinNhanVien_DacDiemLichSu.LamViecChoCheDoCu;
            item.DaDiNuocNgoai = frmThongTinNhanVien_DacDiemLichSu.DaDiNuocNgoai;
            item.QuanHeVoiToChucNN = frmThongTinNhanVien_DacDiemLichSu.QuanHeVoiToChucNN;
            item.ThanhNhanONuocNgoai = frmThongTinNhanVien_DacDiemLichSu.ThanhNhanONuocNgoai;
            item.NhanXetCuaDonVi = frmThongTinNhanVien_DacDiemLichSu.NhanXetCuaDonVi;
            
            if (DacDiemLichSuRepository.Save())
            {
                return true;
            }
            return false;
        }
        #endregion       
    }
}