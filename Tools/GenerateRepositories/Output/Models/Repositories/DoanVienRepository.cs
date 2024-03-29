using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QuanLyHoSoCongChuc.Repositories
{
	#region using
	using QuanLyHoSoCongChuc.Models;
	#endregion
	public class DoanVienRepository
	{
		public static List<DoanVien> SelectAll()
		{
			return DataContext.Instance.DoanViens.ToList();
		}

		public static DoanVien SelectByID(string madoanvien)
		{
			return DataContext.Instance.DoanViens.FirstOrDefault(item => item.MaDoanVien == madoanvien );
		}

		public static bool Insert(DoanVien obj)
		{
			try
			{
				DataContext.Instance.DoanViens.AddObject(obj);
				DataContext.Instance.SaveChanges();
				return true;
			}
			catch
			{
				return false;
			}
		}

		public static bool Delete(string madoanvien)
		{
			try
			{
				var delitem = DataContext.Instance.DoanViens.FirstOrDefault(item => item.MaDoanVien == madoanvien );
				DataContext.Instance.DoanViens.DeleteObject(delitem);
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

		public static List<DoanVien> RetrieveByID(string madoanvien)
		{
			return (from item in DataContext.Instance.DoanViens where  item.MaDoanVien == madoanvien  select item).ToList();
		}

	}
}