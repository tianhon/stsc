using STSC.Service.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using STSC.Service.Models;

namespace STSC.Service.Controllers
{
    public class ValuesController : ApiController
    {
        // GET api/values
        public string Get()
        {
            using (var context = new STSCContext())
            {
                context.Classifications.Add(new Classification { Path = "fsdf", Name = "Hello" });
                context.SaveChanges();
                return "Hello: "+ context.Classifications.Count().ToString();
            }
        }

        // GET api/values/5
        public string Get(int id)
        {
            return "value";
        }

        // POST api/values
        public void Post([FromBody]string value)
        {
        }

        // PUT api/values/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/values/5
        public void Delete(int id)
        {
        }

        [HttpGet]
        public List<ImageClass> GetImg()
        {
            //STSC.Service.DA.STSCEntities entity = new DA.STSCEntities();

            //var a= entity.classifications.ToList();


            List<ImageClass> lst = new List<ImageClass>();

            ImageClass imgC = new ImageClass();
            imgC.id = 1;
            imgC.fImgUrl = "./img/carousel1.jpeg";
            imgC.fUrl = "./detail.w";


            ImageClass imgD = new ImageClass();
            imgD.id = 2;
            imgD.fImgUrl = "./img/carousel2.jpeg";
            imgD.fUrl = "./detail.w";

            ImageClass imgE = new ImageClass();
            imgE.id = 3;
            imgE.fImgUrl = "./img/carousel3.jpeg";
            imgE.fUrl = "./detail.w";

            lst.Add(imgC);
            lst.Add(imgD);
            lst.Add(imgE);
            return lst;

        }
    }

    public class ImageClass
    {
        public int id { get; set; }
        public string fImgUrl { get; set; }

        public string fUrl { get; set; }
    }
}
