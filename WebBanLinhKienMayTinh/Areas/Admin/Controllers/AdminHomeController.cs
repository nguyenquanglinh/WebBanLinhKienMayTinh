using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebBanLinhKienMayTinh.Areas.Admin.Models.DbAcess;
using WebBanLinhKienMayTinh.Areas.Admin.Models.Entites;

namespace WebBanLinhKienMayTinh.Areas.Admin.Controllers
{
    public class AdminHomeController : Controller
    {
        // GET: Admin/AdminHome

        public ActionResult Login()
        {
            ViewBag.Title = "Đăng nhập ";
            return View();
        }
        public ActionResult Logup()
        {
            ViewBag.Title = "Đăng ký";
            return View();
        }
        public ActionResult KhongNhoMatKhau()
        {
            ViewBag.Title = "Quên mật khẩu";
            return View();
        }
        public ActionResult Logout()
        {
            ViewBag.Title = "Đăng xuất";
            Session["username"] = null;
            return Redirect("Login");
        }

        [HttpPost]
        public ActionResult Login(string username, string password)
        {
            ViewBag.Title = "Đăng nhập " + username;
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
            ViewBag.Title = "Đăng Ký";
            var us = new User();
            us.userName = username;
            us.passWord = password;
            if (new DbAcessUsers().AddUser(us)) return View("Login");
            else return Redirect("Logup");
        }
        [HttpPost]
        public ActionResult KhongNhoMatKhau(string username)
        {

            return View("Login");
        }
    }
}