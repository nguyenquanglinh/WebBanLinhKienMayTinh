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
    public class UsersController : ApiController
    {
        public IHttpActionResult Get()
        {
            try
            {
                var listUser = new UsersDAO().GetListUser();
                if (listUser.Count == 0)
                {
                    return NotFound();
                }
                return Ok(listUser);
            }
            catch
            {
                return BadRequest();
            }

        }
    }
}
