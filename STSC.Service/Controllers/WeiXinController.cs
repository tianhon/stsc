using System;
using System.IO;
using System.Web.Configuration;
using Senparc.Weixin.MP.Entities.Request;
using Senparc.Weixin.MP;
using Senparc.Weixin.MP.MessageHandlers;
using Senparc.Weixin.Context;
using Senparc.Weixin.MP.Entities;
using Senparc.Weixin.MessageHandlers;
using System.Web.Http;

namespace STSC.Service.Controllers
{
    public class WeiXinController : ApiController
    {

        public static readonly string Token = WebConfigurationManager.AppSettings["WeixinToken"];
        public static readonly string EncodingAESKey = WebConfigurationManager.AppSettings["WeixinEncodingAESKey"];
        public static readonly string AppId = WebConfigurationManager.AppSettings["WeixinAppId"];

        /// <summary>
        /// 微信后台验证地址（使用Get），微信后台的“接口配置信息”的Url填写如：http://weixin.senparc.com/weixin
        /// </summary>

        [HttpGet]
        [ActionName("Index")]
        public string Get(string signature, string timestamp, string nonce, string echostr)
        {
            if (CheckSignature.Check(signature, timestamp, nonce, Token))
            {
                return echostr;//返回随机字符串则表示验证通过
            }
            else
            {
                return "failed:" + signature + "," + CheckSignature.GetSignature(timestamp, nonce, Token);
            }
        }
    }
}

