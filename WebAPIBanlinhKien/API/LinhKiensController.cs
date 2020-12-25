using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using WebAPIBanlinhKien.DAO;
using WebAPIBanlinhKien.DTO;

namespace WebAPIBanlinhKien.API
{
    public class LinhKiensController : ApiController
    {
        private static LinhKiensDAO db = new LinhKiensDAO();
        public IHttpActionResult Get()
        {
            try
            {
                var listLinhKiens = new LinhKiensDAO().GetListLinhKien();
                if (listLinhKiens.Count == 0)
                {
                    return NotFound();
                }
                return Ok(listLinhKiens);
            }
            catch
            {
                return BadRequest();
            }

        }
        public IHttpActionResult Get(int id)
        {
            try
            {
                var listUser = db.GetLinhKien(id);
                if (listUser == null)
                {
                    return NotFound();
                }
                return Ok(listUser);
            }
            catch(Exception e)
            {
                return BadRequest(e.ToString());
            }

        }
        public IHttpActionResult Post([FromBody] Users x,LinhKiens lk)
        {
            try
            {
                if (!ModelState.IsValid)
                    return BadRequest("Not a valid model");
                
                var listUser = db.AddLinhKien(x, lk);
                if (listUser.Count==0)
                {
                    return NotFound();
                }
                return Ok(listUser);
            }
            catch (Exception e)
            {
                return BadRequest(e.ToString());
            }

        }

        public IHttpActionResult Put([FromBody] Users x, LinhKiens lk)
        {
            try
            {
                if (!ModelState.IsValid)
                    return BadRequest("Not a valid model");
                var listUser = db.EditLinhKien(x, lk);
                if (listUser.Count == 0)
                {
                    return NotFound();
                }
                return Ok(listUser);
            }
            catch (Exception e)
            {
                return BadRequest(e.ToString());
            }

        }
        public IHttpActionResult Delete([FromBody] Users x, LinhKiens lk)
        {
            try
            {
                if (!ModelState.IsValid)
                    return BadRequest("Not a valid model");
                var listUser = db.DeleteLinhKien(x, lk);
                if (listUser.Count == 0)
                {
                    return NotFound();
                }
                return Ok(listUser);
            }
            catch (Exception e)
            {
                return BadRequest(e.ToString());
            }

        }
    }
}
