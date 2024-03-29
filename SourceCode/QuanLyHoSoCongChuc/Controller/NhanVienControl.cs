using System;
using System.Text;
using System.Data;
using System.Collections.Generic;
using System.Windows.Forms;
using System.Data.SqlClient;
using QuanLyHoSoCongChuc.DataLayer;
using QuanLyHoSoCongChuc.BusinessObject;

namespace QuanLyHoSoCongChuc.Controller
{
    public class NhanVienControl
    {
        NhanVienData m_NhanVienData = new NhanVienData();
        DanTocControl m_DanTocControl = new DanTocControl();
        TonGiaoControl m_TonGiaoCtrl = new TonGiaoControl();
        GioiTinhCotrol m_GioiTinhCotrol = new GioiTinhCotrol();
        TinhTrangHonNhanControl m_TinhTrangHonNhanControl = new TinhTrangHonNhanControl();
        ThanhPhanXuatThanControl m_ThanhPhanXuatThanConTrol = new ThanhPhanXuatThanControl();
        DienUuTienGiaDinhControl m_DienUuTienGiaDinhControl = new DienUuTienGiaDinhControl();
        DienUuTienBanThanControl m_DienUuTienBanThanControl = new DienUuTienBanThanControl();
        DonViControl m_DonViControl = new DonViControl();
        HinhThucTuyenDungControl m_HinhThucTuyenDungControl = new HinhThucTuyenDungControl();
        CongViecControl m_CongViecControl = new CongViecControl();
        LoaiCanBoControl m_LoaiCanBoControl = new LoaiCanBoControl();
        LoaiNghiBaoHiemXaHoiControl m_LoaiNghiBaoHiemXaHoiControl = new LoaiNghiBaoHiemXaHoiControl();
        ChucVuControl m_ChucVuControl = new ChucVuControl();
        DoanVienControl m_DoanVienControl = new DoanVienControl();
        TrinhDoHocVanControl m_TrinhDoHocVan = new TrinhDoHocVanControl();
        BangChuyenMonNghiepVuControl m_BangChuyenMonNghiepVuControl = new BangChuyenMonNghiepVuControl();
        BangLyLuanChinhTriControl m_BangLyLuanChinhTriControl = new BangLyLuanChinhTriControl();
        DTBDControl m_DTBDControl = new DTBDControl();
        TrinhDoQuanLyNhaNuocControl m_TrinhDoQuanLyNhaNuocControl = new TrinhDoQuanLyNhaNuocControl();
        TrinhDoTinHocControl m_TrinhDoTinHocControl = new TrinhDoTinHocControl();
        TrinhDoNgoaiNguControl m_TrinhDoNgoaiNguControl = new TrinhDoNgoaiNguControl();
        NgachCongChucControl m_NgachCongChucControl = new NgachCongChucControl();
        Huong85Control m_Huong85Control = new Huong85Control();

        public void HienThiComboBoxColumnNhanVien(DataGridViewComboBoxColumn cmb)
        {
            cmb.DataSource = m_NhanVienData.LayDanhSachNhanVien();
            cmb.DisplayMember = "HoTenKhaiSinh";
            cmb.ValueMember = "MaNhanVien";
            cmb.DataPropertyName = "MaNV";
            cmb.HeaderText = "Nhân Viên";
        }
        public void HienThiComboBox(ComboBox cmb)
        {
            cmb.DataSource = m_NhanVienData.LayDanhSachNhanVien();
            cmb.DisplayMember = "HoTenKhaiSinh";
            cmb.ValueMember = "MaNhanVien";
        }


        public void HienThiComBoBox(ComboBox cmbMaDanToc, ComboBox cmbMaTonGiao, ComboBox cbxGioiTinh, ComboBox cmbMaTinhTrangHonNhan, ComboBox cbxThanhPhanXuatThan, ComboBox cbxDienUuTienGiaDinh, ComboBox cbxDienUuTienCuaBanThan, ComboBox cbxCoQuanTuyenDung, ComboBox cbxHinhThucTuyenDung, ComboBox cbxCongViecDuocGiao, ComboBox cbxLoaiCanBo, ComboBox cbxDangNghiBHXH, ComboBox cbxChucVuHienTai, ComboBox cbxDoanVien, ComboBox cbxDTBD, ComboBox cbxTrinhDoHocVan, ComboBox cbxBangChuyenMonNghiepVuCaoNhat, ComboBox cbxTrinhDoLLCT, ComboBox cbxTrinhDoQLNN, ComboBox cbxTrinhDoTinHoc, ComboBox cbxTrinhDoNgoaiNgu, ComboBox cbxNgachCongChuc, ComboBox cbxHuong85)
        {
            m_DanTocControl.HienThiComboBox(cmbMaDanToc);
            m_TonGiaoCtrl.HienThiComboBox(cmbMaTonGiao);
            m_GioiTinhCotrol.HienThiComboBox(cbxGioiTinh);
            m_TinhTrangHonNhanControl.HienThiComboBox(cmbMaTinhTrangHonNhan);
            m_ThanhPhanXuatThanConTrol.HienThiComboBox(cbxThanhPhanXuatThan);
            m_DienUuTienGiaDinhControl.HienThiComboBox(cbxDienUuTienGiaDinh);
            m_DienUuTienBanThanControl.HienThiComboBox(cbxDienUuTienCuaBanThan);
            m_DonViControl.HienThiComBoBox(cbxCoQuanTuyenDung);
            m_HinhThucTuyenDungControl.HienThiComboBox(cbxHinhThucTuyenDung);
            m_CongViecControl.HienThiComboBox(cbxCongViecDuocGiao);
            m_LoaiCanBoControl.HienThiComboBox(cbxLoaiCanBo);
            m_LoaiNghiBaoHiemXaHoiControl.HienThiComboBox(cbxDangNghiBHXH);
            m_ChucVuControl.HienThiComboBox(cbxChucVuHienTai);
            m_DoanVienControl.HienThiComboBox(cbxDoanVien);
            m_DTBDControl.HienThiComboBox(cbxDTBD);
            m_TrinhDoHocVan.HienThiComboBox(cbxTrinhDoHocVan);
            m_BangChuyenMonNghiepVuControl.HienThiComboBox(cbxBangChuyenMonNghiepVuCaoNhat);
            m_BangLyLuanChinhTriControl.HienThiComboBox(cbxTrinhDoLLCT);
            m_TrinhDoQuanLyNhaNuocControl.HienThiComboBox(cbxTrinhDoQLNN);
            m_TrinhDoTinHocControl.HienThiComboBox(cbxTrinhDoTinHoc);
            m_TrinhDoNgoaiNguControl.HienThiComboBox(cbxTrinhDoNgoaiNgu);
            m_NgachCongChucControl.HienThiComboBox(cbxNgachCongChuc);
            m_Huong85Control.HienThiComboBox(cbxHuong85);
        }
        public void HienThiComboBox(ComboBox cmbMaPhong, ComboBox cmbMaChucVu, ComboBox cmbTDCM)
        {
            m_DonViControl.HienThiComBoBox(cmbMaPhong);
            m_ChucVuControl.HienThiComboBox(cmbMaChucVu);
            m_BangChuyenMonNghiepVuControl.HienThiComboBox(cmbTDCM);
        }
        public void HienThiComboBoxLuong(ComboBox cmbGioiTinh, ComboBox cmbDonVi, ComboBox cmbChucVu, ComboBox cmbNgachCongChuc,ComboBox cmbHuong85)
        {
            m_GioiTinhCotrol.HienThiComboBox(cmbGioiTinh);
            m_DonViControl.HienThiComBoBox(cmbDonVi);
            m_ChucVuControl.HienThiComboBox(cmbChucVu);
            m_NgachCongChucControl.HienThiComboBox(cmbNgachCongChuc);
            m_Huong85Control.HienThiComboBox(cmbHuong85);
        }
        //Hien thi DataGirdView    
        public void HienThi(DataGridView dGV, BindingNavigator bN)
        {
            BindingSource bS = new BindingSource();
            DataTable tbl = m_NhanVienData.LayDanhSachNhanVien();
            bS.DataSource = tbl;
            bN.BindingSource = bS;
            dGV.DataSource = bS;
        }
        
        public void HienThi(DataGridView dGV, BindingNavigator bN, MaskedTextBox txtMaNhanVien,TextBox txtHinhanh, TextBox txtHoTen, TextBox txtTenGoiKhac, ComboBox cbxGioiTinh, DateTimePicker dtNgaySinh, TextBox txtNoiSinh, MaskedTextBox txtSoCMND, TextBox txtNoiCap, DateTimePicker dtNgayCap, ComboBox cbxDanToc, ComboBox cbxTonGiao, TextBox txtQueQuan, TextBox txtHoKhauThuongTru, TextBox txtNoiOHienTai, MaskedTextBox txtDienThoaiNhaRieng, MaskedTextBox txtDienThoaiDiDong, ComboBox cbxTinhTrangHonNhan, ComboBox cbxThanhPhanXuatThan, ComboBox cbxDienUuTienGiaDinh, ComboBox cbxDienUuTienCuaBanThan, TextBox txtNangKhieu, DateTimePicker dtNgayHopDong, DateTimePicker dtNgayTuyenDung, ComboBox cbxCoQuanTuyenDung, ComboBox cbxHinhThucTuyenDung, ComboBox cbxCongViecDuocGiao, DateTimePicker dtNgayBoNhiemVaoNgach, DateTimePicker dtNgayVeCoQuanHienNay, ComboBox cbxThuocLoaiCanBo, TextBox txtCongViecHienNay, ComboBox cbxDangNghiBHXH, ComboBox cbxChucVuHienTai, DateTimePicker dtNgayBoNhiemChucVuHienTai, TextBox txtLanBoNhiem, TextBox txtChucVuKiemNhiem, TextBox txtChucVuCaoNhatDaQua, DateTimePicker dtNgayVaoDangCSVN, DateTimePicker dtNgayChinhThuc, TextBox txtChucVuDangHienTai, ComboBox cbxDoanVien, DateTimePicker dtNgayThamGiaTCCTXH, TextBox txtTenToChucCTXH, TextBox txtChucVuDoan, ComboBox cbxDTBD, ComboBox cbxTrinhDoHocVan, ComboBox cbxBangChuyenMonNghiepVuCaoNhat, ComboBox cbxTrinhDoLLCT, ComboBox cbxTrinhDoQLNN, ComboBox cbxTrinhDoTinHoc, ComboBox cbxTrinhDoNgoaiNgu, ComboBox cbxNgachCongChuc, MaskedTextBox txtMaNgach, MaskedTextBox txtBacLuong, MaskedTextBox txtHeSoLuong, ComboBox cbxHuong85, MaskedTextBox txtChenhLechBaoLuuHSL, DateTimePicker dtHuongTuNgay, DateTimePicker dtMocTinhNangLuongLanSau, DateTimePicker dtNgayNangLuong, MaskedTextBox txtHeSoPhuCapChucVu, MaskedTextBox txtPhuCapThamNienVuotKhung, MaskedTextBox txtHeSoPhuCapKiemNhiem, MaskedTextBox txtHeSoPhuCapKhac, TextBox txtSoSoBHXH, DateTimePicker dtNgayBatDauDongBHXH)
        {
            BindingSource bS = new BindingSource();
            DataTable tbl = m_NhanVienData.LayDanhSachNhanVien();            
            bS.DataSource = tbl;            

            txtMaNhanVien.DataBindings.Clear();
            txtMaNhanVien.DataBindings.Add("Text", bS, "MaNhanVien");
            txtHinhanh.DataBindings.Clear();
            txtHinhanh.DataBindings.Add("Text", bS, "HinhAnh");            
            txtHoTen.DataBindings.Clear();                        
            txtHoTen.DataBindings.Add("Text", bS, "HoTenKhaiSinh");            
            txtTenGoiKhac.DataBindings.Clear();
            txtTenGoiKhac.DataBindings.Add("Text", bS, "TenGoiKhac");
            cbxGioiTinh.DataBindings.Clear();
            cbxGioiTinh.DataBindings.Add("SelectedValue", bS, "MaGioiTinh");
            dtNgaySinh.DataBindings.Clear();
            dtNgaySinh.DataBindings.Add("Value", bS, "NgaySinh");
            txtNoiSinh.DataBindings.Clear();
            txtNoiSinh.DataBindings.Add("Text", bS, "NoiSinh");
            txtSoCMND.DataBindings.Clear();
            txtSoCMND.DataBindings.Add("Text", bS, "SoChungMinhNhanDan");
            txtNoiCap.DataBindings.Clear();
            txtNoiCap.DataBindings.Add("Text", bS, "NoiCap");
            dtNgayCap.DataBindings.Clear();
            dtNgayCap.DataBindings.Add("Value", bS, "NgayCap");
            cbxDanToc.DataBindings.Clear();
            cbxDanToc.DataBindings.Add("SelectedValue", bS, "MaDanToc");
            cbxTonGiao.DataBindings.Clear();
            cbxTonGiao.DataBindings.Add("SelectedValue", bS, "MaTonGiao");
            txtQueQuan.DataBindings.Clear();
            txtQueQuan.DataBindings.Add("Text", bS, "QueQuan");
            txtHoKhauThuongTru.DataBindings.Clear();
            txtHoKhauThuongTru.DataBindings.Add("Text", bS, "HoKhauThuongTru");
            txtNoiOHienTai.DataBindings.Clear();
            txtNoiOHienTai.DataBindings.Add("Text", bS, "NoiOHienTai");
            txtDienThoaiNhaRieng.DataBindings.Clear();
            txtDienThoaiNhaRieng.DataBindings.Add("Text", bS, "DienThoaiNhaRieng");
            txtDienThoaiDiDong.DataBindings.Clear();
            txtDienThoaiDiDong.DataBindings.Add("Text", bS, "DienThoaiDiDong");
            cbxTinhTrangHonNhan.DataBindings.Clear();
            cbxTinhTrangHonNhan.DataBindings.Add("SelectedValue", bS, "MaTinhTrangHonNhan");
            cbxThanhPhanXuatThan.DataBindings.Clear();
            cbxThanhPhanXuatThan.DataBindings.Add("SelectedValue", bS, "MaThanhPhanXuatThan");
            cbxDienUuTienGiaDinh.DataBindings.Clear();
            cbxDienUuTienGiaDinh.DataBindings.Add("SelectedValue", bS, "MaDienUuTienCuaGiaDinh");
            cbxDienUuTienCuaBanThan.DataBindings.Clear();
            cbxDienUuTienCuaBanThan.DataBindings.Add("SelectedValue", bS, "MaDienUuTienCuaBanThan");
            txtNangKhieu.DataBindings.Clear();
            txtNangKhieu.DataBindings.Add("Text", bS, "NangKhieu");
            dtNgayHopDong.DataBindings.Clear();
            dtNgayHopDong.DataBindings.Add("Value", bS, "NgayHopDong");
            dtNgayTuyenDung.DataBindings.Clear();
            dtNgayTuyenDung.DataBindings.Add("Value", bS, "NgayTuyenDung");
            cbxHinhThucTuyenDung.DataBindings.Clear();
            cbxHinhThucTuyenDung.DataBindings.Add("SelectedValue", bS, "MaHinhThucTuyenDung");
            cbxCoQuanTuyenDung.DataBindings.Clear();
            cbxCoQuanTuyenDung.DataBindings.Add("SelectedValue", bS, "MaDonVi");
            cbxCongViecDuocGiao.DataBindings.Clear();
            cbxCongViecDuocGiao.DataBindings.Add("SelectedValue", bS, "MaCongViec");
            dtNgayBoNhiemVaoNgach.DataBindings.Clear();
            dtNgayBoNhiemVaoNgach.DataBindings.Add("Value", bS, "NgayBoNhiemVaoNgach");
            dtNgayVeCoQuanHienNay.DataBindings.Clear();
            dtNgayVeCoQuanHienNay.DataBindings.Add("Value", bS, "NgayVeCoQuanHienTai");
            cbxThuocLoaiCanBo.DataBindings.Clear();
            cbxThuocLoaiCanBo.DataBindings.Add("SelectedValue", bS, "MaLoaiCanBo");
            txtCongViecHienNay.DataBindings.Clear();
            txtCongViecHienNay.DataBindings.Add("Text", bS, "CongViecHienNay");
            cbxDangNghiBHXH.DataBindings.Clear();
            cbxDangNghiBHXH.DataBindings.Add("SelectedValue", bS, "MaLoaiNghiBaoHiemXaHoi");
            cbxChucVuHienTai.DataBindings.Clear();
            cbxChucVuHienTai.DataBindings.Add("SelectedValue", bS, "MaChucVu");
            dtNgayBoNhiemChucVuHienTai.DataBindings.Clear();
            dtNgayBoNhiemChucVuHienTai.DataBindings.Add("Value", bS, "NgayBoNhiemChucVuHienTai");
            txtLanBoNhiem.DataBindings.Clear();
            txtLanBoNhiem.DataBindings.Add("Text", bS, "LanBoNhiemCVCQHienTai");
            txtChucVuKiemNhiem.DataBindings.Clear();
            txtChucVuKiemNhiem.DataBindings.Add("Text", bS, "ChucVuLanhDaoKiemNhiem");
            txtChucVuCaoNhatDaQua.DataBindings.Clear();
            txtChucVuCaoNhatDaQua.DataBindings.Add("Text", bS, "ChucVuChinhQuyenCaoNhat");
            dtNgayVaoDangCSVN.DataBindings.Clear();
            dtNgayVaoDangCSVN.DataBindings.Add("Value", bS, "NgayVaoDang");
            dtNgayChinhThuc.DataBindings.Clear();
            dtNgayChinhThuc.DataBindings.Add("Value", bS, "NgayChinhThuc");
            txtChucVuDangHienTai.DataBindings.Clear();
            txtChucVuDangHienTai.DataBindings.Add("Text", bS, "ChucVuDangHienTai");
            cbxDoanVien.DataBindings.Clear();
            cbxDoanVien.DataBindings.Add("SelectedValue", bS, "DoanVien");
            dtNgayThamGiaTCCTXH.DataBindings.Clear();
            dtNgayThamGiaTCCTXH.DataBindings.Add("Value", bS, "NgayThamGiaTCCTXH");
            txtTenToChucCTXH.DataBindings.Clear();
            txtTenToChucCTXH.DataBindings.Add("Text", bS, "TenTCCTXH");
            txtChucVuDoan.DataBindings.Clear();
            txtChucVuDoan.DataBindings.Add("Text", bS, "ChucVuDoan");
            cbxDTBD.DataBindings.Clear();
            cbxDTBD.DataBindings.Add("SelectedValue", bS, "DangDTBD");
            cbxTrinhDoHocVan.DataBindings.Clear();
            cbxTrinhDoHocVan.DataBindings.Add("SelectedValue", bS, "MaTrinhDoHocVan");
            cbxBangChuyenMonNghiepVuCaoNhat.DataBindings.Clear();
            cbxBangChuyenMonNghiepVuCaoNhat.DataBindings.Add("SelectedValue", bS, "MaBangChuyenMonNghiepVu");
            cbxTrinhDoLLCT.DataBindings.Clear();
            cbxTrinhDoLLCT.DataBindings.Add("SelectedValue", bS, "MaBangLyLuanChinhTri");
            cbxTrinhDoQLNN.DataBindings.Clear();
            cbxTrinhDoQLNN.DataBindings.Add("SelectedValue", bS, "MaTrinhDoQuanLyNhaNuoc");
            cbxTrinhDoTinHoc.DataBindings.Clear();
            cbxTrinhDoTinHoc.DataBindings.Add("SelectedValue", bS, "MaTrinhDoTinHoc");
            cbxTrinhDoNgoaiNgu.DataBindings.Clear();
            cbxTrinhDoNgoaiNgu.DataBindings.Add("SelectedValue", bS, "MaTrinhDoNgoaiNgu");
            cbxNgachCongChuc.DataBindings.Clear();
            cbxNgachCongChuc.DataBindings.Add("SelectedValue", bS, "MaNgach");
            txtMaNgach.DataBindings.Clear();
            txtMaNgach.DataBindings.Add("Text", bS, "MaNgach");
            txtBacLuong.DataBindings.Clear();
            txtBacLuong.DataBindings.Add("Text", bS, "BacLuong");
            txtHeSoLuong.DataBindings.Clear();
            txtHeSoLuong.DataBindings.Add("Text", bS, "HeSoLuong");
            cbxHuong85.DataBindings.Clear();
            cbxHuong85.DataBindings.Add("SelectedValue", bS, "LuongCongChucDuBi");
            txtChenhLechBaoLuuHSL.DataBindings.Clear();
            txtChenhLechBaoLuuHSL.DataBindings.Add("Text", bS, "ChenhLechBaoLuuHeSoLuong");
            dtHuongTuNgay.DataBindings.Clear();
            dtHuongTuNgay.DataBindings.Add("Value", bS, "HuongLuongTuNgay");
            dtMocTinhNangLuongLanSau.DataBindings.Clear();
            dtMocTinhNangLuongLanSau.DataBindings.Add("Value", bS, "MocTinhNangLuongLanSau");
            dtNgayNangLuong.DataBindings.Clear();
            dtNgayNangLuong.DataBindings.Add("Value", bS, "NgayNangLuong");
            txtHeSoPhuCapChucVu.DataBindings.Clear();
            txtHeSoPhuCapChucVu.DataBindings.Add("Text", bS, "HeSoPhuCapChucVu");
            txtPhuCapThamNienVuotKhung.DataBindings.Clear();
            txtPhuCapThamNienVuotKhung.DataBindings.Add("Text", bS, "HeSoPhuCapThamNienVuotKhung");
            txtHeSoPhuCapKiemNhiem.DataBindings.Clear();
            txtHeSoPhuCapKiemNhiem.DataBindings.Add("Text", bS, "HeSoPhuCapKiemNhiem");
            txtHeSoPhuCapKhac.DataBindings.Clear();
            txtHeSoPhuCapKhac.DataBindings.Add("Text", bS, "HeSoPhuCapKhac");
            txtSoSoBHXH.DataBindings.Clear();
            txtSoSoBHXH.DataBindings.Add("Text", bS, "SoSoBHXH");
            dtNgayBatDauDongBHXH.DataBindings.Clear();
            dtNgayBatDauDongBHXH.DataBindings.Add("Text", bS, "NgayDongBHXH");

            bN.BindingSource = bS;
            dGV.DataSource = bS;
        }

        public void HienThiTTLuong(DataGridView dGV, TextBox txtHoTen,ComboBox cbxCoQuanTuyenDung, ComboBox cbxGioiTinh, ComboBox cbxChucVuHienTai, ComboBox cbxNgachCongChuc, MaskedTextBox txtMaNgach, MaskedTextBox txtBacLuong, MaskedTextBox txtHeSoLuong, ComboBox cbxHuong85, MaskedTextBox txtChenhLechBaoLuuHSL, DateTimePicker dtHuongTuNgay, DateTimePicker dtMocTinhNangLuongLanSau, MaskedTextBox txtHeSoPhuCapChucVu, MaskedTextBox txtPhuCapThamNienVuotKhung, MaskedTextBox txtHeSoPhuCapKiemNhiem, MaskedTextBox txtHeSoPhuCapKhac)
        {
            BindingSource bS = new BindingSource();
            DataTable tbl = m_NhanVienData.LayThongTinLuong();
            bS.DataSource = tbl;
            txtHoTen.DataBindings.Clear();
            txtHoTen.DataBindings.Add("Text", bS, "HoTenKhaiSinh");
            
            cbxGioiTinh.DataBindings.Clear();
            cbxGioiTinh.DataBindings.Add("SelectedValue", bS, "MaGioiTinh");
            cbxCoQuanTuyenDung.DataBindings.Clear();
            cbxCoQuanTuyenDung.DataBindings.Add("SelectedValue", bS, "MaDonVi");
            cbxChucVuHienTai.DataBindings.Clear();
            cbxChucVuHienTai.DataBindings.Add("SelectedValue", bS, "MaChucVu");
            cbxNgachCongChuc.DataBindings.Clear();
            cbxNgachCongChuc.DataBindings.Add("SelectedValue", bS, "MaNgach");
            txtMaNgach.DataBindings.Clear();
            txtMaNgach.DataBindings.Add("Text", bS, "MaNgach");
            txtBacLuong.DataBindings.Clear();
            txtBacLuong.DataBindings.Add("Text", bS, "BacLuong");
            txtHeSoLuong.DataBindings.Clear();
            txtHeSoLuong.DataBindings.Add("Text", bS, "HeSoLuong");
            cbxHuong85.DataBindings.Clear();
            cbxHuong85.DataBindings.Add("SelectedValue", bS, "LuongCongChucDuBi");
            txtChenhLechBaoLuuHSL.DataBindings.Clear();
            txtChenhLechBaoLuuHSL.DataBindings.Add("Text", bS, "ChenhLechBaoLuuHeSoLuong");
            dtHuongTuNgay.DataBindings.Clear();
            dtHuongTuNgay.DataBindings.Add("Value", bS, "HuongLuongTuNgay");
            dtMocTinhNangLuongLanSau.DataBindings.Clear();
            dtMocTinhNangLuongLanSau.DataBindings.Add("Value", bS, "MocTinhNangLuongLanSau");
            txtHeSoPhuCapChucVu.DataBindings.Clear();
            txtHeSoPhuCapChucVu.DataBindings.Add("Text", bS, "HeSoPhuCapChucVu");
            txtPhuCapThamNienVuotKhung.DataBindings.Clear();
            txtPhuCapThamNienVuotKhung.DataBindings.Add("Text", bS, "HeSoPhuCapThamNienVuotKhung");
            txtHeSoPhuCapKiemNhiem.DataBindings.Clear();
            txtHeSoPhuCapKiemNhiem.DataBindings.Add("Text", bS, "HeSoPhuCapKiemNhiem");
            txtHeSoPhuCapKhac.DataBindings.Clear();
            txtHeSoPhuCapKhac.DataBindings.Add("Text", bS, "HeSoPhuCapKhac");
          
            dGV.DataSource = bS;
        }
        public void HienThiDanhSachNhanVien(DataGridView dGV)
        {
            BindingSource bS = new BindingSource();
            DataTable tbl = m_NhanVienData.LayThongTinLuong2();
            bS.DataSource = tbl;         

            dGV.DataSource = bS;

            for (int i = 0; i < tbl.Rows.Count; i++)
            {
               // dGV.Rows[i].Cells["HoTenKhaiSinh"].Value = "abc";//tbl.Rows[i][0].ToString() ;
                dGV.Rows[i].Cells["SYLL"].Value = "Xem";
                dGV.Rows[i].Cells["NghiHuu"].Value = "Xem";
            }
        }
        public void TimKiem(DataGridView dGV, int type, String Frm, String To)
        {
            BindingSource bS = new BindingSource();
            DataTable tbl = m_NhanVienData.TimKiem(type, Frm, To);
            bS.DataSource = tbl;

            dGV.DataSource = bS;
        }
        public DataTable LayNhanVienTheoMa(String MaNV)
        {
            DataTable tbl = m_NhanVienData.LayNhanVienTheoMa(MaNV);
            return tbl;
        }
        public DataRow ThemDongMoi()
        {
            return m_NhanVienData.ThemDongMoi();
        }
        public void ThemNhanVien(DataRow m_Row)
        {
            m_NhanVienData.ThemNhanVien(m_Row);
        }
        public bool LuuNhanVien()
        {
            return m_NhanVienData.LuuNhanVien();
        }

        public void TimNhanVien(string cmbTen_tt, string txtTen,string cmbTDCM_tt, ComboBox cmbTDCM, string cmbChucVu_tt, ComboBox cmbChucVu, string cmbPhong_tt, ComboBox cmbPhong, DataGridView dg)
        {
            DataTable table = m_NhanVienData.TimNhanVien(cmbTen_tt, txtTen,cmbTDCM_tt, cmbTDCM, cmbChucVu_tt, cmbChucVu, cmbPhong_tt, cmbPhong);
            dg.DataSource = table;
        }

        public void KhongKichHoatTextBox(TextBox txt)
        {
            txt.Enabled = false;
            txt.BackColor = System.Drawing.Color.LightYellow;
            txt.ReadOnly = true;

        }

        // kick hoat textbox

        public void KichHoatTextBox(TextBox txt)
        {
            txt.Enabled = true;
            txt.BackColor = System.Drawing.SystemColors.Window;
            txt.ReadOnly = false;
        }

       
        // kich hoat combobox

        public void KichHoatComboBox(ComboBox cbo)
        {
            cbo.Enabled = true;
        }

        // ko kick hoat combobox

        public void KhongKichHoatComboBox(ComboBox cbo)
        {
            cbo.Enabled = false;
        }

        // khong kick hoat datetimepicker

       
        // kiem tra textbox rong 
        public bool KiemTraTextBoxRong(TextBox txt, string TB)
        {
            if (txt.Text == " ")
            {
                MessageBox.Show(TB, "THÔNG BÁO", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                return true;
            }
            else
                return false;
        }

        public IList<NhanVienInfo> LayDsNhanVien( String phong, String chucvu)
        {
            NhanVienData m_NVData = new NhanVienData();
            //DataTable m_DT = m_NVData.LayDsNhanVienForReport();
            DataTable m_DT = m_NVData.LayDSNhanVienTheoPhong(phong, chucvu);

            IList<NhanVienInfo> dS = new List<NhanVienInfo>();

            foreach (DataRow Row in m_DT.Rows)
            {
                NhanVienInfo nv = new NhanVienInfo();

                ChucVuInfo cv = new ChucVuInfo();
                cv.MaChucVu = Convert.ToString(Row["MaChucVu"]);
                cv.TenChucVu = Convert.ToString(Row["TenChucVu"]);

                DonViInfo dv = new DonViInfo();
                dv.MaDonVi = Convert.ToString(Row["MaDonVi"]);
                dv.TenDonVi = Convert.ToString(Row["TenDonVi"]);

                GioiTinhInfo gt = new GioiTinhInfo();
                gt.MaGioiTinh = Convert.ToString(Row["MaGioiTinh"]);
                gt.TenGioiTinh = Convert.ToString(Row["TenGioiTinh"]);

               

                nv.MaNhanVien = Convert.ToString(Row["MaNhanVien"]);
                nv.HoTen = Convert.ToString(Row["HoTenKhaiSinh"]);
                nv.GT = gt;
                nv.ChucVu = cv;
                nv.DonVi = dv;
                nv.QueQuan = Convert.ToString(Row["QueQuan"]);
                

                dS.Add(nv);
            }
            return dS;

        }
        public IList<NhanVienInfo> LayDsNhanVienphong(String phong)
        {
            NhanVienData m_NVData = new NhanVienData();
            //DataTable m_DT = m_NVData.LayDsNhanVienForReport();
            DataTable m_DT = m_NVData.LayDanhSachNhanVienphong(phong);

            IList<NhanVienInfo> dS = new List<NhanVienInfo>();

            foreach (DataRow Row in m_DT.Rows)
            {
                NhanVienInfo nv = new NhanVienInfo();

                ChucVuInfo cv = new ChucVuInfo();
                cv.MaChucVu = Convert.ToString(Row["MaChucVu"]);
                cv.TenChucVu = Convert.ToString(Row["TenChucVu"]);

                DonViInfo dv = new DonViInfo();
                dv.MaDonVi = Convert.ToString(Row["MaDonVi"]);
                dv.TenDonVi = Convert.ToString(Row["TenDonVi"]);

                GioiTinhInfo gt = new GioiTinhInfo();
                gt.MaGioiTinh = Convert.ToString(Row["MaGioiTinh"]);
                gt.TenGioiTinh = Convert.ToString(Row["TenGioiTinh"]);



                nv.MaNhanVien = Convert.ToString(Row["MaNhanVien"]);
                nv.HoTen = Convert.ToString(Row["HoTenKhaiSinh"]);
                nv.GT = gt;
                nv.ChucVu = cv;
                nv.DonVi = dv;
                nv.QueQuan = Convert.ToString(Row["QueQuan"]);


                dS.Add(nv);
            }
            return dS;

        }
        public static IList<NhanVienInfo> LayDsLuongNhanVien(String dt)
        {
            NhanVienData m_NVData = new NhanVienData();
            //DataTable m_DT = m_NVData.LayDsNhanVienForReport();
            DataTable m_DT = m_NVData.LayDSNV(dt);

            IList<NhanVienInfo> dS = new List<NhanVienInfo>();

            foreach (DataRow Row in m_DT.Rows)
            {
                NhanVienInfo nv = new NhanVienInfo();

                ChucVuInfo cv = new ChucVuInfo();
                cv.MaChucVu = Convert.ToString(Row["MaChucVu"]);
                cv.TenChucVu = Convert.ToString(Row["TenChucVu"]);

                DonViInfo dv = new DonViInfo();
                dv.MaDonVi = Convert.ToString(Row["MaDonVi"]);
                dv.TenDonVi = Convert.ToString(Row["TenDonVi"]);

                GioiTinhInfo gt = new GioiTinhInfo();
                gt.MaGioiTinh = Convert.ToString(Row["MaGioiTinh"]);
                gt.TenGioiTinh = Convert.ToString(Row["TenGioiTinh"]);



                nv.MaNhanVien = Convert.ToString(Row["MaNhanVien"]);
                nv.HoTen = Convert.ToString(Row["HoTenKhaiSinh"]);
                nv.GT = gt;
                nv.ChucVu = cv;
                nv.DonVi = dv;
                nv.QueQuan = Convert.ToString(Row["QueQuan"]);


                dS.Add(nv);
            }
            return dS;

        }
        
        public void CapNhatCanSu(String dt)
        {
            m_NhanVienData.CapNhatCanSu(dt);
        }
        public void CapNhatChuyenVien(String dt)
        {
            m_NhanVienData.CapNhatChuyenVien(dt);
        }

        public DataTable TimNhanVien(string MaHoacTenNhanVien, DataGridView dgv )
        {
            DataTable dt = m_NhanVienData.TimNhanVien(MaHoacTenNhanVien);
            BindingSource bS = new BindingSource();
            bS.DataSource = dt;
            dgv.DataSource = bS;
            return dt;
        }

        public string LayIDDangVienTheoMaNhanVien(string MaNhanVien)
        {
            string IDDangVien = m_NhanVienData.LayIDDangVienTheoMaNhanVien(MaNhanVien);
            return IDDangVien;
        }

        public DataTable LayDSNhanVien()
        {
            DataTable dt = m_NhanVienData.LayDSNhanVien();
            return dt;
        }
    }


}

