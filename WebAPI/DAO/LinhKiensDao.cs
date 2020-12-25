using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebAPI.DTO;
using WebAPI.Entity;

namespace WebAPI.DAO
{
    public class LinhKiensDao
    {
        private static Model1 model;

        public LinhKiensDao()
        {
            if (model == null)
                model = new Model1();
        }
        public List<LinhKiens> GetListLinhKien()
        {
            var ret = new List<LinhKiens>();
            foreach (var item in model.LinhKiens.ToList())
            {
                ret.Add(new LinhKiens(item));
            }
            return ret;
        }
    }
}