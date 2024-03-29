﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QuanLyHoSoCongChuc.Repositories
{
	#region using
	using QuanLyHoSoCongChuc.Models;
    using QuanLyHoSoCongChuc.Utils;
    using QuanLyHoSoCongChuc.DataManager;
	#endregion
	public class CanBoQuaCacThoiKiRepository
	{
		public static List<CanBoQuaCacThoiKi> SelectAll()
		{
			return DataContext.Instance.CanBoQuaCacThoiKis.ToList();
		}

		public static CanBoQuaCacThoiKi SelectByID(int macanbo)
		{
			return DataContext.Instance.CanBoQuaCacThoiKis.FirstOrDefault(item => item.MaCanBo == macanbo );
		}

		public static bool Insert(CanBoQuaCacThoiKi obj)
		{
			try
			{
				DataContext.Instance.CanBoQuaCacThoiKis.AddObject(obj);
				DataContext.Instance.SaveChanges();
				return true;
			}
			catch
			{
				return false;
			}
		}

		public static bool Delete(int macanbo)
		{
			try
			{
				var delitem = DataContext.Instance.CanBoQuaCacThoiKis.FirstOrDefault(item => item.MaCanBo == macanbo );
				DataContext.Instance.CanBoQuaCacThoiKis.DeleteObject(delitem);
				DataContext.Instance.SaveChanges();
				return true;
			}
			catch
			{
				return false;
			}
		}

		public static bool Save()
		{
			try
			{
				DataContext.Instance.SaveChanges();
				return true;
			}
			catch
			{
				return false;
			}
		}

		public static List<CanBoQuaCacThoiKi> RetrieveByID(int macanbo)
		{
			return (from item in DataContext.Instance.CanBoQuaCacThoiKis where  item.MaCanBo == macanbo  select item).ToList();
		}

		public static List<CanBoQuaCacThoiKi> SelectByMaLoaiCanBo(int maloaicanbo)
		{
			var lstItem = (from item in DataContext.Instance.CanBoQuaCacThoiKis where item.MaLoaiCanBo == maloaicanbo select item).ToList();
			return lstItem;
		}

		public static List<CanBoQuaCacThoiKi> SelectByMaDonVi(string madonvi)
		{
			var lstItem = (from item in DataContext.Instance.CanBoQuaCacThoiKis where item.MaDonVi == madonvi select item).ToList();
			return lstItem;
		}

        public static List<CanBoQuaCacThoiKi> SelectCanBoQuaCacThoiKi(string madonvi, EnumLoaiCanBoQuaCacThoiKi loaicanbo)
        {
            var lstItem = new List<CanBoQuaCacThoiKi>();
            switch (loaicanbo)
            {
                case EnumLoaiCanBoQuaCacThoiKi.CHUYEN_DONVI:
                    lstItem = (from item in DataContext.Instance.CanBoQuaCacThoiKis where item.MaDonVi == madonvi && item.LoaiCanBoQuaCacThoiKi.TenLoaiCanBoQuaCacThoiKi.ToUpper() == GlobalPhieuBaos.CHUYEN_DONVI select item).ToList();
                    break;
                case EnumLoaiCanBoQuaCacThoiKi.BO_DONVI:
                    lstItem = (from item in DataContext.Instance.CanBoQuaCacThoiKis where item.MaDonVi == madonvi && item.LoaiCanBoQuaCacThoiKi.TenLoaiCanBoQuaCacThoiKi.ToUpper() == GlobalPhieuBaos.BO_DONVI select item).ToList();
                    break;
                case EnumLoaiCanBoQuaCacThoiKi.TUTRAN:
                    lstItem = (from item in DataContext.Instance.CanBoQuaCacThoiKis where item.MaDonVi == madonvi && item.LoaiCanBoQuaCacThoiKi.TenLoaiCanBoQuaCacThoiKi.ToUpper() == GlobalPhieuBaos.TUTRAN select item).ToList();
                    break;
            }
            
            return lstItem;
        }

        public static List<CanBoQuaCacThoiKi> SelectCanBoQuaCacThoiKi(EnumLoaiCanBoQuaCacThoiKi loaicanbo)
        {
            var lstItem = new List<CanBoQuaCacThoiKi>();
            switch (loaicanbo)
            {
                case EnumLoaiCanBoQuaCacThoiKi.CHUYEN_DONVI:
                    lstItem = (from item in DataContext.Instance.CanBoQuaCacThoiKis where item.LoaiCanBoQuaCacThoiKi.TenLoaiCanBoQuaCacThoiKi.ToUpper() == GlobalPhieuBaos.CHUYEN_DONVI select item).ToList();
                    break;
                case EnumLoaiCanBoQuaCacThoiKi.BO_DONVI:
                    lstItem = (from item in DataContext.Instance.CanBoQuaCacThoiKis where item.LoaiCanBoQuaCacThoiKi.TenLoaiCanBoQuaCacThoiKi.ToUpper() == GlobalPhieuBaos.BO_DONVI select item).ToList();
                    break;
                case EnumLoaiCanBoQuaCacThoiKi.TUTRAN:
                    lstItem = (from item in DataContext.Instance.CanBoQuaCacThoiKis where item.LoaiCanBoQuaCacThoiKi.TenLoaiCanBoQuaCacThoiKi.ToUpper() == GlobalPhieuBaos.TUTRAN select item).ToList();
                    break;
            }

            return lstItem;
        }

		public static List<CanBoQuaCacThoiKi> SelectByMaNhanVien(string manhanvien)
		{
			var lstItem = (from item in DataContext.Instance.CanBoQuaCacThoiKis where item.MaNhanVien == manhanvien select item).ToList();
			return lstItem;
		}

        // <summary>
        /// Search can bo qua cac thoi ki
        /// </summary>
        /// <param name="nhanvien"></param>
        /// <returns></returns>
        public static List<CanBoQuaCacThoiKi> SearchCanBoQuaCacThoiKi(string madonvi, string hoten)
        {
            var lst = new List<CanBoQuaCacThoiKi>();
            foreach (var item in DataContext.Instance.CanBoQuaCacThoiKis.ToList())
            {
                if (item.LoaiCanBoQuaCacThoiKi.TenLoaiCanBoQuaCacThoiKi.ToUpper() == GlobalPhieuBaos.CHUYEN_DONVI ||
                        item.LoaiCanBoQuaCacThoiKi.TenLoaiCanBoQuaCacThoiKi.ToUpper() == GlobalPhieuBaos.BO_DONVI ||
                        item.LoaiCanBoQuaCacThoiKi.TenLoaiCanBoQuaCacThoiKi.ToUpper() == GlobalPhieuBaos.TUTRAN)
                {
                    if (item.MaDonVi == (madonvi == "" ? item.MaDonVi : madonvi) &&
                        item.NhanVien.HoTenKhaiSinh.ToUpper().Contains(hoten == "" ? item.NhanVien.HoTenKhaiSinh.ToUpper() : hoten.ToUpper()))
                    {
                        lst.Add(item);
                    }
                }
                else if (item.LoaiCanBoQuaCacThoiKi.TenLoaiCanBoQuaCacThoiKi.ToUpper() == GlobalPhieuBaos.NOIKHAC_CHUYENDEN)
                {
                    if (item.MaDonVi == (madonvi == "" ? item.MaDonVi : madonvi) &&
                        item.CanBoVeHuuChuyenDen.HoTen.ToUpper().Contains(hoten == "" ? item.CanBoVeHuuChuyenDen.HoTen.ToUpper() : hoten.ToUpper()))
                    {
                        lst.Add(item);
                    }
                }
            }
            return lst;
        }
	}
}