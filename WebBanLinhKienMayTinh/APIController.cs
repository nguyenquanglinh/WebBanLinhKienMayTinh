using System;
using System.Collections.Generic;
using System.Net.Http;
using WebAPIBanlinhKien.DTO;

namespace WebBanLinhKienMayTinh
{
    public class APIController
    {
        public static string baseAddress = "http://localhost:51091/api/";
        
        public static List<LinhKiens> GetListLinhKiens()
        {
            var listSinhVien = new List<LinhKiens>();
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri(baseAddress);
                //HTTP GET
                var responseTask = client.GetAsync("linhkiens");
                responseTask.Wait();

                var result = responseTask.Result;
                if (result.IsSuccessStatusCode)
                {
                    var readTask = result.Content.ReadAsAsync<List<LinhKiens>>();
                    readTask.Wait();

                    listSinhVien = readTask.Result;

                }
                else //web api sent error response 
                {
                    //log response status here..    

                }
            }
            return listSinhVien;
        }
    }
}