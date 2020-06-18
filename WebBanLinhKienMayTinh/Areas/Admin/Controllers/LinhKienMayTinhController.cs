using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebBanLinhKienMayTinh.Areas.Admin.Models.DbAcess;
using WebBanLinhKienMayTinh.Areas.Admin.Models.Entites;

namespace WebBanLinhKienMayTinh.Areas.Admin.Controllers
{
    public class LinhKienMayTinhController : Controller
    {
        // GET: Admin/LinhKienMayTinh
        public ActionResult Delete(int id)
        {
            ViewBag.Title = "Xóa linh kiện";
            DbAcessLinhKienMayTinh dao = new DbAcessLinhKienMayTinh();
            dao.Delete(id);
            return Redirect("~/Admin/LinhKienMayTinh/Index");
        }

        public ActionResult Add()
        {
            ViewBag.Title = "Thêm linh kiện ";
            var llk = new DbAcessLoaiLinhKien();
            var lm = new DbAcessLoaiMay();
            var ncc = new DbAcessNhaCC();
            ViewBag.lm = lm.ListCate();
            ViewBag.ncc = ncc.ListCate();
            return View(llk.ListCate());
        }
        public ActionResult Edit(int id)
        {
            ViewBag.Title = "Sửa linh kiện";
            var llk = new DbAcessLoaiLinhKien();
            var lm = new DbAcessLoaiMay();
            var ncc = new DbAcessNhaCC();
            ViewBag.lm = lm.ListCate();
            ViewBag.ncc = ncc.ListCate();

            var proDao = new DbAcessLinhKienMayTinh();
            ViewBag.pro = proDao.getById(id);
            return View(llk.ListCate());
        }

        [HttpPost]
        public ActionResult Edit(int id, string MLLK, string MLM, string MNCC, string TLK, string TSKT, string TGBH, string MT, HttpPostedFileBase photo, string photos)
        {
            ViewBag.Title = "Cập nhật giá trị mới cho linh kiện";
            DbAcessLinhKienMayTinh dao = new DbAcessLinhKienMayTinh();
            var product = dao.getById(id);

            if (ModelState.IsValid)
            {
                if (photo != null && photo.ContentLength > 0)
                {
                    var path = Path.Combine(Server.MapPath("~/Areas/Admin/Content/Photo/"),
                                            System.IO.Path.GetFileName(photo.FileName));
                    photo.SaveAs(path);

                    product.img = photo.FileName;
                    dao.Add(product);
                }
                return RedirectToAction("Index");
            }
            else
            {
                return View(product);
            }
        }

        [HttpPost]
        public ActionResult Add(string MLLK, string MLM, string MNCC, string TLK, string TSKT, string TGBH, string MT, HttpPostedFileBase photo)
        {
            ViewBag.Title = "Thêm linh kiện mới";
            var product = new LinhKien();
            product.maLoaiLinhKien = int.Parse(MLLK);
            product.maLoaiMay = int.Parse(MLM);
            product.maNhaCungCap = int.Parse(MNCC);
            product.tenLinhKien = TLK;
            product.thongSoKyThuat = TSKT;
            product.thoiGianBaoHanh = TGBH;
            product.moTa = MT;
            if (ModelState.IsValid)
            {
                if (photo != null && photo.ContentLength > 0)
                {
                    var path = Path.Combine(Server.MapPath("~/Areas/Admin/Content/Photo/"),
                                            System.IO.Path.GetFileName(photo.FileName));
                    photo.SaveAs(path);
                    product.img = photo.FileName;
                    var dao = new DbAcessLinhKienMayTinh();
                    dao.Add(product);
                }
                return RedirectToAction("Index");
            }
            else
            {
                return View(product);
            }
        }

        public ActionResult Index()
        {
            ViewBag.Title = "Quản lý linh kiện máy tính";
            var llk = new DbAcessLoaiLinhKien();
            var lm = new DbAcessLoaiMay();
            var ncc = new DbAcessNhaCC();
            ViewBag.lm = lm.ListCate();
            ViewBag.ncc = ncc.ListCate();
            ViewBag.llk = llk.ListCate();
            DbAcessLinhKienMayTinh dao = new DbAcessLinhKienMayTinh();
            return View(dao.ListProductPage(1, 5));
        }
    }
}