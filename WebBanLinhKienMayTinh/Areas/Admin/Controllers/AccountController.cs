using System.Web.Mvc;
using WebBanLinhKienMayTinh.Areas.Admin.Models.DbAcess;
using WebBanLinhKienMayTinh.Areas.Admin.Models.Entites;

namespace WebBanLinhKienMayTinh.Areas.Admin.Controllers
{
    public class AccountController : Controller
    {
        // GET: Admin/Account
        public ActionResult Index(int PageNum = 1, int PageSize = 1)
        {
            ViewBag.Title = "Quản lý tài khoản";
            DbAcessLinhKienMayTinh dao = new DbAcessLinhKienMayTinh();
            return View(dao. ListProductPageAccount(PageNum, PageSize));
        }

        public ActionResult Add()
        {
            ViewBag.Title = "Thêm linh kiện mới";
            return View();
        }

        public ActionResult Edit(int id)
        {
            ViewBag.Title = "Sửa tài khoản";
            return View(new DbAcessUsers().GetByMaGH(id));
        }

        public ActionResult Delete(int id)
        {
            try
            {
                ViewBag.Title = "Xóa linh kiện";
                var dao = new DbAcessUsers();
                dao.Delete(id);

            }
            catch
            {

            }
            return Redirect("~/Admin/Account/Index");
        }

        [HttpPost]
        public ActionResult Add(string userName, string passWord, string chucNang, string trangThai)
        {
            ViewBag.Title = "Thêm linh kiện mới";
            var product = new User();
            product.userName = userName;
            product.passWord = passWord;
            product.chucNang = chucNang;
            product.trangThai = trangThai;

            if (ModelState.IsValid)
            {
                try
                {
                    var dao = new DbAcessUsers();
                    dao.AddUser(product);
                    return RedirectToAction("Index");
                }
                catch
                {

                }

            }
            ViewBag.Error = "Teen tài khoản đã tồn tại ";
            return View("Add");

        }

        [HttpPost]
        public ActionResult Edit(string userName, string passWord, string chucNang, string trangThai, int id)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    new DbAcessUsers().Edit(userName, passWord, chucNang, trangThai, id);
                    return RedirectToAction("Index");

                }
                catch
                {
                }
            }
            return RedirectToAction("Edit/"+id.ToString());
        }

    }
}