using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebAPPIBanLinhKienMayTinh.DAO;

namespace WebAPPIBanLinhKienMayTinh.Controllers
{
    public class TrangChuController : Controller
    {
        // GET: TrangChu
        public ActionResult Index()
        {
            ViewBag.SPBC = LinhKiensDAO.Instance.GetListLinhKiensBanChay();
            
            ViewBag.SPM = LinhKiensDAO.Instance.GetListLinhKiens();
            ViewBag.LLK=LoaiLinhKienDAO.Instance.GetListLinhKiens();
            return View();
        }
        public ActionResult GioiThieu()
        {
            //ViewBag.SPBC = LinhKiensDAO.Instance.GetListLinhKiensBanChay();

            //ViewBag.SPM = LinhKiensDAO.Instance.GetListLinhKiens();
            //ViewBag.LLK = LoaiLinhKienDAO.Instance.GetListLinhKiens();
            return View();
        }
        public ActionResult SanPham(int PageNum = 1, int PageSize = 5)
        {
            ViewBag.SP = LinhKiensDAO.Instance.GetListLinhKiens(); 
            return View();
        }
    }
}