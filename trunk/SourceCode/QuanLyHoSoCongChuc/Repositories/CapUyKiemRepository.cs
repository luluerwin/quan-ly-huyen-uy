using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QuanLyHoSoCongChuc.Repositories
{
	#region using
	using QuanLyHoSoCongChuc.Models;
	#endregion
	public class CapUyKiemRepository
	{
		public List<CapUyKiem> SelectAll()
		{
			return DataContext.Instance.CapUyKiems.ToList();
		}

		public CapUyKiem SelectByID(int macapuykiem)
		{
			return DataContext.Instance.CapUyKiems.FirstOrDefault(item => item.MaCapUyKiem == macapuykiem );
		}

		public bool Insert(CapUyKiem obj)
		{
			try
			{
				DataContext.Instance.CapUyKiems.AddObject(obj);
				DataContext.Instance.SaveChanges();
				return true;
			}
			catch
			{
				return false;
			}
		}

		public bool Delete(int macapuykiem)
		{
			try
			{
				var delitem = DataContext.Instance.CapUyKiems.FirstOrDefault(item => item.MaCapUyKiem == macapuykiem );
				DataContext.Instance.CapUyKiems.DeleteObject(delitem);
				DataContext.Instance.SaveChanges();
				return true;
			}
			catch
			{
				return false;
			}
		}

		public bool Save()
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

		public List<CapUyKiem> RetrieveByID(int macapuykiem)
		{
			return (from item in DataContext.Instance.CapUyKiems where  item.MaCapUyKiem == macapuykiem  select item).ToList();
		}

	}
}