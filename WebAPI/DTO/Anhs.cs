using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAPI.DTO
{
    public class Anhs
    {
        public string img { get; set; }
        public int maAnh { get; set; }

        public int? maLinhKien { get; set; }
        public Anhs() { }
    }
}