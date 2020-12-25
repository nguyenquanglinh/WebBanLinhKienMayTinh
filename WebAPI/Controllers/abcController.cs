using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using WebAPI.DTO;

namespace WebAPI.Controllers
{
    public class abcController : ApiController
    {
        public IHttpActionResult Get()
        {

            return NotFound();
        }

        public IHttpActionResult Post([FromBody]Users x)
        {
           
            return Ok();
        }

        public IHttpActionResult Put([FromBody] Users x)
        {
            return Ok();
        }

        public IHttpActionResult Delete([FromUri] int id)
        {
            return Ok();
        }
    }
}
