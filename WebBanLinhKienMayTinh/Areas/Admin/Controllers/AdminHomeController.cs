using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebBanLinhKienMayTinh.Areas.Admin.Models.DbAcess;

namespace WebBanLinhKienMayTinh.Areas.Admin.Controllers
{
    public class AdminHomeController : Controller
    {
        // GET: Admin/AdminHome
      
        public ActionResult Login()
        {
            ViewBag.Title = "Admin Login";
            return View();
        }
        public ActionResult Logup()
        {
            ViewBag.Title = "user logup as admin";
            return View();
        }
        public ActionResult Logout()
        {
            ViewBag.Title = "Admin out";
            Session["username"] = null;
            return Redirect("Login");
        }

        [HttpPost]
        public ActionResult Login(string username, string password)
        {
            ViewBag.Title = "Admin Login " + username;
            DbAcessUsers dao = new DbAcessUsers();
            var user = dao.GetByUP(username, password);
            if (user != null)
            {
                Session["username"] = username;
                if (user.chucNang == "admin")
                    return RedirectToAction("../Account/Index");
                else
                {
                    
                    return Redirect("../../Home/Index");
                }
            }
            else
            {
                ViewBag.LoginError = "Đăng nhập không thành công";
                return View("Login");
            }
        }
        [HttpPost]
        public ActionResult Logup(string username, string password)
        {
            ViewBag.Title = "Admin Logup";
            return Redirect("Logup");
        }
    }
}