using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace WebBanLinhKienMayTinh.Controllers
{
    public class TestController : ApiController
    {
        public IHttpActionResult Get()
        {
            return Ok("abc");
        }
    }
}
