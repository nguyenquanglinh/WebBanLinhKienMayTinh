using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebBanLinhKienMayTinh.Areas.Admin.Models.DbAcess;
using WebBanLinhKienMayTinh.Areas.Admin.Models.Entites;

namespace WebBanLinhKienMayTinh.Areas.Admin.Controllers
{
    public class PhieuXuatController : Controller
    {
        // GET: Admin/PhieuXuat
        public ActionResult Index(int PageNum = 1, int PageSize = 5)
        {
            ViewBag.Title = "Quản lý phiếu Xuất";
            var dblk = new DbAcessLinhKienMayTinh();
            ViewBag.lk = dblk.ListCate();
            return View(dblk.ListProductPagePhieuXuat(PageNum, PageSize));
        }

        public ActionResult Add()
        {

            ViewBag.Title = "Thêm thêm phiếu xuất";
            return View(new DbAcessLinhKienMayTinh().ListCate());
        }

        public ActionResult Edit(int id)
        {
            ViewBag.Title = "Sửa phiếu xuất";
            ViewBag.pn = new DbAcessPhieuXuat().GetById(id);
            return View(new DbAcessLinhKienMayTinh().ListCate());
        }

        public ActionResult Delete(int id)
        {
            try
            {
                ViewBag.Title = "Xóa phiếu nhập";
                new DbAcessPhieuXuat().Delete(id);
            }
            catch
            {

            }
            return Redirect("~/Admin/PhieuNhap/Index");
        }

        [HttpPost]
        public ActionResult Add(int MLLK, string SL, string DG, string TT)
        {
            ViewBag.Title = "Thêm phiếu nhập";
            var product = new PhieuXuat();
            product.maLinhKien = MLLK;
            if (!string.IsNullOrEmpty(SL))
                product.soLuong = int.Parse(SL);
            if (!string.IsNullOrEmpty(DG))
                product.donGia = int.Parse(DG);
            if (!string.IsNullOrEmpty(TT))
                product.tongTien = int.Parse(TT);

            if (ModelState.IsValid)
            {
                try
                {
                    var dao = new DbAcessPhieuXuat();
                    dao.AddPhieuXuat(product);
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
        public ActionResult Edit(int MLLK, string SL, string DG, string TT, int id)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    new DbAcessPhieuXuat().Edit(MLLK, SL, DG, TT, id);
                    return RedirectToAction("Index");

                }
                catch
                {
                }
            }
            return RedirectToAction("Edit/" + id.ToString());
        }

    }
}