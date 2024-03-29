using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Security.Cryptography;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using DevComponents.DotNetBar;
using QuanLyHoSoCongChuc.BusinessObject;
using QuanLyHoSoCongChuc.Controller;
using System.Data.SqlClient;


namespace QuanLyHoSoCongChuc
{
    #region Using
    using QuanLyHoSoCongChuc.Report;
    using QuanLyHoSoCongChuc.Utils;
    using QuanLyHoSoCongChuc.UsersManager;
    using QuanLyHoSoCongChuc.UsersDiary;
    using QuanLyHoSoCongChuc.Search;
    using QuanLyHoSoCongChuc.DataManager;
    using QuanLyHoSoCongChuc.Danh_muc;
    using QuanLyHoSoCongChuc.OtherForms;
    using QuanLyHoSoCongChuc.NhanVienManager;
    using QuanLyHoSoCongChuc.Repositories;
    using QuanLyHoSoCongChuc.Models;
    #endregion

    public partial class FrmMain : Office2007Form
    {
        FrmDoiMatKhau m_FrmDoiMatKhau = null;
        NguoiDungCtrl m_NguoiDungCtrl = new NguoiDungCtrl();
        FrmThongTinLienHe ttTTLH = null;
        FrmKetNoiCSDL m_Connection = null;
        FrmDangNhap m_FrmDangNhap = new FrmDangNhap();

        public FrmMain()
        {
            InitializeComponent();
        }

        public void GetConnectionInfo(object sender, EventArgs e)
        {
            XMLProvider _provider = new XMLProvider();

            var eventType = (MyConnectionEvent)e;
            GlobalVars.g_strDataSource = eventType.DataSource;
            GlobalVars.g_strDataBaseName = eventType.DataBaseName;

            // Create config file
            if (bool.Parse(eventType.ConnStatus))
            {
                _provider.XMLWriter(GlobalVars.g_strPathConfig, eventType.DataSource, eventType.DataBaseName, eventType.ConnStatus);
            }
            else
            {
                _provider.XMLWriter(GlobalVars.g_strPathConfig, eventType.DataSource, eventType.DataBaseName, eventType.UserName, eventType.Password, eventType.ConnStatus);
            }

        }

        private void FrmMain2_Load(object sender, EventArgs e)
        {
            string ErrorText = "";

            if (!System.IO.File.Exists(GlobalVars.g_strPathConfig))
            {
                FrmKetNoiCSDL frm = new FrmKetNoiCSDL();
                frm.ShowDialog();
            }
            else
            {
                XMLProvider _provider = new XMLProvider();
                // Load config file to get infos that used to connect to DB
                _provider.GetConnectionInfo(ref ErrorText);
                if (ErrorText != "")
                {
                    MessageBoxEx.Show(ErrorText, "ERROR", System.Windows.Forms.MessageBoxButtons.OK, System.Windows.Forms.MessageBoxIcon.Error);
                    // Re-create connection infos
                    FrmKetNoiCSDL frm = new FrmKetNoiCSDL();
                    frm.ShowDialog();
                }
                else
                {
                    // Get connection string successfull, then open connection
                    var lstNguoiDung = NguoiDungRepository.SelectAll();
                    if (lstNguoiDung.Count > 0)
                    {
                        FrmDangNhap frm = new FrmDangNhap();
                        frm.Handler += ValidateLogin;
                        frm.ShowDialog();
                    }
                    else
                    {
                        GlobalVars.g_PerNhatKyItem = new PerNhatKyItem
                        {
                            ThoiDiemVao = DateTime.Now,
                            TenMayTram = GlobalVars.g_strTenMayTram,
                            LstChucNangSuDung = new List<PerChucNangSuDung>()
                        };

                        // Chua co nguoi dung nao trong he thong, nguoi dung dau tien se giu vai tro la admin
                        menDangNhap.Enabled = false;
                        menDangXuat.Enabled = false;
                        btnItemDangXuat.Enabled = false;
                        menDoiMatKhau.Enabled = false;
                        btnItemDoiMatKhau.Enabled = false;
                        menQuanLyChucNang.Enabled = true;
                        menQuanLyChucNangDuocSuDung.Enabled = true;
                        menQuanLyLoaiNguoiDung.Enabled = true;
                        menQuanLyNguoiDung.Enabled = true;
                    }
                }
            }

            GlobalVars.g_strPathCauhoiTimKiem = Application.StartupPath + "\\user_queries.xml";
        }

        //Dang nhap
        private void menDangNhap_Click(object sender, EventArgs e)
        {
            DangNhap();
        }
        
        private void DisableCtrls()
        {
            foreach (Control objControl in pnlMain.Controls)
            {
                if (objControl.GetType() == typeof(MenuStrip))
                {
                    foreach (ToolStripMenuItem _item in ((MenuStrip)objControl).Items)
                    {
                        DiableMenuItem(_item);
                    }
                }
                else if (objControl.GetType() == typeof(ToolStrip))
                {
                    foreach (var _item in ((ToolStrip)objControl).Items)
                    {
                        if (_item.GetType() == typeof(ToolStripButton))
                        {
                            DiableToolStripItem((ToolStripButton)_item);
                        }
                    }
                }
                else if (objControl.GetType() == typeof(ExplorerBar))
                {
                    foreach (ExplorerBarGroupItem _item in ((ExplorerBar)objControl).Groups)
                    {
                        DiableButtonItem(_item);
                    }
                }
            }       
        }

        private void DiableButtonItem(ExplorerBarGroupItem parentItem)
        {
            if (parentItem != null && parentItem.SubItems.Count > 0)
            {
                foreach (var _item in parentItem.SubItems)
                {
                    if (_item.GetType() == typeof(ButtonItem))
                    {
                        switch (((ButtonItem)_item).Name)
                        {
                            case "btnItemDangNhap":
                            case "btnItemThoat":
                                ((ButtonItem)_item).Enabled = true;
                                break;

                            default:
                                ((ButtonItem)_item).Enabled = false;
                                break;
                        }
                    }
                }
            }
        } 

        private void DiableToolStripItem(ToolStripButton parentItem)
        {
            parentItem.Enabled = false;
        } 

        private void DiableMenuItem(ToolStripMenuItem parentItem)
        {
            if (parentItem != null && parentItem.DropDownItems.Count > 0)
	        {
		        foreach (var _item in parentItem.DropDownItems)
		        {
                    if (_item.GetType() == typeof(ToolStripMenuItem))
                    {
                        DiableMenuItem((ToolStripMenuItem)_item);
                    }
		        }
	        }
            if (parentItem.Name.ToUpper().StartsWith("MENU"))
            {
                parentItem.Enabled = true;
            }
            else
            {
                switch (parentItem.Name)
                {
                    case "menDangNhap":
                    case "menThoat":
                    case "ebtnDangNhap":
                    case "ebtnThoat":
                    case "menThongTinLienHe":
                    case "menHuongDanSuDung":
                        parentItem.Enabled = true;
                        break;

                    default:
                        parentItem.Enabled = false;
                        break;
                }
            }
        } 

        private void EnableUser()
        {

        }
        private void toolDoiMatKhau_Click(object sender, EventArgs e)
        {
            ThayDoiMatKhau();
        }

        public void DoiMatKhau()
        {
        Cont:
            if (m_FrmDoiMatKhau.ShowDialog() == DialogResult.OK)
            {
                if (m_FrmDoiMatKhau.txtOldPassword.Text == "")
                {
                    m_FrmDoiMatKhau.lblOldPassError.Text = "Chưa nhập mật khẩu hiện tại!";
                    m_FrmDoiMatKhau.lblNewPassError.Text = "";
                    m_FrmDoiMatKhau.lblReNPassError.Text = "";
                    goto Cont;
                }

                if (m_FrmDoiMatKhau.txtNewPassword.Text == "")
                {
                    m_FrmDoiMatKhau.lblOldPassError.Text = "";
                    m_FrmDoiMatKhau.lblNewPassError.Text = "Chưa nhập mật khẩu mới!";
                    m_FrmDoiMatKhau.lblReNPassError.Text = "";
                    goto Cont;
                }

                if (m_FrmDoiMatKhau.txtReNPassword.Text == "")
                {
                    m_FrmDoiMatKhau.lblOldPassError.Text = "";
                    m_FrmDoiMatKhau.lblNewPassError.Text = "";
                    m_FrmDoiMatKhau.lblReNPassError.Text = "Chưa nhập xác nhận mật khẩu!";
                    goto Cont;
                }

                String username = m_FrmDangNhap.txtUsername.Text;
                String password = m_FrmDangNhap.txtPassword.Text;

                String m_OldPassword = m_FrmDoiMatKhau.txtOldPassword.Text;
                String m_NewPassword = m_FrmDoiMatKhau.txtNewPassword.Text;
                String m_ReNPassword = m_FrmDoiMatKhau.txtReNPassword.Text;

                if (password != m_OldPassword)
                {
                    m_FrmDoiMatKhau.lblOldPassError.Text = "Nhập sai mật khẩu cũ!";
                    m_FrmDoiMatKhau.lblNewPassError.Text = "";
                    m_FrmDoiMatKhau.lblReNPassError.Text = "";
                    goto Cont;
                }
                else if (m_NewPassword != m_ReNPassword)
                {
                    m_FrmDoiMatKhau.lblOldPassError.Text = "";
                    m_FrmDoiMatKhau.lblNewPassError.Text = "";
                    m_FrmDoiMatKhau.lblReNPassError.Text = "Nhập xác nhận không khớp!";
                    goto Cont;
                }
                else
                {
                    m_NguoiDungCtrl.ChangePassword(username, m_NewPassword);
                    MessageBoxEx.Show("Đổi mật khẩu thành công!", "PASSWORD CHANGED", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
            else
                return;
        }

        //Hien thi thanh cong cu
        private void ThanhCongCuToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MenuCheckThanhCongCu.Checked = !MenuCheckThanhCongCu.Checked;
            ThanhCongCu.Visible = MenuCheckThanhCongCu.Checked;
        }

        //Hien thi thanh trang thai
        private void MeNuThanhTrangThai_Click(object sender, EventArgs e)
        {
            MenuCheckThanhTrangThai.Checked = !MenuCheckThanhTrangThai.Checked;
            ThanhTrangThai.Visible = MenuCheckThanhTrangThai.Checked;
        }
        private void thanhchucnangToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MenuthanhchucnangToolStripMenuItem.Checked = !MenuthanhchucnangToolStripMenuItem.Checked;
            explorerBar.Visible = MenuthanhchucnangToolStripMenuItem.Checked;
        }

        private void menThoat_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có muốn thoát không?", "Quản lý hồ sơ công chức!", MessageBoxButtons.YesNo, MessageBoxIcon.Stop) == DialogResult.Yes)
            {
                this.Close();
            }
        }

        //Quan ly phong ban
        private void ttbtnDanhMucDonVi_Click(object sender, EventArgs e)
        {
            DanhMucDonVi();
        }

        //Dang xuat
        private void ebtnDangXuat_Click(object sender, EventArgs e)
        {
            DangXuat();
        }

        public void KetNoi()
        {
            MessageBoxEx.Show("Lỗi kết nối đến cơ sở dữ liệu! Xin vui lòng thiết lập lại kết nối...", "ERROR", System.Windows.Forms.MessageBoxButtons.OK, System.Windows.Forms.MessageBoxIcon.Error);

            if (m_Connection == null || m_Connection.IsDisposed)
                m_Connection = new FrmKetNoiCSDL();

            if (m_Connection.ShowDialog() == DialogResult.OK)
            {
                MessageBoxEx.Show("Đã thiết lập kết nối cho lần chạy đầu tiên.\nHãy khởi động lại chương trình để thực thi kết nối!", "SUCCESSED", MessageBoxButtons.OK, MessageBoxIcon.Information);
                this.Close();
            }
            else
                return;
        }
        private void toolPhucHoi_Click(object sender, EventArgs e)
        {
            if (restoreDialog.ShowDialog() == DialogResult.OK)
            {
                System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("USE master RESTORE DATABASE " + Utilities.DatabaseName + " FROM DISK = '" + restoreDialog.FileName.ToString() + "'");
                DataService data = new DataService();
                data.Load(cmd);
                MessageBoxEx.Show("Phục hồi dữ liệu thành công!", "RESTORE COMPLETED", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else
                return;
        }

        private void toolSaoLuu_Click(object sender, EventArgs e)
        {
            if (backupDialog.ShowDialog() == DialogResult.OK)
            {
                System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("BACKUP DATABASE " + Utilities.DatabaseName + " TO DISK = '" + backupDialog.FileName.ToString() + "'");
                DataService data = new DataService();
                data.Load(cmd);
                MessageBoxEx.Show("Sao lưu dữ liệu thành công!", "BACKUP COMPLETED", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else
                return;
        }

        private void menThongTinLienHe_Click(object sender, EventArgs e)
        {
            ttTTLH = new FrmThongTinLienHe();
            ttTTLH.ShowDialog();
        }

        private void menHuongDanSuDung_Click(object sender, EventArgs e)
        {
            var str = Application.StartupPath + @"\Helps.chm";
            System.Diagnostics.Process.Start(str);
        }

        public void BaoCaoLuong()
        {
            // tuansl added: update chuc nang su dung
            GlobalVars.UpdateChucNangSuDung(EnumChucNangHeThong.QUANLY_CHUCNANG_BAOCAO_LUONG);
            //------------------ E ------------------

            FrmBaoCaoLuong frm = new FrmBaoCaoLuong();
            frm.Show();
        }

        private void menBaoCaoLuong_Click(object sender, EventArgs e)
        {
            BaoCaoLuong();
        }

        public void DanhSachNangLuong()
        {
            // tuansl added: update chuc nang su dung
            GlobalVars.UpdateChucNangSuDung(EnumChucNangHeThong.QUANLY_CHUCNANG_BAOCAO_DSNANGLUONG);
            //------------------ E ------------------

            FrmDanhSachNangLuong frm = new FrmDanhSachNangLuong();
            frm.Show();
        }

        private void menDanhSachNangLuong_Click(object sender, EventArgs e)
        {
            DanhSachNangLuong();
        }

        public void DanhSachPhuCapThamNien()
        {
            // tuansl added: update chuc nang su dung
            GlobalVars.UpdateChucNangSuDung(EnumChucNangHeThong.QUANLY_CHUCNANG_BAOCAO_DSPHUCAPVUOTKHUNG);
            //------------------ E ------------------

            FrmDanhSachPhuCapVuotKhung frm = new FrmDanhSachPhuCapVuotKhung();
            frm.Show();
        }

        private void menDanhSachPhuCap_Click(object sender, EventArgs e)
        {
            DanhSachPhuCapThamNien();
        }

        public void DanhMucDonVi()
        {
            // tuansl added: update chuc nang su dung
            GlobalVars.UpdateChucNangSuDung(EnumChucNangHeThong.QUANLY_CHUCNANG_DANHMUCDONVI);
            //------------------ E ------------------

            FrmDanhMuc frm = new FrmDanhMuc(false);
            frm.ShowDialog();
        }

        private void menDanhMucDonVi_Click(object sender, EventArgs e)
        {
            DanhMucDonVi();
        }

        public void DanhMucHanhChinh()
        {
            // tuansl added: update chuc nang su dung
            GlobalVars.UpdateChucNangSuDung(EnumChucNangHeThong.QUANLY_CHUCNANG_DANHMUCHANHCHINH);
            //------------------ E ------------------

            FrmDanhMucHanhChinh frm = new FrmDanhMucHanhChinh();
            frm.ShowDialog();
        }

        private void menDanhMucHanhChinh_Click(object sender, EventArgs e)
        {
            DanhMucHanhChinh();
        }

        private void menQuanLyLoaiNguoiDung_Click(object sender, EventArgs e)
        {
            // tuansl added: update chuc nang su dung
            GlobalVars.UpdateChucNangSuDung(EnumChucNangHeThong.QUANLY_CHUCNANG_QUANTRINGUOIDUNG);
            //------------------ E ------------------

            FrmQuanLyLoaiNguoiDung frm = new FrmQuanLyLoaiNguoiDung();
            frm.ShowDialog();
        }

        private void menQuanLyChucNang_Click(object sender, EventArgs e)
        {
            // tuansl added: update chuc nang su dung
            GlobalVars.UpdateChucNangSuDung(EnumChucNangHeThong.QUANLY_CHUCNANG_QUANTRINGUOIDUNG);
            //------------------ E ------------------

            FrmQuanLyChucNang frm = new FrmQuanLyChucNang();
            frm.ShowDialog();
        }

        private void menQuanLyChucNangDuocSuDung_Click(object sender, EventArgs e)
        {
            // tuansl added: update chuc nang su dung
            GlobalVars.UpdateChucNangSuDung(EnumChucNangHeThong.QUANLY_CHUCNANG_QUANTRINGUOIDUNG);
            //------------------ E ------------------

            frmQuanLyChucNangNguoiDung frm = new frmQuanLyChucNangNguoiDung();
            frm.ShowDialog();
        }

        private void menQuanLyNguoiDung_Click(object sender, EventArgs e)
        {
            // tuansl added: update chuc nang su dung
            GlobalVars.UpdateChucNangSuDung(EnumChucNangHeThong.QUANLY_CHUCNANG_QUANTRINGUOIDUNG);
            //------------------ E ------------------

            FrmQuanLyNguoiDung frm = new FrmQuanLyNguoiDung();
            frm.ShowDialog();
        }

        private void menNhatKySuDung_Click(object sender, EventArgs e)
        {
            // tuansl added: update chuc nang su dung
            GlobalVars.UpdateChucNangSuDung(EnumChucNangHeThong.QUANLY_CHUCNANG_NHATKISUDUNGHETHONG);
            //------------------ E ------------------

            FrmNhatKySuDung frm = new FrmNhatKySuDung();
            frm.ShowDialog();
        }

        private void menSaoLuuDuLieu_Click(object sender, EventArgs e)
        {
            if (backupDialog.ShowDialog() == DialogResult.OK)
            {
                // tuansl added: update chuc nang su dung
                GlobalVars.UpdateChucNangSuDung(EnumChucNangHeThong.QUANLY_CHUCNANG_SAOLUUDULIEU);
                //------------------ E ------------------

                System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("BACKUP DATABASE " + Utilities.DatabaseName + " TO DISK = '" + backupDialog.FileName.ToString() + "'");
                DataService data = new DataService();
                data.Load(cmd);
                MessageBoxEx.Show("Sao lưu dữ liệu thành công!", "BACKUP COMPLETED", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else
                return;
        }

        private void menPhucHoiDuLieu_Click(object sender, EventArgs e)
        {
            if (restoreDialog.ShowDialog() == DialogResult.OK)
            {
                // tuansl added: update chuc nang su dung
                GlobalVars.UpdateChucNangSuDung(EnumChucNangHeThong.QUANLY_CHUCNANG_KHOIPHUCDULIEU);
                //------------------ E ------------------

                System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("USE master RESTORE DATABASE " + Utilities.DatabaseName + " FROM DISK = '" + restoreDialog.FileName.ToString() + "'");
                DataService data = new DataService();
                data.Load(cmd);
                MessageBoxEx.Show("Phục hồi dữ liệu thành công!", "RESTORE COMPLETED", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else
                return;
        }

        private void ToolStripMenuItemDangXuat_Click(object sender, EventArgs e)
        {
            DangXuat();
        }

        public void TimKiemNhanVien()
        {
            // tuansl added: update chuc nang su dung
            GlobalVars.UpdateChucNangSuDung(EnumChucNangHeThong.QUANLY_CHUCNANG_TIMKIEMNHANVIEN);
            //------------------ E ------------------

            FrmDanhMuc frm = new FrmDanhMuc(true);
            frm.Handler += ShowFrmTimKiem;
            frm.ShowDialog();
        }

        private void menTimKiemNhanVien_Click(object sender, EventArgs e)
        {
            TimKiemNhanVien();
        }

        public void ShowFrmTimKiem(object sender, EventArgs e)
        {
            var eventType = (MyEvent)e;
            string[] comp = eventType.Data.Split(new char[] { '#' });

            FrmTimKiem frm = new FrmTimKiem(comp[0], comp[1]);
            frm.ShowDialog();
        }

        public void DanhSachCBCCVC()
        {
            // tuansl added: update chuc nang su dung
            GlobalVars.UpdateChucNangSuDung(EnumChucNangHeThong.QUANLY_CHUCNANG_BAOCAO_DSCBCCVC);
            //------------------ E ------------------

            FrmDanhSachCBCCVC frm = new FrmDanhSachCBCCVC();
            frm.Show();
        }

        private void menDanhSachCBCCVC_Click(object sender, EventArgs e)
        {
            DanhSachCBCCVC();
        }

        public void DanhSachVeHuu()
        {
            // tuansl added: update chuc nang su dung
            GlobalVars.UpdateChucNangSuDung(EnumChucNangHeThong.QUANLY_CHUCNANG_BAOCAO_DSNGHIHUU);
            //------------------ E ------------------

            FrmDanhSachNghiHuu frm = new FrmDanhSachNghiHuu();
            frm.Show();
        }

        private void menDanhSachDuTuoiVeHuu_Click(object sender, EventArgs e)
        {
            DanhSachVeHuu();
        }

        public void MoCauHoiTimKiem()
        {
            // tuansl added: update chuc nang su dung
            GlobalVars.UpdateChucNangSuDung(EnumChucNangHeThong.QUANLY_CHUCNANG_MOCAUHOITIMKIEM);
            //------------------ E ------------------

            FrmMoCauHoi frm = new FrmMoCauHoi();
            frm.Handler += GetCauHoi;
            frm.ShowDialog();
        }

        private void menCacCauHoiTimKiem_Click(object sender, EventArgs e)
        {
            MoCauHoiTimKiem();
        }

        public void GetCauHoi(object sender, EventArgs e)
        {
            var dataType = (MyQueryEvent)e;
            var cauhoi = (CauHoiNguoiDung)dataType.Data;

            FrmTimKiem frm = new FrmTimKiem(cauhoi);
            frm.MdiParent = this;
            frm.Show(dockPanelMain);
        }

        public void DanhSachCanBoQuaCacThoiKy()
        {
            // tuansl added: update chuc nang su dung
            GlobalVars.UpdateChucNangSuDung(EnumChucNangHeThong.QUANLY_CHUCNANG_DSCANBOQUACACTHOIKI);
            //------------------ E ------------------

            FrmDanhMuc frm = new FrmDanhMuc(true);
            frm.Handler += GetCanBoQuaCacThoiKy;
            frm.ShowDialog();
        }

        private void menDSCanBoQuaCacThoiKi_Click(object sender, EventArgs e)
        {
            DanhSachCanBoQuaCacThoiKy();
        }

        public void GetCanBoQuaCacThoiKy(object sender, EventArgs e)
        {
            var eventType = (MyEvent)e;
            string[] comp = eventType.Data.Split(new char[] { '#' });

            FrmDanhSachCanBoQuaCacThoiKy frm = new FrmDanhSachCanBoQuaCacThoiKy(comp[0]);
            frm.ShowDialog();
        }

        private void menPhieuBaoChuyenNganhLuong_Click(object sender, EventArgs e)
        {
            // tuansl added: update chuc nang su dung
            GlobalVars.UpdateChucNangSuDung(EnumChucNangHeThong.QUANLY_CHUCNANG_PHIEUBAO_CHUYENNGACH);
            //------------------ E ------------------

            FrmPhieuBaoChuyenNgach frm = new FrmPhieuBaoChuyenNgach();
            frm.ShowDialog();
        }

        private void menPhieuBaoPhuCap_Click(object sender, EventArgs e)
        {
            // tuansl added: update chuc nang su dung
            GlobalVars.UpdateChucNangSuDung(EnumChucNangHeThong.QUANLY_CHUCNANG_PHIEUBAO_PHUCAP);
            //------------------ E ------------------

            FrmPhieuBaoPhuCap frm = new FrmPhieuBaoPhuCap();
            frm.ShowDialog();
        }

        private void menPhieuBaoChuyenDonVi_Click(object sender, EventArgs e)
        {
            // tuansl added: update chuc nang su dung
            GlobalVars.UpdateChucNangSuDung(EnumChucNangHeThong.QUANLY_CHUCNANG_PHIEUBAO_CHUYENDV);
            //------------------ E ------------------

            FrmPhieuBaoChuyenDonVi frm = new FrmPhieuBaoChuyenDonVi();
            frm.ShowDialog();
        }

        private void menPhieuBaoRaKhoiDonVi_Click(object sender, EventArgs e)
        {
            // tuansl added: update chuc nang su dung
            GlobalVars.UpdateChucNangSuDung(EnumChucNangHeThong.QUANLY_CHUCNANG_PHIEUBAO_BODV);
            //------------------ E ------------------

            FrmPhieuBaoBoDonVi frm = new FrmPhieuBaoBoDonVi();
            frm.ShowDialog();
        }

        private void menPhieuBaoTuTran_Click(object sender, EventArgs e)
        {
            // tuansl added: update chuc nang su dung
            GlobalVars.UpdateChucNangSuDung(EnumChucNangHeThong.QUANLY_CHUCNANG_PHIEUBAO_TUTRAN);
            //------------------ E ------------------

            FrmPhieuBaoTuTran frm = new FrmPhieuBaoTuTran();
            frm.ShowDialog();
        }

        private void menPhieuBaoChuyenChinhThuc_Click(object sender, EventArgs e)
        {
            // tuansl added: update chuc nang su dung
            GlobalVars.UpdateChucNangSuDung(EnumChucNangHeThong.QUANLY_CHUCNANG_PHIEUBAO_CHUYENCHINHTHUC);
            //------------------ E ------------------

            FrmPhieuBaoChuyenChinhThuc frm = new FrmPhieuBaoChuyenChinhThuc();
            frm.ShowDialog();
        }

        private void quanLyDanTocToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmQuanLyDanToc frm = new FrmQuanLyDanToc();
            frm.ShowDialog();
        }

        private void quanLyChuyeMonNghiepVuToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmQuanLyBangChuyenMonNghiepVu frm = new FrmQuanLyBangChuyenMonNghiepVu();
            frm.ShowDialog();
        }

        private void quanLyBangLyLuanChinhTriToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmQuanLyBangLyLuanChinhTri frm = new FrmQuanLyBangLyLuanChinhTri();
            frm.ShowDialog();
        }

        public void HoSoNhanVien()
        {
            // tuansl added: update chuc nang su dung
            GlobalVars.UpdateChucNangSuDung(EnumChucNangHeThong.QUANLY_CHUCNANG_HOSONHANVIEN);
            //------------------ E ------------------

            FrmDanhMuc frm = new FrmDanhMuc(true);
            frm.Handler += GetDonVi;
            frm.ShowDialog();
        }

        private void ttbtnQuanLyNhanVien_Click(object sender, EventArgs e)
        {
            HoSoNhanVien();
        }

        public void GetDonVi(object sender, EventArgs e)
        {
            var eventType = (MyEvent)e;
            string[] comp = eventType.Data.Split(new char[] { '#' });

            FrmQuanLyNhanVien frm = new FrmQuanLyNhanVien(comp[0], comp[1]);
            frm.ShowDialog();
        }

        public void TimKiemCanBo()
        {
            // tuansl added: update chuc nang su dung
            GlobalVars.UpdateChucNangSuDung(EnumChucNangHeThong.QUANLY_CHUCNANG_TIMKIEMCB);
            //------------------ E ------------------

            FrmTimCanBoQuaCacThoiKi frm = new FrmTimCanBoQuaCacThoiKi();
            frm.ShowDialog();
        }

        private void menTimKiemCanBo_Click(object sender, EventArgs e)
        {
            TimKiemCanBo();
        }

        private void menNhanVienChuyenDonVi_Click(object sender, EventArgs e)
        {
            // tuansl added: update chuc nang su dung
            GlobalVars.UpdateChucNangSuDung(EnumChucNangHeThong.QUANLY_CHUCNANG_TIMKIEMNHANVIEN);
            //------------------ E ------------------

            FrmDanhSachCanBoQuaCacThoiKy frm = new FrmDanhSachCanBoQuaCacThoiKy(EnumLoaiCanBoQuaCacThoiKi.CHUYEN_DONVI);
            frm.ShowDialog();
        }

        private void menNhanVienBoDonVi_Click(object sender, EventArgs e)
        {
            // tuansl added: update chuc nang su dung
            GlobalVars.UpdateChucNangSuDung(EnumChucNangHeThong.QUANLY_CHUCNANG_TIMKIEMNHANVIEN);
            //------------------ E ------------------

            FrmDanhSachCanBoQuaCacThoiKy frm = new FrmDanhSachCanBoQuaCacThoiKy(EnumLoaiCanBoQuaCacThoiKi.BO_DONVI);
            frm.ShowDialog();
        }

        private void menNhanVienTuTran_Click(object sender, EventArgs e)
        {
            // tuansl added: update chuc nang su dung
            GlobalVars.UpdateChucNangSuDung(EnumChucNangHeThong.QUANLY_CHUCNANG_TIMKIEMNHANVIEN);
            //------------------ E ------------------

            FrmDanhSachCanBoQuaCacThoiKy frm = new FrmDanhSachCanBoQuaCacThoiKy(EnumLoaiCanBoQuaCacThoiKi.TUTRAN);
            frm.ShowDialog();
        }

        private void menInDSCanBoQuaCacThoiKi_Click(object sender, EventArgs e)
        {
            // tuansl added: update chuc nang su dung
            GlobalVars.UpdateChucNangSuDung(EnumChucNangHeThong.QUANLY_CHUCNANG_INDSCB);
            //------------------ E ------------------
        }

        private void FrmMain2_FormClosed(object sender, FormClosedEventArgs e)
        {
            // Hide waiting form
            GlobalVars.PosLoading();
            //------- E ---------
        }

        private void FrmMain2_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (GlobalVars.g_CurrentUser != null)
            {
                // Show waiting form
                GlobalVars.PreLoading();
                //------- E ---------
                DangXuat();
            }
        }

        public void InsetNewNhatkyItem(NhatKy nhatky)
        {
            var nhatkyitem = new NhatKyItem
            {
                MaNhatKy = nhatky.MaNhatKy,
                ThoiDiemVao = GlobalVars.g_PerNhatKyItem.ThoiDiemVao,
                ThoiDiemRa = DateTime.Now,
                TenMayTram = GlobalVars.g_PerNhatKyItem.TenMayTram
            };
            // Insert new nhat ky item
            if (NhatKyItemRepository.Insert(nhatkyitem))
            {
                foreach (var item in GlobalVars.g_PerNhatKyItem.LstChucNangSuDung)
                {
                    var chucnangsudung = new ChucNangSuDung
                    {
                        MaNhatKyItem = nhatkyitem.MaNhatKyItem,
                        TenChucNang = item.TenChucNang,
                        SoLan = item.SoLan
                    };
                    ChucNangSuDungRepository.Insert(chucnangsudung);
                }
            }       
        }

        // tuansl added: 
        public void DangXuat()
        {
            // Show waiting form
            GlobalVars.PreLoading();
            //------- E ---------

            DisableCtrls();
            // When user logout, update info of that using app
            var lstItem = NhatKyRepository.SelectByMaNguoiDung(GlobalVars.g_CurrentUser.MaNguoiDung);
            if (lstItem.Count > 0)
            {
                var nhatky = lstItem[0];
                // Open connection
                DataContext.Instance.Connection.Open();
                // Define a transaction for the operations
                using (var transaction = DataContext.Instance.Connection.BeginTransaction())
                {
                    InsetNewNhatkyItem(nhatky);
                    // Mark the transaction as complete
                    transaction.Commit();
                    DataContext.Instance.Connection.Close();
                }
            }
            else
            {
                // Open connection
                DataContext.Instance.Connection.Open();
                // Define a transaction for the operations
                using (var transaction = DataContext.Instance.Connection.BeginTransaction())
                {
                    var nhatky = new NhatKy
                    {
                        MaNguoiDung = GlobalVars.g_CurrentUser.MaNguoiDung
                    };
                    if (NhatKyRepository.Insert(nhatky))
                    {
                        InsetNewNhatkyItem(nhatky);
                    }
                    // Mark the transaction as complete
                    transaction.Commit();
                    DataContext.Instance.Connection.Close();
                }
            }

            menDangNhap.Enabled = true;
            menDangXuat.Enabled = false;
            btnItemDangNhap.Enabled = true;
            btnItemDangXuat.Enabled = false;
            GlobalVars.g_CurrentUser = null;

            // Hide waiting form
            GlobalVars.PosLoading();
            //------- E ---------
        }

        // tuansl added: mapping name of controls with specifed enums so that enable or disable some functions for each users
        public Dictionary<string, EnumChucNangHeThong> InitFuncsMapping()
        {
            var dict = new Dictionary<string, EnumChucNangHeThong>();

            dict.Add("menQuanLyLoaiNguoiDung", EnumChucNangHeThong.QUANLY_CHUCNANG_QUANTRINGUOIDUNG);
            dict.Add("menQuanLyChucNangDuocSuDung", EnumChucNangHeThong.QUANLY_CHUCNANG_QUANTRINGUOIDUNG);
            dict.Add("menQuanLyNguoiDung", EnumChucNangHeThong.QUANLY_CHUCNANG_QUANTRINGUOIDUNG);

            dict.Add("menDoiMatKhau", EnumChucNangHeThong.QUANLY_CHUCNANG_THAYDOIMATKHAU);
            dict.Add("btnItemDoiMatKhau", EnumChucNangHeThong.QUANLY_CHUCNANG_THAYDOIMATKHAU);

            dict.Add("menNhatKySuDung", EnumChucNangHeThong.QUANLY_CHUCNANG_NHATKISUDUNGHETHONG);
            dict.Add("menSaoLuuDuLieu", EnumChucNangHeThong.QUANLY_CHUCNANG_SAOLUUDULIEU);
            dict.Add("menPhucHoiDuLieu", EnumChucNangHeThong.QUANLY_CHUCNANG_KHOIPHUCDULIEU);

            dict.Add("menDanhMucDonVi", EnumChucNangHeThong.QUANLY_CHUCNANG_DANHMUCDONVI);
            dict.Add("ttbtnDanhMucDonVi", EnumChucNangHeThong.QUANLY_CHUCNANG_DANHMUCDONVI);
            dict.Add("btnItemDanhMucDonVi", EnumChucNangHeThong.QUANLY_CHUCNANG_DANHMUCDONVI);

            dict.Add("menDanhMucHanhChinh", EnumChucNangHeThong.QUANLY_CHUCNANG_DANHMUCHANHCHINH);
            dict.Add("ttbtnDanhMucHanhChinh", EnumChucNangHeThong.QUANLY_CHUCNANG_DANHMUCHANHCHINH);
            dict.Add("btnItemDanhMucHanhChinh", EnumChucNangHeThong.QUANLY_CHUCNANG_DANHMUCHANHCHINH);

            dict.Add("menBaoCaoLuong", EnumChucNangHeThong.QUANLY_CHUCNANG_BAOCAO_LUONG);
            dict.Add("btnItemBaoCaoLuong", EnumChucNangHeThong.QUANLY_CHUCNANG_BAOCAO_LUONG);

            dict.Add("menDanhSachNangLuong", EnumChucNangHeThong.QUANLY_CHUCNANG_BAOCAO_DSNANGLUONG);
            dict.Add("btnItemDanhSachNangLuong", EnumChucNangHeThong.QUANLY_CHUCNANG_BAOCAO_DSNANGLUONG);

            dict.Add("menDanhSachPhuCap", EnumChucNangHeThong.QUANLY_CHUCNANG_BAOCAO_DSPHUCAPVUOTKHUNG);
            dict.Add("btnItemDanhSachPhuCap", EnumChucNangHeThong.QUANLY_CHUCNANG_BAOCAO_DSPHUCAPVUOTKHUNG);

            dict.Add("menDanhSachCBCCVC", EnumChucNangHeThong.QUANLY_CHUCNANG_BAOCAO_DSCBCCVC);
            dict.Add("btnItemDanhSachCBCCVC", EnumChucNangHeThong.QUANLY_CHUCNANG_BAOCAO_DSCBCCVC);

            dict.Add("menDanhSachDuTuoiVeHuu", EnumChucNangHeThong.QUANLY_CHUCNANG_BAOCAO_DSNGHIHUU);
            dict.Add("btnItemDanhSachNghiHuu", EnumChucNangHeThong.QUANLY_CHUCNANG_BAOCAO_DSNGHIHUU);

            dict.Add("menTimKiemNhanVien", EnumChucNangHeThong.QUANLY_CHUCNANG_TIMKIEMNHANVIEN);
            dict.Add("btnItemTimKiemNhanVien", EnumChucNangHeThong.QUANLY_CHUCNANG_TIMKIEMNHANVIEN);
            dict.Add("menNhanVienChuyenDonVi", EnumChucNangHeThong.QUANLY_CHUCNANG_TIMKIEMNHANVIEN);
            dict.Add("menNhanVienBoDonVi", EnumChucNangHeThong.QUANLY_CHUCNANG_TIMKIEMNHANVIEN);
            dict.Add("menNhanVienTuTran", EnumChucNangHeThong.QUANLY_CHUCNANG_TIMKIEMNHANVIEN);

            dict.Add("menCacCauHoiTimKiem", EnumChucNangHeThong.QUANLY_CHUCNANG_MOCAUHOITIMKIEM);

            dict.Add("ttbtnQuanLyNhanVien", EnumChucNangHeThong.QUANLY_CHUCNANG_HOSONHANVIEN);
            dict.Add("btnItemNhanVien", EnumChucNangHeThong.QUANLY_CHUCNANG_HOSONHANVIEN);

            dict.Add("menDSCanBoQuaCacThoiKi", EnumChucNangHeThong.QUANLY_CHUCNANG_DSCANBOQUACACTHOIKI);
            dict.Add("ttbtnCanBoQuaCacThoiKi", EnumChucNangHeThong.QUANLY_CHUCNANG_DSCANBOQUACACTHOIKI);
            dict.Add("btnItemCanBoQuaCacThoiKy", EnumChucNangHeThong.QUANLY_CHUCNANG_DSCANBOQUACACTHOIKI);

            dict.Add("menTimKiemCanBo", EnumChucNangHeThong.QUANLY_CHUCNANG_TIMKIEMCB);
            dict.Add("btnItemTimKiemCanBo", EnumChucNangHeThong.QUANLY_CHUCNANG_TIMKIEMCB);

            dict.Add("menPhieuBaoChuyenNganhLuong", EnumChucNangHeThong.QUANLY_CHUCNANG_PHIEUBAO_CHUYENNGACH);
            dict.Add("menPhieuBaoPhuCap", EnumChucNangHeThong.QUANLY_CHUCNANG_PHIEUBAO_PHUCAP);
            dict.Add("menPhieuBaoChuyenDonVi", EnumChucNangHeThong.QUANLY_CHUCNANG_PHIEUBAO_CHUYENDV);
            dict.Add("menPhieuBaoRaKhoiDonVi", EnumChucNangHeThong.QUANLY_CHUCNANG_PHIEUBAO_BODV);
            dict.Add("menPhieuBaoTuTran", EnumChucNangHeThong.QUANLY_CHUCNANG_PHIEUBAO_TUTRAN);
            dict.Add("menPhieuBaoChuyenChinhThuc", EnumChucNangHeThong.QUANLY_CHUCNANG_PHIEUBAO_CHUYENCHINHTHUC);

            return dict;
        }

        public List<EnumChucNangHeThong> InitFuncsAllowUsing()
        {
            var lstAllFuncs = ChucNangRepository.SelectAll();
            var lstFuncsBelongToUser = LoaiNguoiDung_ChucNangRepository.SelectByMaQuyen(GlobalVars.g_CurrentUser.LoaiNguoiDung.MaQuyen);
            var lst = new List<EnumChucNangHeThong>();
            foreach (var item in lstAllFuncs)
            {
                foreach (var item2 in lstFuncsBelongToUser)
                {
                    if (item.MaChucNang == item2.MaChucNang)
                    {
                        lst.Add(GlobalVars.RetrieveFuncsNotAllowUsing(item.TenChucNang));
                        break;
                    }
                }
            }
            return lst;
        }

        private void DisableCtrls(string shortcut)
        {
            foreach (Control objControl in pnlMain.Controls)
            {
                if (objControl.GetType() == typeof(MenuStrip))
                {
                    foreach (ToolStripMenuItem _item in ((MenuStrip)objControl).Items)
                    {
                        DiableMenuItem(_item, shortcut);
                    }
                }
                else if (objControl.GetType() == typeof(ToolStrip))
                {
                    foreach (var _item in ((ToolStrip)objControl).Items)
                    {
                        if (_item.GetType() == typeof(ToolStripButton))
                        {
                            DiableToolStripItem((ToolStripButton)_item, shortcut);
                        }
                    }
                }
                else if (objControl.GetType() == typeof(ExplorerBar))
                {
                    foreach (ExplorerBarGroupItem _item in ((ExplorerBar)objControl).Groups)
                    {
                        DiableButtonItem(_item, shortcut);
                    }
                }
            }
        }

        private void DiableButtonItem(ExplorerBarGroupItem parentItem, string shortcut)
        {
            if (parentItem != null && parentItem.SubItems.Count > 0)
            {
                foreach (var _item in parentItem.SubItems)
                {
                    if (_item.GetType() == typeof(ButtonItem))
                    {
                        if (shortcut == ((ButtonItem)_item).Name)
                        {
                            ((ButtonItem)_item).Enabled = true;
                            return;
                        }
                    }
                }
            }
        }

        private void DiableToolStripItem(ToolStripButton parentItem, string shortcut)
        {
            if (parentItem.Name == shortcut)
            {
                parentItem.Enabled = true;
            }
        }

        private void DiableMenuItem(ToolStripMenuItem parentItem, string shortcut)
        {
            if (parentItem != null)
            {
                foreach (var _item in parentItem.DropDownItems)
                {
                    if (_item.GetType() == typeof(ToolStripMenuItem))
                    {
                        DiableMenuItem((ToolStripMenuItem)_item, shortcut);
                    }
                }
                if (parentItem.Name == shortcut)
                {
                    parentItem.Enabled = true;
                }
            }
        } 

        /// <summary>
        /// Disable some functions that user not allow using
        /// </summary>
        public void EnableFuncAllowUsing(string ctrlName)
        {
            DisableCtrls(ctrlName);
        }

        public void ValidateLogin(object sender, EventArgs e)
        {
            // Show waiting form
            GlobalVars.PreLoading();
            //------- E ---------

            bool success = true;
            string infoText = "";
            var eventType = (MyEvent)e;
            string[] comp = eventType.Data.Split(new char[] { '#' });

            string username = comp[0].Trim();
            string password = comp[1].Trim();
            string PasswordEnc = Encryption.Encrypt(password);

            GlobalVars.g_CurrentUser = NguoiDungRepository.SelectByTenDangNhap(username);

            if (GlobalVars.g_CurrentUser == null)
            {
                success = false;
                infoText = "Người dùng này chưa có trong hệ thống";
            }
            else
            {
                GlobalVars.g_CurrentUser = NguoiDungRepository.SelectByUserNameAndPassword(username, PasswordEnc);
                if (GlobalVars.g_CurrentUser == null)
                {
                    success = false;
                    infoText = "Bạn đã nhập sai mật khẩu";
                }
                else
                {
                    infoText = "Chào bạn  " + GlobalVars.g_CurrentUser.TenDangNhap + "  vào hệ thống !";
                }
            }

            if (!success)
            {
                // Hide waiting form
                GlobalVars.PosLoading();
                //------- E ---------

                MessageBox.Show(infoText, "Log In", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                // Re-login
                FrmDangNhap frm = new FrmDangNhap();
                frm.Handler += ValidateLogin;
                frm.ShowDialog();
            }
            else
            {
                // tuansl added: get current user
                GlobalVars.g_PerNhatKyItem = new PerNhatKyItem
                {
                    ThoiDiemVao = DateTime.Now,
                    TenMayTram = GlobalVars.g_strTenMayTram,
                    LstChucNangSuDung = new List<PerChucNangSuDung>()
                };
                // Mapping name of controls with specifed enums
                var dictFucns = InitFuncsMapping();
                // Store list of functionalities that user allow using
                var funcsAllowUsing = InitFuncsAllowUsing();

                // Disable some functions that user not allow using
                foreach (var item in dictFucns)
                {
                    foreach (var item2 in funcsAllowUsing)
                    {
                        if (item.Value == item2)
                        {
                            EnableFuncAllowUsing(item.Key);
                            break;
                        }
                    }
                }

                menDangNhap.Enabled = false;
                menDangXuat.Enabled = true;
                btnItemDangNhap.Enabled = false;
                btnItemDangXuat.Enabled = true;
                lblTenNguoiDung.Text = GlobalVars.g_CurrentUser.TenNguoiDung;
                // Hide waiting form
                GlobalVars.PosLoading();
                //------- E ---------

                this.Show();
            }
            
        }

        public void DangNhap()
        {
            FrmDangNhap frm = new FrmDangNhap();
            frm.Handler += ValidateLogin;
            frm.ShowDialog();
        }

        private void menDangXuat_Click(object sender, EventArgs e)
        {
            DangXuat();
        }

        private void ttbtnDanhMucHanhChinh_Click(object sender, EventArgs e)
        {
            DanhMucHanhChinh();
        }

        private void ttbtnCanBoQuaCacThoiKi_Click(object sender, EventArgs e)
        {
            DanhSachCanBoQuaCacThoiKy();
        }

        public void ThayDoiMatKhau()
        {
            FrmDoiMatKhau frm = new FrmDoiMatKhau();
            frm.ShowDialog();
        }
        private void btnItemDoiMatKhau_Click(object sender, EventArgs e)
        {
            ThayDoiMatKhau();
        }

        private void btnItemNhanVien_Click(object sender, EventArgs e)
        {
            HoSoNhanVien();
        }

        private void btnItemDanhMucDonVi_Click(object sender, EventArgs e)
        {
            DanhMucDonVi();
        }

        private void btnItemCanBoQuaCacThoiKy_Click(object sender, EventArgs e)
        {
            DanhSachCanBoQuaCacThoiKy();
        }

        private void btnItemTimKiemNhanVien_Click(object sender, EventArgs e)
        {
            TimKiemNhanVien();
        }

        private void btnItemTimKiemCanBo_Click(object sender, EventArgs e)
        {
            TimKiemCanBo();
        }

        private void btnItemBaoCaoLuong_Click(object sender, EventArgs e)
        {
            BaoCaoLuong();
        }

        private void btnItemDanhSachCBCCVC_Click(object sender, EventArgs e)
        {
            DanhSachCBCCVC();
        }

        private void btnItemDanhSachNangLuong_Click(object sender, EventArgs e)
        {
            DanhSachNangLuong();
        }

        private void btnItemDanhSachNghiHuu_Click(object sender, EventArgs e)
        {
            DanhSachVeHuu();
        }

        private void btnItemDanhSachPhuCap_Click(object sender, EventArgs e)
        {
            DanhSachPhuCapThamNien();
        }

        private void btnItemDanhMucHanhChinh_Click(object sender, EventArgs e)
        {
            DanhMucHanhChinh();
        }

        private void ebtnDangNhap_Click(object sender, EventArgs e)
        {
            DangNhap();
        }

        private void ebtnThoat_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có muốn thoát không?", "Quản lý hồ sơ công chức!", MessageBoxButtons.YesNo, MessageBoxIcon.Stop) == DialogResult.Yes)
            {
                this.Close();
            }
        }

        private void FrmMain_Shown(object sender, EventArgs e)
        {
            
        }

        private void inThẻNhânViênToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmInThe frm = new FrmInThe();
            frm.Show();
        }
    }
}