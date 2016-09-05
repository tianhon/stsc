using Senparc.Weixin.MP;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.Configuration;
using System.Web.Mvc;

namespace STSC.Service.Controllers
{
    public class WeiXinController : Controller
    {

        public static readonly string Token = WebConfigurationManager.AppSettings["WeixinToken"];

        /// <summary>
        /// 微信后台验证地址（使用Get），微信后台的“接口配置信息”的Url填写如：http://weixin.senparc.com/weixin
        /// </summary>

        [HttpGet]
        [ActionName("Index")]
        public ActionResult Get(string signature, string timestamp, string nonce, string echostr)
        {
            if (CheckSignature.Check(signature, timestamp, nonce, Token))
            {
                return Content(echostr);//返回随机字符串则表示验证通过
            }
            else
            {
                return Content("failed:" + signature + "," + CheckSignature.GetSignature(timestamp, nonce, Token));
            }
        }

        // GET: api/WeiXin/5
        public string Get(int id)
        {
            return "value";
        }

        
        // DELETE: api/WeiXin/5
        public void Delete(int id)
        {
        }
    }
}
