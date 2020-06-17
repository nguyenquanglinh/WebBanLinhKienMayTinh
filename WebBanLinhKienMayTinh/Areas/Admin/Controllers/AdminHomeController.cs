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
        public ActionResult Index()
        {
            ViewBag.Title = "Index admin";
            return View();
        }
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
            ViewBag.Title = "Admin Login "+username;
            DbAcessUsers dao = new DbAcessUsers();
            if (dao.checkLogin(username, password))
            {
                Session["username"] = username;
                return Redirect("../LinhKienMayTinh/Index");
            }
            else
                return Redirect("Login");
        }
        [HttpPost]
        public ActionResult Logup(string username, string password)
        {
            ViewBag.Title = "Admin Logup";
            return Redirect("Logup");
        }
    }
}