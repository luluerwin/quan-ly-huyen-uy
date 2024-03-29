using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QuanLyHoSoCongChuc.Repositories
{
	#region using
	using QuanLyHoSoCongChuc.Models;
	#endregion
	public class TrinhDoChinhTriRepository
	{
		public static List<TrinhDoChinhTri> SelectAll()
		{
			return DataContext.Instance.TrinhDoChinhTris.ToList();
		}

		public static TrinhDoChinhTri SelectByID(string matrinhdochinhtri)
		{
			return DataContext.Instance.TrinhDoChinhTris.FirstOrDefault(item => item.MaTrinhDoChinhTri == matrinhdochinhtri );
		}

		public static bool Insert(TrinhDoChinhTri obj)
		{
			try
			{
				DataContext.Instance.TrinhDoChinhTris.AddObject(obj);
				DataContext.Instance.SaveChanges();
				return true;
			}
			catch
			{
				return false;
			}
		}

		public static bool Delete(string matrinhdochinhtri)
		{
			try
			{
				var delitem = DataContext.Instance.TrinhDoChinhTris.FirstOrDefault(item => item.MaTrinhDoChinhTri == matrinhdochinhtri );
				DataContext.Instance.TrinhDoChinhTris.DeleteObject(delitem);
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

		public static List<TrinhDoChinhTri> RetrieveByID(string matrinhdochinhtri)
		{
			return (from item in DataContext.Instance.TrinhDoChinhTris where  item.MaTrinhDoChinhTri == matrinhdochinhtri  select item).ToList();
		}

	}
}