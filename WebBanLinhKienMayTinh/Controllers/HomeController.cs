using System.Web.Mvc;
using WebBanLinhKienMayTinh.Areas.Admin.Models.DbAcess;

namespace WebBanLinhKienMayTinh.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult Index()
        {
            var dblk = new DbAcessLinhKienMayTinh();
            ViewBag.SPBC = dblk.GetLinhKienBanChay();
            ViewBag.SPM = dblk.GetLinhKienMoi();
            return View();
        }
        public ActionResult GioiThieu()
        {
            return View();
        }
        public ActionResult SanPham(int PageNum=1,int PageSize=5)
        {
            DbAcessLinhKienMayTinh dao = new DbAcessLinhKienMayTinh();
            ViewBag.SP = dao.ListProduct();
            return View();
        }
    }
}