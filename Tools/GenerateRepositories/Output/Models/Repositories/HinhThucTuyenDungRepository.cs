using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QuanLyHoSoCongChuc.Repositories
{
	#region using
	using QuanLyHoSoCongChuc.Models;
	#endregion
	public class HinhThucTuyenDungRepository
	{
		public static List<HinhThucTuyenDung> SelectAll()
		{
			return DataContext.Instance.HinhThucTuyenDungs.ToList();
		}

		public static HinhThucTuyenDung SelectByID(string mahinhthuctuyendung)
		{
			return DataContext.Instance.HinhThucTuyenDungs.FirstOrDefault(item => item.MaHinhThucTuyenDung == mahinhthuctuyendung );
		}

		public static bool Insert(HinhThucTuyenDung obj)
		{
			try
			{
				DataContext.Instance.HinhThucTuyenDungs.AddObject(obj);
				DataContext.Instance.SaveChanges();
				return true;
			}
			catch
			{
				return false;
			}
		}

		public static bool Delete(string mahinhthuctuyendung)
		{
			try
			{
				var delitem = DataContext.Instance.HinhThucTuyenDungs.FirstOrDefault(item => item.MaHinhThucTuyenDung == mahinhthuctuyendung );
				DataContext.Instance.HinhThucTuyenDungs.DeleteObject(delitem);
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

		public static List<HinhThucTuyenDung> RetrieveByID(string mahinhthuctuyendung)
		{
			return (from item in DataContext.Instance.HinhThucTuyenDungs where  item.MaHinhThucTuyenDung == mahinhthuctuyendung  select item).ToList();
		}

	}
}