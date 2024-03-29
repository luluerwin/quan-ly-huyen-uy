/****** Object:  ForeignKey [FK_CanBoQuaCacThoiKi_DonVi]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CanBoQuaCacThoiKi_DonVi]') AND parent_object_id = OBJECT_ID(N'[dbo].[CanBoQuaCacThoiKi]'))
ALTER TABLE [dbo].[CanBoQuaCacThoiKi] DROP CONSTRAINT [FK_CanBoQuaCacThoiKi_DonVi]
GO
/****** Object:  ForeignKey [FK_CanBoQuaCacThoiKi_LoaiCanBoQuaCacThoiKi]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CanBoQuaCacThoiKi_LoaiCanBoQuaCacThoiKi]') AND parent_object_id = OBJECT_ID(N'[dbo].[CanBoQuaCacThoiKi]'))
ALTER TABLE [dbo].[CanBoQuaCacThoiKi] DROP CONSTRAINT [FK_CanBoQuaCacThoiKi_LoaiCanBoQuaCacThoiKi]
GO
/****** Object:  ForeignKey [FK_CanBoQuaCacThoiKi_NhanVien]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CanBoQuaCacThoiKi_NhanVien]') AND parent_object_id = OBJECT_ID(N'[dbo].[CanBoQuaCacThoiKi]'))
ALTER TABLE [dbo].[CanBoQuaCacThoiKi] DROP CONSTRAINT [FK_CanBoQuaCacThoiKi_NhanVien]
GO
/****** Object:  ForeignKey [FK_CanBoVeHuuChuyenDen_CanBoQuaCacThoiKi]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CanBoVeHuuChuyenDen_CanBoQuaCacThoiKi]') AND parent_object_id = OBJECT_ID(N'[dbo].[CanBoVeHuuChuyenDen]'))
ALTER TABLE [dbo].[CanBoVeHuuChuyenDen] DROP CONSTRAINT [FK_CanBoVeHuuChuyenDen_CanBoQuaCacThoiKi]
GO
/****** Object:  ForeignKey [FK_ChuyenDonVi_CanBoQuaCacThoiKi]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ChuyenDonVi_CanBoQuaCacThoiKi]') AND parent_object_id = OBJECT_ID(N'[dbo].[ChuyenDonVi]'))
ALTER TABLE [dbo].[ChuyenDonVi] DROP CONSTRAINT [FK_ChuyenDonVi_CanBoQuaCacThoiKi]
GO
/****** Object:  ForeignKey [FK_ChuyenDonVi_DonViDen]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ChuyenDonVi_DonViDen]') AND parent_object_id = OBJECT_ID(N'[dbo].[ChuyenDonVi]'))
ALTER TABLE [dbo].[ChuyenDonVi] DROP CONSTRAINT [FK_ChuyenDonVi_DonViDen]
GO
/****** Object:  ForeignKey [FK_DonVi_LoaiDonVi]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DonVi_LoaiDonVi]') AND parent_object_id = OBJECT_ID(N'[dbo].[DonVi]'))
ALTER TABLE [dbo].[DonVi] DROP CONSTRAINT [FK_DonVi_LoaiDonVi]
GO
/****** Object:  ForeignKey [FK_DonVi_PhanLoaiDonVi]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DonVi_PhanLoaiDonVi]') AND parent_object_id = OBJECT_ID(N'[dbo].[DonVi]'))
ALTER TABLE [dbo].[DonVi] DROP CONSTRAINT [FK_DonVi_PhanLoaiDonVi]
GO
/****** Object:  ForeignKey [FK_DonVi_QuanHuyen]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DonVi_QuanHuyen]') AND parent_object_id = OBJECT_ID(N'[dbo].[DonVi]'))
ALTER TABLE [dbo].[DonVi] DROP CONSTRAINT [FK_DonVi_QuanHuyen]
GO
/****** Object:  ForeignKey [FK_HoanCanhKinhTe_HoatDongKinhTe]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_HoanCanhKinhTe_HoatDongKinhTe]') AND parent_object_id = OBJECT_ID(N'[dbo].[HoanCanhKinhTe]'))
ALTER TABLE [dbo].[HoanCanhKinhTe] DROP CONSTRAINT [FK_HoanCanhKinhTe_HoatDongKinhTe]
GO
/****** Object:  ForeignKey [FK_HoanCanhKinhTe_NhanVien]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_HoanCanhKinhTe_NhanVien]') AND parent_object_id = OBJECT_ID(N'[dbo].[HoanCanhKinhTe]'))
ALTER TABLE [dbo].[HoanCanhKinhTe] DROP CONSTRAINT [FK_HoanCanhKinhTe_NhanVien]
GO
/****** Object:  ForeignKey [FK_HuyHieu_LoaiHuyHieu]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_HuyHieu_LoaiHuyHieu]') AND parent_object_id = OBJECT_ID(N'[dbo].[HuyHieu]'))
ALTER TABLE [dbo].[HuyHieu] DROP CONSTRAINT [FK_HuyHieu_LoaiHuyHieu]
GO
/****** Object:  ForeignKey [FK_HuyHieu_NhanVien]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_HuyHieu_NhanVien]') AND parent_object_id = OBJECT_ID(N'[dbo].[HuyHieu]'))
ALTER TABLE [dbo].[HuyHieu] DROP CONSTRAINT [FK_HuyHieu_NhanVien]
GO
/****** Object:  ForeignKey [FK_KhenThuong_HinhThucKhenThuong]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_KhenThuong_HinhThucKhenThuong]') AND parent_object_id = OBJECT_ID(N'[dbo].[KhenThuong]'))
ALTER TABLE [dbo].[KhenThuong] DROP CONSTRAINT [FK_KhenThuong_HinhThucKhenThuong]
GO
/****** Object:  ForeignKey [FK_KhenThuong_NhanVien]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_KhenThuong_NhanVien]') AND parent_object_id = OBJECT_ID(N'[dbo].[KhenThuong]'))
ALTER TABLE [dbo].[KhenThuong] DROP CONSTRAINT [FK_KhenThuong_NhanVien]
GO
/****** Object:  ForeignKey [FK_KhoiXom_PhuongXa]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_KhoiXom_PhuongXa]') AND parent_object_id = OBJECT_ID(N'[dbo].[KhoiXom]'))
ALTER TABLE [dbo].[KhoiXom] DROP CONSTRAINT [FK_KhoiXom_PhuongXa]
GO
/****** Object:  ForeignKey [FK_KyLuat_HinhThucKyLuat]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_KyLuat_HinhThucKyLuat]') AND parent_object_id = OBJECT_ID(N'[dbo].[KyLuat]'))
ALTER TABLE [dbo].[KyLuat] DROP CONSTRAINT [FK_KyLuat_HinhThucKyLuat]
GO
/****** Object:  ForeignKey [FK_KyLuat_NhanVien]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_KyLuat_NhanVien]') AND parent_object_id = OBJECT_ID(N'[dbo].[KyLuat]'))
ALTER TABLE [dbo].[KyLuat] DROP CONSTRAINT [FK_KyLuat_NhanVien]
GO
/****** Object:  ForeignKey [FK_KyLuat_NoiDungViPham]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_KyLuat_NoiDungViPham]') AND parent_object_id = OBJECT_ID(N'[dbo].[KyLuat]'))
ALTER TABLE [dbo].[KyLuat] DROP CONSTRAINT [FK_KyLuat_NoiDungViPham]
GO
/****** Object:  ForeignKey [FK_LoaiNguoiDung_ChucNang_ChucNang]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LoaiNguoiDung_ChucNang_ChucNang]') AND parent_object_id = OBJECT_ID(N'[dbo].[LoaiNguoiDung_ChucNang]'))
ALTER TABLE [dbo].[LoaiNguoiDung_ChucNang] DROP CONSTRAINT [FK_LoaiNguoiDung_ChucNang_ChucNang]
GO
/****** Object:  ForeignKey [FK_LoaiNguoiDung_ChucNang_LoaiNGuoiDung]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LoaiNguoiDung_ChucNang_LoaiNGuoiDung]') AND parent_object_id = OBJECT_ID(N'[dbo].[LoaiNguoiDung_ChucNang]'))
ALTER TABLE [dbo].[LoaiNguoiDung_ChucNang] DROP CONSTRAINT [FK_LoaiNguoiDung_ChucNang_LoaiNGuoiDung]
GO
/****** Object:  ForeignKey [FK_LuongPhuCap_Huong85]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LuongPhuCap_Huong85]') AND parent_object_id = OBJECT_ID(N'[dbo].[LuongPhuCap]'))
ALTER TABLE [dbo].[LuongPhuCap] DROP CONSTRAINT [FK_LuongPhuCap_Huong85]
GO
/****** Object:  ForeignKey [FK_LuongPhuCap_NgachCongChuc]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LuongPhuCap_NgachCongChuc]') AND parent_object_id = OBJECT_ID(N'[dbo].[LuongPhuCap]'))
ALTER TABLE [dbo].[LuongPhuCap] DROP CONSTRAINT [FK_LuongPhuCap_NgachCongChuc]
GO
/****** Object:  ForeignKey [FK_LuongPhuCap_NhanVien]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LuongPhuCap_NhanVien]') AND parent_object_id = OBJECT_ID(N'[dbo].[LuongPhuCap]'))
ALTER TABLE [dbo].[LuongPhuCap] DROP CONSTRAINT [FK_LuongPhuCap_NhanVien]
GO
/****** Object:  ForeignKey [FK_NguoiDung_LoaiNGuoiDung]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NguoiDung_LoaiNGuoiDung]') AND parent_object_id = OBJECT_ID(N'[dbo].[NguoiDung]'))
ALTER TABLE [dbo].[NguoiDung] DROP CONSTRAINT [FK_NguoiDung_LoaiNGuoiDung]
GO
/****** Object:  ForeignKey [FK_NhanVien_BangChuyenMonNghiepVu]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_BangChuyenMonNghiepVu]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien] DROP CONSTRAINT [FK_NhanVien_BangChuyenMonNghiepVu]
GO
/****** Object:  ForeignKey [FK_NhanVien_BangGiaoDucPhoThong]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_BangGiaoDucPhoThong]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien] DROP CONSTRAINT [FK_NhanVien_BangGiaoDucPhoThong]
GO
/****** Object:  ForeignKey [FK_NhanVien_BangLyLuanChinhTri]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_BangLyLuanChinhTri]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien] DROP CONSTRAINT [FK_NhanVien_BangLyLuanChinhTri]
GO
/****** Object:  ForeignKey [FK_NhanVien_BangNgoaiNgu]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_BangNgoaiNgu]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien] DROP CONSTRAINT [FK_NhanVien_BangNgoaiNgu]
GO
/****** Object:  ForeignKey [FK_NhanVien_ChucVu]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_ChucVu]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien] DROP CONSTRAINT [FK_NhanVien_ChucVu]
GO
/****** Object:  ForeignKey [FK_NhanVien_DanToc]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_DanToc]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien] DROP CONSTRAINT [FK_NhanVien_DanToc]
GO
/****** Object:  ForeignKey [FK_NhanVien_DonVi]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_DonVi]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien] DROP CONSTRAINT [FK_NhanVien_DonVi]
GO
/****** Object:  ForeignKey [FK_NhanVien_GioiTinh]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_GioiTinh]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien] DROP CONSTRAINT [FK_NhanVien_GioiTinh]
GO
/****** Object:  ForeignKey [FK_NhanVien_HocHam]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_HocHam]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien] DROP CONSTRAINT [FK_NhanVien_HocHam]
GO
/****** Object:  ForeignKey [FK_NhanVien_HocVi]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_HocVi]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien] DROP CONSTRAINT [FK_NhanVien_HocVi]
GO
/****** Object:  ForeignKey [FK_NhanVien_NgheNghiep]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_NgheNghiep]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien] DROP CONSTRAINT [FK_NhanVien_NgheNghiep]
GO
/****** Object:  ForeignKey [FK_NhanVien_ThanhPhanGiaDinh]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_ThanhPhanGiaDinh]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien] DROP CONSTRAINT [FK_NhanVien_ThanhPhanGiaDinh]
GO
/****** Object:  ForeignKey [FK_NhanVien_ThuongBinh]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_ThuongBinh]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien] DROP CONSTRAINT [FK_NhanVien_ThuongBinh]
GO
/****** Object:  ForeignKey [FK_NhanVien_TinhTrangSucKhoe]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_TinhTrangSucKhoe]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien] DROP CONSTRAINT [FK_NhanVien_TinhTrangSucKhoe]
GO
/****** Object:  ForeignKey [FK_NhanVien_TonGiao]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_TonGiao]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien] DROP CONSTRAINT [FK_NhanVien_TonGiao]
GO
/****** Object:  ForeignKey [FK_PhuongXa_QuanHuyen]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PhuongXa_QuanHuyen]') AND parent_object_id = OBJECT_ID(N'[dbo].[PhuongXa]'))
ALTER TABLE [dbo].[PhuongXa] DROP CONSTRAINT [FK_PhuongXa_QuanHuyen]
GO
/****** Object:  ForeignKey [FK_QuanHuyen_TinhThanh]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuanHuyen_TinhThanh]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuanHuyen]'))
ALTER TABLE [dbo].[QuanHuyen] DROP CONSTRAINT [FK_QuanHuyen_TinhThanh]
GO
/****** Object:  ForeignKey [FK_QuaTrinhDaoTao_BangChuyenMonNghiepVu]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuaTrinhDaoTao_BangChuyenMonNghiepVu]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuaTrinhDaoTao]'))
ALTER TABLE [dbo].[QuaTrinhDaoTao] DROP CONSTRAINT [FK_QuaTrinhDaoTao_BangChuyenMonNghiepVu]
GO
/****** Object:  ForeignKey [FK_QuaTrinhDaoTao_BangGiaoDucPhoThong]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuaTrinhDaoTao_BangGiaoDucPhoThong]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuaTrinhDaoTao]'))
ALTER TABLE [dbo].[QuaTrinhDaoTao] DROP CONSTRAINT [FK_QuaTrinhDaoTao_BangGiaoDucPhoThong]
GO
/****** Object:  ForeignKey [FK_QuaTrinhDaoTao_BangLyLuanChinhTri]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuaTrinhDaoTao_BangLyLuanChinhTri]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuaTrinhDaoTao]'))
ALTER TABLE [dbo].[QuaTrinhDaoTao] DROP CONSTRAINT [FK_QuaTrinhDaoTao_BangLyLuanChinhTri]
GO
/****** Object:  ForeignKey [FK_QuaTrinhDaoTao_BangNgoaiNgu]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuaTrinhDaoTao_BangNgoaiNgu]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuaTrinhDaoTao]'))
ALTER TABLE [dbo].[QuaTrinhDaoTao] DROP CONSTRAINT [FK_QuaTrinhDaoTao_BangNgoaiNgu]
GO
/****** Object:  ForeignKey [FK_QuaTrinhDaoTao_HinhThucDaoTao]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuaTrinhDaoTao_HinhThucDaoTao]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuaTrinhDaoTao]'))
ALTER TABLE [dbo].[QuaTrinhDaoTao] DROP CONSTRAINT [FK_QuaTrinhDaoTao_HinhThucDaoTao]
GO
/****** Object:  ForeignKey [FK_QuaTrinhDaoTao_HocHam]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuaTrinhDaoTao_HocHam]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuaTrinhDaoTao]'))
ALTER TABLE [dbo].[QuaTrinhDaoTao] DROP CONSTRAINT [FK_QuaTrinhDaoTao_HocHam]
GO
/****** Object:  ForeignKey [FK_QuaTrinhDaoTao_NhanVien]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuaTrinhDaoTao_NhanVien]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuaTrinhDaoTao]'))
ALTER TABLE [dbo].[QuaTrinhDaoTao] DROP CONSTRAINT [FK_QuaTrinhDaoTao_NhanVien]
GO
/****** Object:  ForeignKey [FK_QuaTrinhDaoTao_QuocGia]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuaTrinhDaoTao_QuocGia]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuaTrinhDaoTao]'))
ALTER TABLE [dbo].[QuaTrinhDaoTao] DROP CONSTRAINT [FK_QuaTrinhDaoTao_QuocGia]
GO
/****** Object:  ForeignKey [FK_ThanNhanMoi_NhanVien]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ThanNhanMoi_NhanVien]') AND parent_object_id = OBJECT_ID(N'[dbo].[ThanNhan]'))
ALTER TABLE [dbo].[ThanNhan] DROP CONSTRAINT [FK_ThanNhanMoi_NhanVien]
GO
/****** Object:  ForeignKey [FK_ThanNhanMoi_QuanHe]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ThanNhanMoi_QuanHe]') AND parent_object_id = OBJECT_ID(N'[dbo].[ThanNhan]'))
ALTER TABLE [dbo].[ThanNhan] DROP CONSTRAINT [FK_ThanNhanMoi_QuanHe]
GO
/****** Object:  Table [dbo].[CanBoVeHuuChuyenDen]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CanBoVeHuuChuyenDen]') AND type in (N'U'))
DROP TABLE [dbo].[CanBoVeHuuChuyenDen]
GO
/****** Object:  Table [dbo].[ChuyenDonVi]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ChuyenDonVi]') AND type in (N'U'))
DROP TABLE [dbo].[ChuyenDonVi]
GO
/****** Object:  Table [dbo].[CanBoQuaCacThoiKi]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CanBoQuaCacThoiKi]') AND type in (N'U'))
DROP TABLE [dbo].[CanBoQuaCacThoiKi]
GO
/****** Object:  Table [dbo].[HuyHieu]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HuyHieu]') AND type in (N'U'))
DROP TABLE [dbo].[HuyHieu]
GO
/****** Object:  Table [dbo].[KhenThuong]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KhenThuong]') AND type in (N'U'))
DROP TABLE [dbo].[KhenThuong]
GO
/****** Object:  Table [dbo].[KyLuat]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KyLuat]') AND type in (N'U'))
DROP TABLE [dbo].[KyLuat]
GO
/****** Object:  Table [dbo].[LuongPhuCap]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LuongPhuCap]') AND type in (N'U'))
DROP TABLE [dbo].[LuongPhuCap]
GO
/****** Object:  Table [dbo].[HoanCanhKinhTe]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HoanCanhKinhTe]') AND type in (N'U'))
DROP TABLE [dbo].[HoanCanhKinhTe]
GO
/****** Object:  Table [dbo].[QuaTrinhDaoTao]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QuaTrinhDaoTao]') AND type in (N'U'))
DROP TABLE [dbo].[QuaTrinhDaoTao]
GO
/****** Object:  Table [dbo].[ThanNhan]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ThanNhan]') AND type in (N'U'))
DROP TABLE [dbo].[ThanNhan]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NhanVien]') AND type in (N'U'))
DROP TABLE [dbo].[NhanVien]
GO
/****** Object:  Table [dbo].[KhoiXom]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KhoiXom]') AND type in (N'U'))
DROP TABLE [dbo].[KhoiXom]
GO
/****** Object:  Table [dbo].[PhuongXa]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PhuongXa]') AND type in (N'U'))
DROP TABLE [dbo].[PhuongXa]
GO
/****** Object:  Table [dbo].[DonVi]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DonVi]') AND type in (N'U'))
DROP TABLE [dbo].[DonVi]
GO
/****** Object:  Table [dbo].[LoaiNguoiDung_ChucNang]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoaiNguoiDung_ChucNang]') AND type in (N'U'))
DROP TABLE [dbo].[LoaiNguoiDung_ChucNang]
GO
/****** Object:  Table [dbo].[QuanHuyen]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QuanHuyen]') AND type in (N'U'))
DROP TABLE [dbo].[QuanHuyen]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NguoiDung]') AND type in (N'U'))
DROP TABLE [dbo].[NguoiDung]
GO
/****** Object:  Table [dbo].[TinhThanh]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TinhThanh]') AND type in (N'U'))
DROP TABLE [dbo].[TinhThanh]
GO
/****** Object:  Table [dbo].[TinhTrangSucKhoe]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TinhTrangSucKhoe]') AND type in (N'U'))
DROP TABLE [dbo].[TinhTrangSucKhoe]
GO
/****** Object:  Table [dbo].[TonGiao]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TonGiao]') AND type in (N'U'))
DROP TABLE [dbo].[TonGiao]
GO
/****** Object:  Table [dbo].[QuocGia]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QuocGia]') AND type in (N'U'))
DROP TABLE [dbo].[QuocGia]
GO
/****** Object:  Table [dbo].[ThanhPhanGiaDinh]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ThanhPhanGiaDinh]') AND type in (N'U'))
DROP TABLE [dbo].[ThanhPhanGiaDinh]
GO
/****** Object:  Table [dbo].[LoaiThuongBinh]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoaiThuongBinh]') AND type in (N'U'))
DROP TABLE [dbo].[LoaiThuongBinh]
GO
/****** Object:  Table [dbo].[DanToc]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DanToc]') AND type in (N'U'))
DROP TABLE [dbo].[DanToc]
GO
/****** Object:  Table [dbo].[LoaiCanBoQuaCacThoiKi]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoaiCanBoQuaCacThoiKi]') AND type in (N'U'))
DROP TABLE [dbo].[LoaiCanBoQuaCacThoiKi]
GO
/****** Object:  Table [dbo].[LoaiDonVi]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoaiDonVi]') AND type in (N'U'))
DROP TABLE [dbo].[LoaiDonVi]
GO
/****** Object:  Table [dbo].[LoaiHuyHieu]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoaiHuyHieu]') AND type in (N'U'))
DROP TABLE [dbo].[LoaiHuyHieu]
GO
/****** Object:  Table [dbo].[LoaiNguoiDung]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoaiNguoiDung]') AND type in (N'U'))
DROP TABLE [dbo].[LoaiNguoiDung]
GO
/****** Object:  Table [dbo].[QuanHe]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QuanHe]') AND type in (N'U'))
DROP TABLE [dbo].[QuanHe]
GO
/****** Object:  Table [dbo].[NgachCongChuc]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NgachCongChuc]') AND type in (N'U'))
DROP TABLE [dbo].[NgachCongChuc]
GO
/****** Object:  Table [dbo].[NgheNghiep]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NgheNghiep]') AND type in (N'U'))
DROP TABLE [dbo].[NgheNghiep]
GO
/****** Object:  Table [dbo].[NoiDungViPham]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NoiDungViPham]') AND type in (N'U'))
DROP TABLE [dbo].[NoiDungViPham]
GO
/****** Object:  Table [dbo].[PhanLoaiDonVi]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PhanLoaiDonVi]') AND type in (N'U'))
DROP TABLE [dbo].[PhanLoaiDonVi]
GO
/****** Object:  Table [dbo].[GioiTinh]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GioiTinh]') AND type in (N'U'))
DROP TABLE [dbo].[GioiTinh]
GO
/****** Object:  Table [dbo].[HinhThucBoDonVi]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HinhThucBoDonVi]') AND type in (N'U'))
DROP TABLE [dbo].[HinhThucBoDonVi]
GO
/****** Object:  Table [dbo].[HinhThucDaoTao]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HinhThucDaoTao]') AND type in (N'U'))
DROP TABLE [dbo].[HinhThucDaoTao]
GO
/****** Object:  Table [dbo].[HinhThucKhenThuong]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HinhThucKhenThuong]') AND type in (N'U'))
DROP TABLE [dbo].[HinhThucKhenThuong]
GO
/****** Object:  Table [dbo].[HinhThucKyLuat]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HinhThucKyLuat]') AND type in (N'U'))
DROP TABLE [dbo].[HinhThucKyLuat]
GO
/****** Object:  Table [dbo].[HoatDongKinhTe]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HoatDongKinhTe]') AND type in (N'U'))
DROP TABLE [dbo].[HoatDongKinhTe]
GO
/****** Object:  Table [dbo].[HocHam]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HocHam]') AND type in (N'U'))
DROP TABLE [dbo].[HocHam]
GO
/****** Object:  Table [dbo].[HocVi]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HocVi]') AND type in (N'U'))
DROP TABLE [dbo].[HocVi]
GO
/****** Object:  Table [dbo].[Huong85]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Huong85]') AND type in (N'U'))
DROP TABLE [dbo].[Huong85]
GO
/****** Object:  Table [dbo].[CapUy]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CapUy]') AND type in (N'U'))
DROP TABLE [dbo].[CapUy]
GO
/****** Object:  Table [dbo].[CapUyKiem]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CapUyKiem]') AND type in (N'U'))
DROP TABLE [dbo].[CapUyKiem]
GO
/****** Object:  Table [dbo].[ChucNang]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ChucNang]') AND type in (N'U'))
DROP TABLE [dbo].[ChucNang]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ChucVu]') AND type in (N'U'))
DROP TABLE [dbo].[ChucVu]
GO
/****** Object:  Table [dbo].[ChucVuChinhQuyen]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ChucVuChinhQuyen]') AND type in (N'U'))
DROP TABLE [dbo].[ChucVuChinhQuyen]
GO
/****** Object:  Table [dbo].[BangChuyenMonNghiepVu]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BangChuyenMonNghiepVu]') AND type in (N'U'))
DROP TABLE [dbo].[BangChuyenMonNghiepVu]
GO
/****** Object:  Table [dbo].[BangGiaoDucPhoThong]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BangGiaoDucPhoThong]') AND type in (N'U'))
DROP TABLE [dbo].[BangGiaoDucPhoThong]
GO
/****** Object:  Table [dbo].[BangLyLuanChinhTri]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BangLyLuanChinhTri]') AND type in (N'U'))
DROP TABLE [dbo].[BangLyLuanChinhTri]
GO
/****** Object:  Table [dbo].[BangNgoaiNgu]    Script Date: 06/05/2011 20:36:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BangNgoaiNgu]') AND type in (N'U'))
DROP TABLE [dbo].[BangNgoaiNgu]
GO
/****** Object:  Table [dbo].[BangNgoaiNgu]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BangNgoaiNgu]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BangNgoaiNgu](
	[MaBangNgoaiNgu] [int] IDENTITY(1,1) NOT NULL,
	[TenBangNgoaiNgu] [nvarchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_BangNgoaiNgu] PRIMARY KEY CLUSTERED 
(
	[MaBangNgoaiNgu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[BangLyLuanChinhTri]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BangLyLuanChinhTri]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BangLyLuanChinhTri](
	[MaBangLyLuanChinhTri] [int] IDENTITY(1,1) NOT NULL,
	[TenBangLyLuanChinhTri] [nvarchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_BangLyLuanChinhTri] PRIMARY KEY CLUSTERED 
(
	[MaBangLyLuanChinhTri] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[BangGiaoDucPhoThong]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BangGiaoDucPhoThong]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BangGiaoDucPhoThong](
	[MaBangGiaoDucPhoThong] [int] IDENTITY(1,1) NOT NULL,
	[TenBangGiaoDucPhoThong] [nvarchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_BangGiaoDucPhoThong] PRIMARY KEY CLUSTERED 
(
	[MaBangGiaoDucPhoThong] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[BangChuyenMonNghiepVu]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BangChuyenMonNghiepVu]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BangChuyenMonNghiepVu](
	[MaBangChuyenMonNghiepVu] [int] IDENTITY(1,1) NOT NULL,
	[TenBangChuyenMonNghiepVu] [nvarchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_BangChuyenMonNghiepVu] PRIMARY KEY CLUSTERED 
(
	[MaBangChuyenMonNghiepVu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[BangChuyenMonNghiepVu] ON
INSERT [dbo].[BangChuyenMonNghiepVu] ([MaBangChuyenMonNghiepVu], [TenBangChuyenMonNghiepVu]) VALUES (1, N'Cao cấp')
SET IDENTITY_INSERT [dbo].[BangChuyenMonNghiepVu] OFF
/****** Object:  Table [dbo].[ChucVuChinhQuyen]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ChucVuChinhQuyen]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ChucVuChinhQuyen](
	[MaChucVuChinhQuyen] [int] IDENTITY(1,1) NOT NULL,
	[TenChucVuChinhQuyen] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_ChucVuChinhQuyen] PRIMARY KEY CLUSTERED 
(
	[MaChucVuChinhQuyen] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ChucVu]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ChucVu](
	[MaChucVu] [int] IDENTITY(1,1) NOT NULL,
	[TenChucVu] [nvarchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[MaChucVu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[ChucNang]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ChucNang]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ChucNang](
	[MaChucNang] [int] IDENTITY(1,1) NOT NULL,
	[TenChucNang] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_ChucNang] PRIMARY KEY CLUSTERED 
(
	[MaChucNang] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[CapUyKiem]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CapUyKiem]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CapUyKiem](
	[MaCapUyKiem] [int] IDENTITY(1,1) NOT NULL,
	[TenCapUyKiem] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_CapUyKiem] PRIMARY KEY CLUSTERED 
(
	[MaCapUyKiem] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[CapUy]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CapUy]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CapUy](
	[MaCapUy] [int] IDENTITY(1,1) NOT NULL,
	[TenCapUy] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_CapUy] PRIMARY KEY CLUSTERED 
(
	[MaCapUy] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Huong85]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Huong85]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Huong85](
	[MaHuong] [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[GiaTriHuong] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Huong85] PRIMARY KEY CLUSTERED 
(
	[MaHuong] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[HocVi]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HocVi]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HocVi](
	[MaHocVi] [int] IDENTITY(1,1) NOT NULL,
	[TenHocVi] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_HocVi] PRIMARY KEY CLUSTERED 
(
	[MaHocVi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[HocHam]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HocHam]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HocHam](
	[MaHocHam] [int] IDENTITY(1,1) NOT NULL,
	[TenHocHam] [nvarchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_HocHam] PRIMARY KEY CLUSTERED 
(
	[MaHocHam] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[HoatDongKinhTe]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HoatDongKinhTe]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HoatDongKinhTe](
	[MaHoatDongKinhTe] [int] NOT NULL,
	[TenHoatDongKinhTe] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_HoatDongKinhTe] PRIMARY KEY CLUSTERED 
(
	[MaHoatDongKinhTe] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[HinhThucKyLuat]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HinhThucKyLuat]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HinhThucKyLuat](
	[MaHinhThucKyLuat] [int] IDENTITY(1,1) NOT NULL,
	[TenHinhThucKyLuat] [nvarchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_HinhThucKyLuat] PRIMARY KEY CLUSTERED 
(
	[MaHinhThucKyLuat] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[HinhThucKhenThuong]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HinhThucKhenThuong]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HinhThucKhenThuong](
	[MaHinhThucKhenThuong] [int] IDENTITY(1,1) NOT NULL,
	[TenHinhThucKhenThuong] [nvarchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_HinhThucKhenThuong] PRIMARY KEY CLUSTERED 
(
	[MaHinhThucKhenThuong] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[HinhThucDaoTao]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HinhThucDaoTao]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HinhThucDaoTao](
	[MaHinhThucDaoTao] [int] IDENTITY(1,1) NOT NULL,
	[TenHinhThucDaoTao] [nvarchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_HinhThucDaoTao] PRIMARY KEY CLUSTERED 
(
	[MaHinhThucDaoTao] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[HinhThucBoDonVi]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HinhThucBoDonVi]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HinhThucBoDonVi](
	[MaHinhThu] [int] IDENTITY(1,1) NOT NULL,
	[TenHinhThuc] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_HinhThucBoDonVi] PRIMARY KEY CLUSTERED 
(
	[MaHinhThu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[GioiTinh]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GioiTinh]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GioiTinh](
	[MaGioiTinh] [int] IDENTITY(1,1) NOT NULL,
	[TenGioiTinh] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_GioiTinh] PRIMARY KEY CLUSTERED 
(
	[MaGioiTinh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[PhanLoaiDonVi]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PhanLoaiDonVi]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PhanLoaiDonVi](
	[MaPhanLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenPhanLoai] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_PhanLoaiDonVi] PRIMARY KEY CLUSTERED 
(
	[MaPhanLoai] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[PhanLoaiDonVi] ON
INSERT [dbo].[PhanLoaiDonVi] ([MaPhanLoai], [TenPhanLoai]) VALUES (1, N'Cơ quan cơ sở')
SET IDENTITY_INSERT [dbo].[PhanLoaiDonVi] OFF
/****** Object:  Table [dbo].[NoiDungViPham]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NoiDungViPham]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NoiDungViPham](
	[MaNoiDungViPham] [int] IDENTITY(1,1) NOT NULL,
	[TenNoiDungViPham] [nvarchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_NoiDungViPham] PRIMARY KEY CLUSTERED 
(
	[MaNoiDungViPham] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[NgheNghiep]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NgheNghiep]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NgheNghiep](
	[MaNgheNghiep] [int] IDENTITY(1,1) NOT NULL,
	[TenNgheNghiep] [nvarchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_NgheNghiep] PRIMARY KEY CLUSTERED 
(
	[MaNgheNghiep] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[NgachCongChuc]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NgachCongChuc]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NgachCongChuc](
	[MaNgachCongChuc] [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TenNgachCongChuc] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_NgachLuong] PRIMARY KEY CLUSTERED 
(
	[MaNgachCongChuc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[QuanHe]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QuanHe]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[QuanHe](
	[MaQuanHe] [int] IDENTITY(1,1) NOT NULL,
	[TenQuanHe] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_QuanHe] PRIMARY KEY CLUSTERED 
(
	[MaQuanHe] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[LoaiNguoiDung]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoaiNguoiDung]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LoaiNguoiDung](
	[MaQuyen] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_LoaiNGuoiDung] PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[LoaiHuyHieu]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoaiHuyHieu]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LoaiHuyHieu](
	[MaLoaiHuyHieu] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiHuyHieu] [nvarchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_HuyHieu] PRIMARY KEY CLUSTERED 
(
	[MaLoaiHuyHieu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[LoaiDonVi]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoaiDonVi]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LoaiDonVi](
	[MaLoaiDonVi] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiDonVi] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_LoaiDonVi] PRIMARY KEY CLUSTERED 
(
	[MaLoaiDonVi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[LoaiDonVi] ON
INSERT [dbo].[LoaiDonVi] ([MaLoaiDonVi], [TenLoaiDonVi]) VALUES (3, N'Cơ quan hành chính')
SET IDENTITY_INSERT [dbo].[LoaiDonVi] OFF
/****** Object:  Table [dbo].[LoaiCanBoQuaCacThoiKi]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoaiCanBoQuaCacThoiKi]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LoaiCanBoQuaCacThoiKi](
	[MaLoaiCanBoQuaCacThoiKiMa] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiCanBoQuaCacThoiKi] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_LoaiCanBoQuaCacThoiKi] PRIMARY KEY CLUSTERED 
(
	[MaLoaiCanBoQuaCacThoiKiMa] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[DanToc]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DanToc]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DanToc](
	[MaDanToc] [int] IDENTITY(1,1) NOT NULL,
	[TenDanToc] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_DanToc] PRIMARY KEY CLUSTERED 
(
	[MaDanToc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[DanToc] ON
INSERT [dbo].[DanToc] ([MaDanToc], [TenDanToc]) VALUES (1, N'Kinh')
INSERT [dbo].[DanToc] ([MaDanToc], [TenDanToc]) VALUES (2, N'Hoa')
SET IDENTITY_INSERT [dbo].[DanToc] OFF
/****** Object:  Table [dbo].[LoaiThuongBinh]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoaiThuongBinh]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LoaiThuongBinh](
	[MaLoaiThuongBinh] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiThuongBinh] [nvarchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_ThuongBinh] PRIMARY KEY CLUSTERED 
(
	[MaLoaiThuongBinh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[ThanhPhanGiaDinh]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ThanhPhanGiaDinh]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ThanhPhanGiaDinh](
	[MaThanhPhanGiaDinh] [int] IDENTITY(1,1) NOT NULL,
	[TenThanhPhanGiaDinh] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_ThanhPhanXuatThan] PRIMARY KEY CLUSTERED 
(
	[MaThanhPhanGiaDinh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[QuocGia]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QuocGia]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[QuocGia](
	[MaQuocGia] [int] IDENTITY(1,1) NOT NULL,
	[TenQuocGia] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_QuocGia] PRIMARY KEY CLUSTERED 
(
	[MaQuocGia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[TonGiao]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TonGiao]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TonGiao](
	[MaTonGiao] [int] IDENTITY(1,1) NOT NULL,
	[TenTonGiao] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_TonGiao] PRIMARY KEY CLUSTERED 
(
	[MaTonGiao] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[TinhTrangSucKhoe]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TinhTrangSucKhoe]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TinhTrangSucKhoe](
	[MaTinhTrangSucKhoe] [int] IDENTITY(1,1) NOT NULL,
	[TenTinhTrangSucKhoe] [nvarchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_TinhTrangSucKhoe] PRIMARY KEY CLUSTERED 
(
	[MaTinhTrangSucKhoe] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[TinhThanh]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TinhThanh]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TinhThanh](
	[MaTinh] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TenTinh] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_TinhThanh] PRIMARY KEY CLUSTERED 
(
	[MaTinh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[TinhThanh] ([MaTinh], [TenTinh]) VALUES (N'039', N'Hà Tĩnh')
INSERT [dbo].[TinhThanh] ([MaTinh], [TenTinh]) VALUES (N'055', N'TPHCM')
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NguoiDung]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NguoiDung](
	[MaNguoiDung] [int] IDENTITY(1,1) NOT NULL,
	[MaQuyen] [int] NOT NULL,
	[TenNguoiDung] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TenDangNhap] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[MatKhau] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[MoTa] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NgayDangKi] [date] NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[QuanHuyen]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QuanHuyen]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[QuanHuyen](
	[MaQuanHuyen] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TenQuanHuyen] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MaTinh] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_QuanHuyen] PRIMARY KEY CLUSTERED 
(
	[MaQuanHuyen] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[QuanHuyen] ([MaQuanHuyen], [TenQuanHuyen], [MaTinh]) VALUES (N'001', N'Thạch Hà', N'039')
/****** Object:  Table [dbo].[LoaiNguoiDung_ChucNang]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoaiNguoiDung_ChucNang]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LoaiNguoiDung_ChucNang](
	[MaChucNangNguoiDung] [int] IDENTITY(1,1) NOT NULL,
	[MaQuyen] [int] NOT NULL,
	[MaChucNang] [int] NOT NULL,
 CONSTRAINT [PK_LoaiNguoiDung_ChucNang] PRIMARY KEY CLUSTERED 
(
	[MaChucNangNguoiDung] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[DonVi]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DonVi]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DonVi](
	[MaDonVi] [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[MaLoaiDonVi] [int] NULL,
	[TenDonVi] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[MaQuanHuyen] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MaPhanLoaiDonVi] [int] NULL,
 CONSTRAINT [PK_DonVi] PRIMARY KEY CLUSTERED 
(
	[MaDonVi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[DonVi] ([MaDonVi], [MaLoaiDonVi], [TenDonVi], [MaQuanHuyen], [MaPhanLoaiDonVi]) VALUES (N'001       ', 3, N'Huyện ủy Thạch Hà', N'001', 1)
/****** Object:  Table [dbo].[PhuongXa]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PhuongXa]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PhuongXa](
	[MaPhuongXa] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TenPhuongXa] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MaQuanHuyen] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_PhuongXa] PRIMARY KEY CLUSTERED 
(
	[MaPhuongXa] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[KhoiXom]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KhoiXom]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[KhoiXom](
	[MaKhoiXom] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TenKhoiXom] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MaPhuongXa] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_KhoiXom] PRIMARY KEY CLUSTERED 
(
	[MaKhoiXom] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NhanVien]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NhanVien](
	[MaNhanVien] [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[MaGioiTinh] [int] NULL,
	[MaDonVi] [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MaDanToc] [int] NULL,
	[MaTonGiao] [int] NULL,
	[MaThanhPhanGiaDinh] [int] NULL,
	[MaNgheNghiepTruocKhiDuocTuyenDung] [int] NULL,
	[MaBangGiaoDucPhoThong] [int] NULL,
	[MaBangChuyenMonNghiepVu] [int] NULL,
	[MaBangLyLuanChinhTri] [int] NULL,
	[MaBangNgoaiNgu] [int] NULL,
	[MaHocVi] [int] NULL,
	[MaHocHam] [int] NULL,
	[MaTinhTrangSucKhoe] [int] NULL,
	[MaLoaiThuongBinh] [int] NULL,
	[MaChucVu] [int] NULL,
	[HinhAnh] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HoTenKhaiSinh] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HoTenDangDung] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NgaySinh] [date] NULL,
	[NoiSinh] [nvarchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[QueQuan] [nvarchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HoKhau] [nvarchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TamTru] [nvarchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CongViecChinh] [nvarchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NgayVaoDang] [date] NULL,
	[VaoDangTaiChiBo] [nvarchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NguoiGioiThieu1] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ChucVuNguoi1] [nvarchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NguoiGioiThieu2] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ChucVuNguoi2] [nvarchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NgayChinhThuc] [date] NULL,
	[ChinhThucTaiChiBo] [nvarchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NgayTuyenDung] [date] NULL,
	[CoQuanTuyenDung] [nvarchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NgayVaoDoan] [date] NULL,
	[ChiDoan] [nvarchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ThamGiaCTXH] [nvarchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NgayNhapNgu] [date] NULL,
	[NgayXuatNgu] [date] NULL,
	[GiaDinhLietSy] [bit] NULL,
	[GiaDinhCoCongVoiCM] [bit] NULL,
	[SoCMND] [nvarchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NgayMienSHD] [date] NULL,
	[ConSinhHoat] [bit] NULL,
	[SoDienThoai] [nvarchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNhanVien] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[ThanNhan]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ThanNhan]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ThanNhan](
	[MaThanNhan] [int] IDENTITY(1,1) NOT NULL,
	[MaQuanHe] [int] NULL,
	[MaNhanVien] [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TenThanNhan] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NamSinh] [int] NULL,
	[ThongTinCaNhan] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_ThanNhanMoi] PRIMARY KEY CLUSTERED 
(
	[MaThanNhan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[QuaTrinhDaoTao]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[QuaTrinhDaoTao]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[QuaTrinhDaoTao](
	[MaQuaTrinhDaoTao] [int] IDENTITY(1,1) NOT NULL,
	[MaNhanVien] [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[MaNuocDaoTao] [int] NULL,
	[MaHinhThucDaoTao] [int] NULL,
	[MaBangGiaoDucPhoThong] [int] NULL,
	[MaBangLyLuanChinhTri] [int] NULL,
	[MaBangNgoaiNgu] [int] NULL,
	[MaBangChuyenMonNghiepVu] [int] NULL,
	[MaHocHam] [int] NULL,
	[ThoiGianBatDau] [date] NULL,
	[ThoiGianKetThuc] [date] NULL,
	[TenTruong] [nvarchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NganhHoc] [nvarchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_QuaTrinhDaoTao] PRIMARY KEY CLUSTERED 
(
	[MaQuaTrinhDaoTao] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[HoanCanhKinhTe]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HoanCanhKinhTe]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HoanCanhKinhTe](
	[MaHoanCanhKinhTe] [int] IDENTITY(1,1) NOT NULL,
	[MaNhanVien] [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TongThuNhapGiaDinh] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NhaODuocCap] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NhaOTuMua] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DatDuocCap] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MaHoatDongKinhTe] [int] NULL,
	[DienTichDatKinhDoanhTrangTrai] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TaiSanCoGiaTri] [nvarchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BinhQuanDauNguoi] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DienTichSuDungNhaO] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DienTichSuDungDatO] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DatTuMua] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SoLaoDongThue] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[GiaTriTaiSan] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_HoanCanhKinhTe] PRIMARY KEY CLUSTERED 
(
	[MaHoanCanhKinhTe] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[LuongPhuCap]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LuongPhuCap]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LuongPhuCap](
	[MaLuongPhuCap] [int] IDENTITY(1,1) NOT NULL,
	[MaNhanVien] [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MaNgachCongChuc] [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MaHuong85] [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[BacLuong] [float] NULL,
	[HeSoLuong] [float] NULL,
	[ChenhLechBaoLuuHeSoLuong] [float] NULL,
	[HuongTuNgay] [date] NULL,
	[MocTinhNangLuongLanSau] [date] NULL,
	[SoTheATM] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NgayNangLuong] [date] NULL,
	[HeSoPhuCapChucVu] [float] NULL,
	[HeSoPhuCapThamNienVuotKhung] [float] NULL,
	[HeSoPhuCapKiemNhiem] [float] NULL,
	[HeSoPhuCapKhac] [float] NULL,
	[SoSoBHXH] [float] NULL,
	[NgayBatDauDongBHXH] [float] NULL,
	[NganHang] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_LuongPhuCap] PRIMARY KEY CLUSTERED 
(
	[MaLuongPhuCap] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[KyLuat]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KyLuat]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[KyLuat](
	[MaKyLuat] [int] NOT NULL,
	[MaNhanVien] [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[MaHinhThucKyLuat] [int] NOT NULL,
	[MaNoiDungViPham] [int] NOT NULL,
	[NamKyLuat] [int] NULL,
	[LyDo] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_KyLuat_1] PRIMARY KEY CLUSTERED 
(
	[MaKyLuat] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[KhenThuong]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KhenThuong]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[KhenThuong](
	[MaKhenThuong] [int] IDENTITY(1,1) NOT NULL,
	[MaNhanVien] [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[MaHinhThucKhenThuong] [int] NOT NULL,
	[NamNhan] [int] NULL,
	[GhiChu] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_KhenThuong_1] PRIMARY KEY CLUSTERED 
(
	[MaKhenThuong] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[HuyHieu]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HuyHieu]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HuyHieu](
	[MaHuyHieu] [int] IDENTITY(1,1) NOT NULL,
	[MaNhanVien] [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[MaLoaiHuyHieu] [int] NOT NULL,
	[NamNhan] [int] NULL,
	[SoHuyHieu] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[GhiChu] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_HuyHieu_1] PRIMARY KEY CLUSTERED 
(
	[MaHuyHieu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[CanBoQuaCacThoiKi]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CanBoQuaCacThoiKi]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CanBoQuaCacThoiKi](
	[MaCanBo] [int] IDENTITY(1,1) NOT NULL,
	[MaLoaiCanBo] [int] NULL,
	[MaDonVi] [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MaNhanVien] [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_CanBoQuaCacThoiKi_1] PRIMARY KEY CLUSTERED 
(
	[MaCanBo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[ChuyenDonVi]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ChuyenDonVi]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ChuyenDonVi](
	[MaCanBo] [int] NOT NULL,
	[MaDonViDen] [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_ChuyenDonVi] PRIMARY KEY CLUSTERED 
(
	[MaCanBo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[CanBoVeHuuChuyenDen]    Script Date: 06/05/2011 20:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CanBoVeHuuChuyenDen]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CanBoVeHuuChuyenDen](
	[MaCanBo] [int] NOT NULL,
	[HoTen] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NgaySinh] [date] NULL,
	[ConSong] [bit] NULL,
	[QueQuan] [nvarchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NoiOHienNay] [nvarchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ChucVuDaGiu] [nvarchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CoQuanDaLamViec] [nvarchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NgayVaoDang] [date] NULL,
	[NgayChinhThuc] [date] NULL,
	[DiDong] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[MayBan] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DanhHieuDaDuocPhong] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[QuaTrinhCongTac] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ThamGiaChinhTriXaHoi] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_CanBoQuaCacThoiKi] PRIMARY KEY CLUSTERED 
(
	[MaCanBo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  ForeignKey [FK_CanBoQuaCacThoiKi_DonVi]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CanBoQuaCacThoiKi_DonVi]') AND parent_object_id = OBJECT_ID(N'[dbo].[CanBoQuaCacThoiKi]'))
ALTER TABLE [dbo].[CanBoQuaCacThoiKi]  WITH CHECK ADD  CONSTRAINT [FK_CanBoQuaCacThoiKi_DonVi] FOREIGN KEY([MaDonVi])
REFERENCES [dbo].[DonVi] ([MaDonVi])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CanBoQuaCacThoiKi_DonVi]') AND parent_object_id = OBJECT_ID(N'[dbo].[CanBoQuaCacThoiKi]'))
ALTER TABLE [dbo].[CanBoQuaCacThoiKi] CHECK CONSTRAINT [FK_CanBoQuaCacThoiKi_DonVi]
GO
/****** Object:  ForeignKey [FK_CanBoQuaCacThoiKi_LoaiCanBoQuaCacThoiKi]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CanBoQuaCacThoiKi_LoaiCanBoQuaCacThoiKi]') AND parent_object_id = OBJECT_ID(N'[dbo].[CanBoQuaCacThoiKi]'))
ALTER TABLE [dbo].[CanBoQuaCacThoiKi]  WITH CHECK ADD  CONSTRAINT [FK_CanBoQuaCacThoiKi_LoaiCanBoQuaCacThoiKi] FOREIGN KEY([MaLoaiCanBo])
REFERENCES [dbo].[LoaiCanBoQuaCacThoiKi] ([MaLoaiCanBoQuaCacThoiKiMa])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CanBoQuaCacThoiKi_LoaiCanBoQuaCacThoiKi]') AND parent_object_id = OBJECT_ID(N'[dbo].[CanBoQuaCacThoiKi]'))
ALTER TABLE [dbo].[CanBoQuaCacThoiKi] CHECK CONSTRAINT [FK_CanBoQuaCacThoiKi_LoaiCanBoQuaCacThoiKi]
GO
/****** Object:  ForeignKey [FK_CanBoQuaCacThoiKi_NhanVien]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CanBoQuaCacThoiKi_NhanVien]') AND parent_object_id = OBJECT_ID(N'[dbo].[CanBoQuaCacThoiKi]'))
ALTER TABLE [dbo].[CanBoQuaCacThoiKi]  WITH CHECK ADD  CONSTRAINT [FK_CanBoQuaCacThoiKi_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CanBoQuaCacThoiKi_NhanVien]') AND parent_object_id = OBJECT_ID(N'[dbo].[CanBoQuaCacThoiKi]'))
ALTER TABLE [dbo].[CanBoQuaCacThoiKi] CHECK CONSTRAINT [FK_CanBoQuaCacThoiKi_NhanVien]
GO
/****** Object:  ForeignKey [FK_CanBoVeHuuChuyenDen_CanBoQuaCacThoiKi]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CanBoVeHuuChuyenDen_CanBoQuaCacThoiKi]') AND parent_object_id = OBJECT_ID(N'[dbo].[CanBoVeHuuChuyenDen]'))
ALTER TABLE [dbo].[CanBoVeHuuChuyenDen]  WITH CHECK ADD  CONSTRAINT [FK_CanBoVeHuuChuyenDen_CanBoQuaCacThoiKi] FOREIGN KEY([MaCanBo])
REFERENCES [dbo].[CanBoQuaCacThoiKi] ([MaCanBo])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CanBoVeHuuChuyenDen_CanBoQuaCacThoiKi]') AND parent_object_id = OBJECT_ID(N'[dbo].[CanBoVeHuuChuyenDen]'))
ALTER TABLE [dbo].[CanBoVeHuuChuyenDen] CHECK CONSTRAINT [FK_CanBoVeHuuChuyenDen_CanBoQuaCacThoiKi]
GO
/****** Object:  ForeignKey [FK_ChuyenDonVi_CanBoQuaCacThoiKi]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ChuyenDonVi_CanBoQuaCacThoiKi]') AND parent_object_id = OBJECT_ID(N'[dbo].[ChuyenDonVi]'))
ALTER TABLE [dbo].[ChuyenDonVi]  WITH CHECK ADD  CONSTRAINT [FK_ChuyenDonVi_CanBoQuaCacThoiKi] FOREIGN KEY([MaCanBo])
REFERENCES [dbo].[CanBoQuaCacThoiKi] ([MaCanBo])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ChuyenDonVi_CanBoQuaCacThoiKi]') AND parent_object_id = OBJECT_ID(N'[dbo].[ChuyenDonVi]'))
ALTER TABLE [dbo].[ChuyenDonVi] CHECK CONSTRAINT [FK_ChuyenDonVi_CanBoQuaCacThoiKi]
GO
/****** Object:  ForeignKey [FK_ChuyenDonVi_DonViDen]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ChuyenDonVi_DonViDen]') AND parent_object_id = OBJECT_ID(N'[dbo].[ChuyenDonVi]'))
ALTER TABLE [dbo].[ChuyenDonVi]  WITH CHECK ADD  CONSTRAINT [FK_ChuyenDonVi_DonViDen] FOREIGN KEY([MaDonViDen])
REFERENCES [dbo].[DonVi] ([MaDonVi])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ChuyenDonVi_DonViDen]') AND parent_object_id = OBJECT_ID(N'[dbo].[ChuyenDonVi]'))
ALTER TABLE [dbo].[ChuyenDonVi] CHECK CONSTRAINT [FK_ChuyenDonVi_DonViDen]
GO
/****** Object:  ForeignKey [FK_DonVi_LoaiDonVi]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DonVi_LoaiDonVi]') AND parent_object_id = OBJECT_ID(N'[dbo].[DonVi]'))
ALTER TABLE [dbo].[DonVi]  WITH CHECK ADD  CONSTRAINT [FK_DonVi_LoaiDonVi] FOREIGN KEY([MaLoaiDonVi])
REFERENCES [dbo].[LoaiDonVi] ([MaLoaiDonVi])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DonVi_LoaiDonVi]') AND parent_object_id = OBJECT_ID(N'[dbo].[DonVi]'))
ALTER TABLE [dbo].[DonVi] CHECK CONSTRAINT [FK_DonVi_LoaiDonVi]
GO
/****** Object:  ForeignKey [FK_DonVi_PhanLoaiDonVi]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DonVi_PhanLoaiDonVi]') AND parent_object_id = OBJECT_ID(N'[dbo].[DonVi]'))
ALTER TABLE [dbo].[DonVi]  WITH CHECK ADD  CONSTRAINT [FK_DonVi_PhanLoaiDonVi] FOREIGN KEY([MaPhanLoaiDonVi])
REFERENCES [dbo].[PhanLoaiDonVi] ([MaPhanLoai])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DonVi_PhanLoaiDonVi]') AND parent_object_id = OBJECT_ID(N'[dbo].[DonVi]'))
ALTER TABLE [dbo].[DonVi] CHECK CONSTRAINT [FK_DonVi_PhanLoaiDonVi]
GO
/****** Object:  ForeignKey [FK_DonVi_QuanHuyen]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DonVi_QuanHuyen]') AND parent_object_id = OBJECT_ID(N'[dbo].[DonVi]'))
ALTER TABLE [dbo].[DonVi]  WITH CHECK ADD  CONSTRAINT [FK_DonVi_QuanHuyen] FOREIGN KEY([MaQuanHuyen])
REFERENCES [dbo].[QuanHuyen] ([MaQuanHuyen])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DonVi_QuanHuyen]') AND parent_object_id = OBJECT_ID(N'[dbo].[DonVi]'))
ALTER TABLE [dbo].[DonVi] CHECK CONSTRAINT [FK_DonVi_QuanHuyen]
GO
/****** Object:  ForeignKey [FK_HoanCanhKinhTe_HoatDongKinhTe]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_HoanCanhKinhTe_HoatDongKinhTe]') AND parent_object_id = OBJECT_ID(N'[dbo].[HoanCanhKinhTe]'))
ALTER TABLE [dbo].[HoanCanhKinhTe]  WITH CHECK ADD  CONSTRAINT [FK_HoanCanhKinhTe_HoatDongKinhTe] FOREIGN KEY([MaHoatDongKinhTe])
REFERENCES [dbo].[HoatDongKinhTe] ([MaHoatDongKinhTe])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_HoanCanhKinhTe_HoatDongKinhTe]') AND parent_object_id = OBJECT_ID(N'[dbo].[HoanCanhKinhTe]'))
ALTER TABLE [dbo].[HoanCanhKinhTe] CHECK CONSTRAINT [FK_HoanCanhKinhTe_HoatDongKinhTe]
GO
/****** Object:  ForeignKey [FK_HoanCanhKinhTe_NhanVien]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_HoanCanhKinhTe_NhanVien]') AND parent_object_id = OBJECT_ID(N'[dbo].[HoanCanhKinhTe]'))
ALTER TABLE [dbo].[HoanCanhKinhTe]  WITH CHECK ADD  CONSTRAINT [FK_HoanCanhKinhTe_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_HoanCanhKinhTe_NhanVien]') AND parent_object_id = OBJECT_ID(N'[dbo].[HoanCanhKinhTe]'))
ALTER TABLE [dbo].[HoanCanhKinhTe] CHECK CONSTRAINT [FK_HoanCanhKinhTe_NhanVien]
GO
/****** Object:  ForeignKey [FK_HuyHieu_LoaiHuyHieu]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_HuyHieu_LoaiHuyHieu]') AND parent_object_id = OBJECT_ID(N'[dbo].[HuyHieu]'))
ALTER TABLE [dbo].[HuyHieu]  WITH CHECK ADD  CONSTRAINT [FK_HuyHieu_LoaiHuyHieu] FOREIGN KEY([MaLoaiHuyHieu])
REFERENCES [dbo].[LoaiHuyHieu] ([MaLoaiHuyHieu])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_HuyHieu_LoaiHuyHieu]') AND parent_object_id = OBJECT_ID(N'[dbo].[HuyHieu]'))
ALTER TABLE [dbo].[HuyHieu] CHECK CONSTRAINT [FK_HuyHieu_LoaiHuyHieu]
GO
/****** Object:  ForeignKey [FK_HuyHieu_NhanVien]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_HuyHieu_NhanVien]') AND parent_object_id = OBJECT_ID(N'[dbo].[HuyHieu]'))
ALTER TABLE [dbo].[HuyHieu]  WITH CHECK ADD  CONSTRAINT [FK_HuyHieu_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_HuyHieu_NhanVien]') AND parent_object_id = OBJECT_ID(N'[dbo].[HuyHieu]'))
ALTER TABLE [dbo].[HuyHieu] CHECK CONSTRAINT [FK_HuyHieu_NhanVien]
GO
/****** Object:  ForeignKey [FK_KhenThuong_HinhThucKhenThuong]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_KhenThuong_HinhThucKhenThuong]') AND parent_object_id = OBJECT_ID(N'[dbo].[KhenThuong]'))
ALTER TABLE [dbo].[KhenThuong]  WITH CHECK ADD  CONSTRAINT [FK_KhenThuong_HinhThucKhenThuong] FOREIGN KEY([MaHinhThucKhenThuong])
REFERENCES [dbo].[HinhThucKhenThuong] ([MaHinhThucKhenThuong])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_KhenThuong_HinhThucKhenThuong]') AND parent_object_id = OBJECT_ID(N'[dbo].[KhenThuong]'))
ALTER TABLE [dbo].[KhenThuong] CHECK CONSTRAINT [FK_KhenThuong_HinhThucKhenThuong]
GO
/****** Object:  ForeignKey [FK_KhenThuong_NhanVien]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_KhenThuong_NhanVien]') AND parent_object_id = OBJECT_ID(N'[dbo].[KhenThuong]'))
ALTER TABLE [dbo].[KhenThuong]  WITH CHECK ADD  CONSTRAINT [FK_KhenThuong_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_KhenThuong_NhanVien]') AND parent_object_id = OBJECT_ID(N'[dbo].[KhenThuong]'))
ALTER TABLE [dbo].[KhenThuong] CHECK CONSTRAINT [FK_KhenThuong_NhanVien]
GO
/****** Object:  ForeignKey [FK_KhoiXom_PhuongXa]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_KhoiXom_PhuongXa]') AND parent_object_id = OBJECT_ID(N'[dbo].[KhoiXom]'))
ALTER TABLE [dbo].[KhoiXom]  WITH CHECK ADD  CONSTRAINT [FK_KhoiXom_PhuongXa] FOREIGN KEY([MaPhuongXa])
REFERENCES [dbo].[PhuongXa] ([MaPhuongXa])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_KhoiXom_PhuongXa]') AND parent_object_id = OBJECT_ID(N'[dbo].[KhoiXom]'))
ALTER TABLE [dbo].[KhoiXom] CHECK CONSTRAINT [FK_KhoiXom_PhuongXa]
GO
/****** Object:  ForeignKey [FK_KyLuat_HinhThucKyLuat]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_KyLuat_HinhThucKyLuat]') AND parent_object_id = OBJECT_ID(N'[dbo].[KyLuat]'))
ALTER TABLE [dbo].[KyLuat]  WITH CHECK ADD  CONSTRAINT [FK_KyLuat_HinhThucKyLuat] FOREIGN KEY([MaHinhThucKyLuat])
REFERENCES [dbo].[HinhThucKyLuat] ([MaHinhThucKyLuat])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_KyLuat_HinhThucKyLuat]') AND parent_object_id = OBJECT_ID(N'[dbo].[KyLuat]'))
ALTER TABLE [dbo].[KyLuat] CHECK CONSTRAINT [FK_KyLuat_HinhThucKyLuat]
GO
/****** Object:  ForeignKey [FK_KyLuat_NhanVien]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_KyLuat_NhanVien]') AND parent_object_id = OBJECT_ID(N'[dbo].[KyLuat]'))
ALTER TABLE [dbo].[KyLuat]  WITH CHECK ADD  CONSTRAINT [FK_KyLuat_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_KyLuat_NhanVien]') AND parent_object_id = OBJECT_ID(N'[dbo].[KyLuat]'))
ALTER TABLE [dbo].[KyLuat] CHECK CONSTRAINT [FK_KyLuat_NhanVien]
GO
/****** Object:  ForeignKey [FK_KyLuat_NoiDungViPham]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_KyLuat_NoiDungViPham]') AND parent_object_id = OBJECT_ID(N'[dbo].[KyLuat]'))
ALTER TABLE [dbo].[KyLuat]  WITH CHECK ADD  CONSTRAINT [FK_KyLuat_NoiDungViPham] FOREIGN KEY([MaNoiDungViPham])
REFERENCES [dbo].[NoiDungViPham] ([MaNoiDungViPham])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_KyLuat_NoiDungViPham]') AND parent_object_id = OBJECT_ID(N'[dbo].[KyLuat]'))
ALTER TABLE [dbo].[KyLuat] CHECK CONSTRAINT [FK_KyLuat_NoiDungViPham]
GO
/****** Object:  ForeignKey [FK_LoaiNguoiDung_ChucNang_ChucNang]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LoaiNguoiDung_ChucNang_ChucNang]') AND parent_object_id = OBJECT_ID(N'[dbo].[LoaiNguoiDung_ChucNang]'))
ALTER TABLE [dbo].[LoaiNguoiDung_ChucNang]  WITH CHECK ADD  CONSTRAINT [FK_LoaiNguoiDung_ChucNang_ChucNang] FOREIGN KEY([MaChucNang])
REFERENCES [dbo].[ChucNang] ([MaChucNang])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LoaiNguoiDung_ChucNang_ChucNang]') AND parent_object_id = OBJECT_ID(N'[dbo].[LoaiNguoiDung_ChucNang]'))
ALTER TABLE [dbo].[LoaiNguoiDung_ChucNang] CHECK CONSTRAINT [FK_LoaiNguoiDung_ChucNang_ChucNang]
GO
/****** Object:  ForeignKey [FK_LoaiNguoiDung_ChucNang_LoaiNGuoiDung]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LoaiNguoiDung_ChucNang_LoaiNGuoiDung]') AND parent_object_id = OBJECT_ID(N'[dbo].[LoaiNguoiDung_ChucNang]'))
ALTER TABLE [dbo].[LoaiNguoiDung_ChucNang]  WITH CHECK ADD  CONSTRAINT [FK_LoaiNguoiDung_ChucNang_LoaiNGuoiDung] FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[LoaiNguoiDung] ([MaQuyen])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LoaiNguoiDung_ChucNang_LoaiNGuoiDung]') AND parent_object_id = OBJECT_ID(N'[dbo].[LoaiNguoiDung_ChucNang]'))
ALTER TABLE [dbo].[LoaiNguoiDung_ChucNang] CHECK CONSTRAINT [FK_LoaiNguoiDung_ChucNang_LoaiNGuoiDung]
GO
/****** Object:  ForeignKey [FK_LuongPhuCap_Huong85]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LuongPhuCap_Huong85]') AND parent_object_id = OBJECT_ID(N'[dbo].[LuongPhuCap]'))
ALTER TABLE [dbo].[LuongPhuCap]  WITH CHECK ADD  CONSTRAINT [FK_LuongPhuCap_Huong85] FOREIGN KEY([MaHuong85])
REFERENCES [dbo].[Huong85] ([MaHuong])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LuongPhuCap_Huong85]') AND parent_object_id = OBJECT_ID(N'[dbo].[LuongPhuCap]'))
ALTER TABLE [dbo].[LuongPhuCap] CHECK CONSTRAINT [FK_LuongPhuCap_Huong85]
GO
/****** Object:  ForeignKey [FK_LuongPhuCap_NgachCongChuc]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LuongPhuCap_NgachCongChuc]') AND parent_object_id = OBJECT_ID(N'[dbo].[LuongPhuCap]'))
ALTER TABLE [dbo].[LuongPhuCap]  WITH CHECK ADD  CONSTRAINT [FK_LuongPhuCap_NgachCongChuc] FOREIGN KEY([MaNgachCongChuc])
REFERENCES [dbo].[NgachCongChuc] ([MaNgachCongChuc])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LuongPhuCap_NgachCongChuc]') AND parent_object_id = OBJECT_ID(N'[dbo].[LuongPhuCap]'))
ALTER TABLE [dbo].[LuongPhuCap] CHECK CONSTRAINT [FK_LuongPhuCap_NgachCongChuc]
GO
/****** Object:  ForeignKey [FK_LuongPhuCap_NhanVien]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LuongPhuCap_NhanVien]') AND parent_object_id = OBJECT_ID(N'[dbo].[LuongPhuCap]'))
ALTER TABLE [dbo].[LuongPhuCap]  WITH CHECK ADD  CONSTRAINT [FK_LuongPhuCap_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LuongPhuCap_NhanVien]') AND parent_object_id = OBJECT_ID(N'[dbo].[LuongPhuCap]'))
ALTER TABLE [dbo].[LuongPhuCap] CHECK CONSTRAINT [FK_LuongPhuCap_NhanVien]
GO
/****** Object:  ForeignKey [FK_NguoiDung_LoaiNGuoiDung]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NguoiDung_LoaiNGuoiDung]') AND parent_object_id = OBJECT_ID(N'[dbo].[NguoiDung]'))
ALTER TABLE [dbo].[NguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDung_LoaiNGuoiDung] FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[LoaiNguoiDung] ([MaQuyen])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NguoiDung_LoaiNGuoiDung]') AND parent_object_id = OBJECT_ID(N'[dbo].[NguoiDung]'))
ALTER TABLE [dbo].[NguoiDung] CHECK CONSTRAINT [FK_NguoiDung_LoaiNGuoiDung]
GO
/****** Object:  ForeignKey [FK_NhanVien_BangChuyenMonNghiepVu]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_BangChuyenMonNghiepVu]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_BangChuyenMonNghiepVu] FOREIGN KEY([MaBangChuyenMonNghiepVu])
REFERENCES [dbo].[BangChuyenMonNghiepVu] ([MaBangChuyenMonNghiepVu])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_BangChuyenMonNghiepVu]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_BangChuyenMonNghiepVu]
GO
/****** Object:  ForeignKey [FK_NhanVien_BangGiaoDucPhoThong]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_BangGiaoDucPhoThong]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_BangGiaoDucPhoThong] FOREIGN KEY([MaBangGiaoDucPhoThong])
REFERENCES [dbo].[BangGiaoDucPhoThong] ([MaBangGiaoDucPhoThong])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_BangGiaoDucPhoThong]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_BangGiaoDucPhoThong]
GO
/****** Object:  ForeignKey [FK_NhanVien_BangLyLuanChinhTri]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_BangLyLuanChinhTri]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_BangLyLuanChinhTri] FOREIGN KEY([MaBangLyLuanChinhTri])
REFERENCES [dbo].[BangLyLuanChinhTri] ([MaBangLyLuanChinhTri])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_BangLyLuanChinhTri]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_BangLyLuanChinhTri]
GO
/****** Object:  ForeignKey [FK_NhanVien_BangNgoaiNgu]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_BangNgoaiNgu]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_BangNgoaiNgu] FOREIGN KEY([MaBangNgoaiNgu])
REFERENCES [dbo].[BangNgoaiNgu] ([MaBangNgoaiNgu])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_BangNgoaiNgu]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_BangNgoaiNgu]
GO
/****** Object:  ForeignKey [FK_NhanVien_ChucVu]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_ChucVu]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ChucVu] FOREIGN KEY([MaChucVu])
REFERENCES [dbo].[ChucVu] ([MaChucVu])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_ChucVu]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_ChucVu]
GO
/****** Object:  ForeignKey [FK_NhanVien_DanToc]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_DanToc]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_DanToc] FOREIGN KEY([MaDanToc])
REFERENCES [dbo].[DanToc] ([MaDanToc])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_DanToc]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_DanToc]
GO
/****** Object:  ForeignKey [FK_NhanVien_DonVi]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_DonVi]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_DonVi] FOREIGN KEY([MaDonVi])
REFERENCES [dbo].[DonVi] ([MaDonVi])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_DonVi]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_DonVi]
GO
/****** Object:  ForeignKey [FK_NhanVien_GioiTinh]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_GioiTinh]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_GioiTinh] FOREIGN KEY([MaGioiTinh])
REFERENCES [dbo].[GioiTinh] ([MaGioiTinh])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_GioiTinh]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_GioiTinh]
GO
/****** Object:  ForeignKey [FK_NhanVien_HocHam]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_HocHam]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_HocHam] FOREIGN KEY([MaHocHam])
REFERENCES [dbo].[HocHam] ([MaHocHam])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_HocHam]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_HocHam]
GO
/****** Object:  ForeignKey [FK_NhanVien_HocVi]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_HocVi]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_HocVi] FOREIGN KEY([MaHocVi])
REFERENCES [dbo].[HocVi] ([MaHocVi])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_HocVi]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_HocVi]
GO
/****** Object:  ForeignKey [FK_NhanVien_NgheNghiep]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_NgheNghiep]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_NgheNghiep] FOREIGN KEY([MaNgheNghiepTruocKhiDuocTuyenDung])
REFERENCES [dbo].[NgheNghiep] ([MaNgheNghiep])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_NgheNghiep]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_NgheNghiep]
GO
/****** Object:  ForeignKey [FK_NhanVien_ThanhPhanGiaDinh]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_ThanhPhanGiaDinh]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ThanhPhanGiaDinh] FOREIGN KEY([MaThanhPhanGiaDinh])
REFERENCES [dbo].[ThanhPhanGiaDinh] ([MaThanhPhanGiaDinh])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_ThanhPhanGiaDinh]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_ThanhPhanGiaDinh]
GO
/****** Object:  ForeignKey [FK_NhanVien_ThuongBinh]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_ThuongBinh]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ThuongBinh] FOREIGN KEY([MaLoaiThuongBinh])
REFERENCES [dbo].[LoaiThuongBinh] ([MaLoaiThuongBinh])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_ThuongBinh]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_ThuongBinh]
GO
/****** Object:  ForeignKey [FK_NhanVien_TinhTrangSucKhoe]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_TinhTrangSucKhoe]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_TinhTrangSucKhoe] FOREIGN KEY([MaTinhTrangSucKhoe])
REFERENCES [dbo].[TinhTrangSucKhoe] ([MaTinhTrangSucKhoe])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_TinhTrangSucKhoe]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_TinhTrangSucKhoe]
GO
/****** Object:  ForeignKey [FK_NhanVien_TonGiao]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_TonGiao]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_TonGiao] FOREIGN KEY([MaTonGiao])
REFERENCES [dbo].[TonGiao] ([MaTonGiao])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NhanVien_TonGiao]') AND parent_object_id = OBJECT_ID(N'[dbo].[NhanVien]'))
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_TonGiao]
GO
/****** Object:  ForeignKey [FK_PhuongXa_QuanHuyen]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PhuongXa_QuanHuyen]') AND parent_object_id = OBJECT_ID(N'[dbo].[PhuongXa]'))
ALTER TABLE [dbo].[PhuongXa]  WITH CHECK ADD  CONSTRAINT [FK_PhuongXa_QuanHuyen] FOREIGN KEY([MaQuanHuyen])
REFERENCES [dbo].[QuanHuyen] ([MaQuanHuyen])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PhuongXa_QuanHuyen]') AND parent_object_id = OBJECT_ID(N'[dbo].[PhuongXa]'))
ALTER TABLE [dbo].[PhuongXa] CHECK CONSTRAINT [FK_PhuongXa_QuanHuyen]
GO
/****** Object:  ForeignKey [FK_QuanHuyen_TinhThanh]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuanHuyen_TinhThanh]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuanHuyen]'))
ALTER TABLE [dbo].[QuanHuyen]  WITH CHECK ADD  CONSTRAINT [FK_QuanHuyen_TinhThanh] FOREIGN KEY([MaTinh])
REFERENCES [dbo].[TinhThanh] ([MaTinh])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuanHuyen_TinhThanh]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuanHuyen]'))
ALTER TABLE [dbo].[QuanHuyen] CHECK CONSTRAINT [FK_QuanHuyen_TinhThanh]
GO
/****** Object:  ForeignKey [FK_QuaTrinhDaoTao_BangChuyenMonNghiepVu]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuaTrinhDaoTao_BangChuyenMonNghiepVu]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuaTrinhDaoTao]'))
ALTER TABLE [dbo].[QuaTrinhDaoTao]  WITH CHECK ADD  CONSTRAINT [FK_QuaTrinhDaoTao_BangChuyenMonNghiepVu] FOREIGN KEY([MaBangChuyenMonNghiepVu])
REFERENCES [dbo].[BangChuyenMonNghiepVu] ([MaBangChuyenMonNghiepVu])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuaTrinhDaoTao_BangChuyenMonNghiepVu]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuaTrinhDaoTao]'))
ALTER TABLE [dbo].[QuaTrinhDaoTao] CHECK CONSTRAINT [FK_QuaTrinhDaoTao_BangChuyenMonNghiepVu]
GO
/****** Object:  ForeignKey [FK_QuaTrinhDaoTao_BangGiaoDucPhoThong]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuaTrinhDaoTao_BangGiaoDucPhoThong]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuaTrinhDaoTao]'))
ALTER TABLE [dbo].[QuaTrinhDaoTao]  WITH CHECK ADD  CONSTRAINT [FK_QuaTrinhDaoTao_BangGiaoDucPhoThong] FOREIGN KEY([MaBangGiaoDucPhoThong])
REFERENCES [dbo].[BangGiaoDucPhoThong] ([MaBangGiaoDucPhoThong])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuaTrinhDaoTao_BangGiaoDucPhoThong]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuaTrinhDaoTao]'))
ALTER TABLE [dbo].[QuaTrinhDaoTao] CHECK CONSTRAINT [FK_QuaTrinhDaoTao_BangGiaoDucPhoThong]
GO
/****** Object:  ForeignKey [FK_QuaTrinhDaoTao_BangLyLuanChinhTri]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuaTrinhDaoTao_BangLyLuanChinhTri]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuaTrinhDaoTao]'))
ALTER TABLE [dbo].[QuaTrinhDaoTao]  WITH CHECK ADD  CONSTRAINT [FK_QuaTrinhDaoTao_BangLyLuanChinhTri] FOREIGN KEY([MaBangLyLuanChinhTri])
REFERENCES [dbo].[BangLyLuanChinhTri] ([MaBangLyLuanChinhTri])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuaTrinhDaoTao_BangLyLuanChinhTri]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuaTrinhDaoTao]'))
ALTER TABLE [dbo].[QuaTrinhDaoTao] CHECK CONSTRAINT [FK_QuaTrinhDaoTao_BangLyLuanChinhTri]
GO
/****** Object:  ForeignKey [FK_QuaTrinhDaoTao_BangNgoaiNgu]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuaTrinhDaoTao_BangNgoaiNgu]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuaTrinhDaoTao]'))
ALTER TABLE [dbo].[QuaTrinhDaoTao]  WITH CHECK ADD  CONSTRAINT [FK_QuaTrinhDaoTao_BangNgoaiNgu] FOREIGN KEY([MaBangNgoaiNgu])
REFERENCES [dbo].[BangNgoaiNgu] ([MaBangNgoaiNgu])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuaTrinhDaoTao_BangNgoaiNgu]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuaTrinhDaoTao]'))
ALTER TABLE [dbo].[QuaTrinhDaoTao] CHECK CONSTRAINT [FK_QuaTrinhDaoTao_BangNgoaiNgu]
GO
/****** Object:  ForeignKey [FK_QuaTrinhDaoTao_HinhThucDaoTao]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuaTrinhDaoTao_HinhThucDaoTao]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuaTrinhDaoTao]'))
ALTER TABLE [dbo].[QuaTrinhDaoTao]  WITH CHECK ADD  CONSTRAINT [FK_QuaTrinhDaoTao_HinhThucDaoTao] FOREIGN KEY([MaHinhThucDaoTao])
REFERENCES [dbo].[HinhThucDaoTao] ([MaHinhThucDaoTao])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuaTrinhDaoTao_HinhThucDaoTao]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuaTrinhDaoTao]'))
ALTER TABLE [dbo].[QuaTrinhDaoTao] CHECK CONSTRAINT [FK_QuaTrinhDaoTao_HinhThucDaoTao]
GO
/****** Object:  ForeignKey [FK_QuaTrinhDaoTao_HocHam]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuaTrinhDaoTao_HocHam]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuaTrinhDaoTao]'))
ALTER TABLE [dbo].[QuaTrinhDaoTao]  WITH CHECK ADD  CONSTRAINT [FK_QuaTrinhDaoTao_HocHam] FOREIGN KEY([MaHocHam])
REFERENCES [dbo].[HocHam] ([MaHocHam])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuaTrinhDaoTao_HocHam]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuaTrinhDaoTao]'))
ALTER TABLE [dbo].[QuaTrinhDaoTao] CHECK CONSTRAINT [FK_QuaTrinhDaoTao_HocHam]
GO
/****** Object:  ForeignKey [FK_QuaTrinhDaoTao_NhanVien]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuaTrinhDaoTao_NhanVien]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuaTrinhDaoTao]'))
ALTER TABLE [dbo].[QuaTrinhDaoTao]  WITH CHECK ADD  CONSTRAINT [FK_QuaTrinhDaoTao_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuaTrinhDaoTao_NhanVien]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuaTrinhDaoTao]'))
ALTER TABLE [dbo].[QuaTrinhDaoTao] CHECK CONSTRAINT [FK_QuaTrinhDaoTao_NhanVien]
GO
/****** Object:  ForeignKey [FK_QuaTrinhDaoTao_QuocGia]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuaTrinhDaoTao_QuocGia]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuaTrinhDaoTao]'))
ALTER TABLE [dbo].[QuaTrinhDaoTao]  WITH CHECK ADD  CONSTRAINT [FK_QuaTrinhDaoTao_QuocGia] FOREIGN KEY([MaNuocDaoTao])
REFERENCES [dbo].[QuocGia] ([MaQuocGia])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_QuaTrinhDaoTao_QuocGia]') AND parent_object_id = OBJECT_ID(N'[dbo].[QuaTrinhDaoTao]'))
ALTER TABLE [dbo].[QuaTrinhDaoTao] CHECK CONSTRAINT [FK_QuaTrinhDaoTao_QuocGia]
GO
/****** Object:  ForeignKey [FK_ThanNhanMoi_NhanVien]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ThanNhanMoi_NhanVien]') AND parent_object_id = OBJECT_ID(N'[dbo].[ThanNhan]'))
ALTER TABLE [dbo].[ThanNhan]  WITH CHECK ADD  CONSTRAINT [FK_ThanNhanMoi_NhanVien] FOREIGN KEY([MaNhanVien])
REFERENCES [dbo].[NhanVien] ([MaNhanVien])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ThanNhanMoi_NhanVien]') AND parent_object_id = OBJECT_ID(N'[dbo].[ThanNhan]'))
ALTER TABLE [dbo].[ThanNhan] CHECK CONSTRAINT [FK_ThanNhanMoi_NhanVien]
GO
/****** Object:  ForeignKey [FK_ThanNhanMoi_QuanHe]    Script Date: 06/05/2011 20:36:03 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ThanNhanMoi_QuanHe]') AND parent_object_id = OBJECT_ID(N'[dbo].[ThanNhan]'))
ALTER TABLE [dbo].[ThanNhan]  WITH CHECK ADD  CONSTRAINT [FK_ThanNhanMoi_QuanHe] FOREIGN KEY([MaQuanHe])
REFERENCES [dbo].[QuanHe] ([MaQuanHe])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ThanNhanMoi_QuanHe]') AND parent_object_id = OBJECT_ID(N'[dbo].[ThanNhan]'))
ALTER TABLE [dbo].[ThanNhan] CHECK CONSTRAINT [FK_ThanNhanMoi_QuanHe]
GO
