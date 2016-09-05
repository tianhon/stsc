using System;
using System.IO;
using System.Web.Configuration;
using System.Web.Mvc;
using Senparc.Weixin.MP.Entities.Request;
using Senparc.Weixin.MP;
using Senparc.Weixin.MP.MessageHandlers;
using Senparc.Weixin.Context;
using Senparc.Weixin.MP.Entities;
using Senparc.Weixin.MessageHandlers;

namespace STSC.Service.Controllers
{
    public class WeiXinController : Controller
    {

        public static readonly string Token = WebConfigurationManager.AppSettings["WeixinToken"];
        public static readonly string EncodingAESKey = WebConfigurationManager.AppSettings["WeixinEncodingAESKey"];
        public static readonly string AppId = WebConfigurationManager.AppSettings["WeixinAppId"];

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

        /// <summary>
        /// 用户发送消息后，微信平台自动Post一个请求到这里，并等待响应XML。
        /// PS：此方法为简化方法，效果与OldPost一致。
        /// v0.8之后的版本可以结合Senparc.Weixin.MP.MvcExtension扩展包，使用WeixinResult，见MiniPost方法。
        /// </summary>
        [HttpPost]
        [ActionName("Index")]
        public ActionResult Post(PostModel postModel)
        {
            if (!CheckSignature.Check(postModel.Signature, postModel.Timestamp, postModel.Nonce, Token))
            {
                return Content("参数错误！");
            }

            postModel.Token = Token;//根据自己后台的设置保持一致
            postModel.EncodingAESKey = EncodingAESKey;//根据自己后台的设置保持一致
            postModel.AppId = AppId;//根据自己后台的设置保持一致

            //v4.2.2之后的版本，可以设置每个人上下文消息储存的最大数量，防止内存占用过多，如果该参数小于等于0，则不限制
            var maxRecordCount = 10;

            var logPath = Server.MapPath(string.Format("~/App_Data/MP/{0}/", DateTime.Now.ToString("yyyy-MM-dd")));
            if (!Directory.Exists(logPath))
            {
                Directory.CreateDirectory(logPath);
            }

            //自定义MessageHandler，对微信请求的详细判断操作都在这里面。
            var messageHandler = new CustomMessageHandler(Request.InputStream, postModel, maxRecordCount);


            try
            {
                //测试时可开启此记录，帮助跟踪数据，使用前请确保App_Data文件夹存在，且有读写权限。
                /*messageHandler.RequestDocument.Save(Path.Combine(logPath, string.Format("{0}_Request_{1}.txt", _getRandomFileName(), messageHandler.RequestMessage.FromUserName)));
                if (messageHandler.UsingEcryptMessage)
                {
                    messageHandler.EcryptRequestDocument.Save(Path.Combine(logPath, string.Format("{0}_Request_Ecrypt_{1}.txt", _getRandomFileName(), messageHandler.RequestMessage.FromUserName)));
                }*/

                /* 如果需要添加消息去重功能，只需打开OmitRepeatedMessage功能，SDK会自动处理。
                 * 收到重复消息通常是因为微信服务器没有及时收到响应，会持续发送2-5条不等的相同内容的RequestMessage*/
                messageHandler.OmitRepeatedMessage = true;


                //执行微信处理过程
                messageHandler.Execute();

                //测试时可开启，帮助跟踪数据

                //if (messageHandler.ResponseDocument == null)
                //{
                //    throw new Exception(messageHandler.RequestDocument.ToString());
                //}

                //if (messageHandler.ResponseDocument != null)
                //{
                //    messageHandler.ResponseDocument.Save(Path.Combine(logPath, string.Format("{0}_Response_{1}.txt", _getRandomFileName(), messageHandler.RequestMessage.FromUserName)));
                //}

                //if (messageHandler.UsingEcryptMessage)
                //{
                //    //记录加密后的响应信息
                //    messageHandler.FinalResponseDocument.Save(Path.Combine(logPath, string.Format("{0}_Response_Final_{1}.txt", _getRandomFileName(), messageHandler.RequestMessage.FromUserName)));
                //}

                //return Content(messageHandler.ResponseDocument.ToString());//v0.7-
                //return new FixWeixinBugWeixinResult(messageHandler);//为了解决官方微信5.0软件换行bug暂时添加的方法，平时用下面一个方法即可
                return new WeixinResult(messageHandler);//v0.8+
            }
            catch (Exception ex)
            {
                //using (TextWriter tw = new StreamWriter(Server.MapPath("~/App_Data/Error_" + _getRandomFileName() + ".txt")))
                //{
                //    tw.WriteLine("ExecptionMessage:" + ex.Message);
                //    tw.WriteLine(ex.Source);
                //    tw.WriteLine(ex.StackTrace);
                //    //tw.WriteLine("InnerExecptionMessage:" + ex.InnerException.Message);

                //    if (messageHandler.ResponseDocument != null)
                //    {
                //        tw.WriteLine(messageHandler.ResponseDocument.ToString());
                //    }

                //    if (ex.InnerException != null)
                //    {
                //        tw.WriteLine("========= InnerException =========");
                //        tw.WriteLine(ex.InnerException.Message);
                //        tw.WriteLine(ex.InnerException.Source);
                //        tw.WriteLine(ex.InnerException.StackTrace);
                //    }

                //    tw.Flush();
                //    tw.Close();
                //}
                return Content("");
            }
        }
    }

    public class WeixinResult : ContentResult
    {
        //private string _content;
        protected IMessageHandlerDocument _messageHandlerDocument;

        public WeixinResult(string content)
        {
            //_content = content;
            base.Content = content;
        }

        public WeixinResult(IMessageHandlerDocument messageHandlerDocument)
        {
            _messageHandlerDocument = messageHandlerDocument;
        }

        /// <summary>
        /// 获取ContentResult中的Content或IMessageHandler中的ResponseDocument文本结果。
        /// 一般在测试的时候使用。
        /// </summary>
        new public string Content
        {
            get
            {
                if (base.Content != null)
                {
                    return base.Content;
                }
                else if (_messageHandlerDocument != null && _messageHandlerDocument.FinalResponseDocument != null)
                {
                    return _messageHandlerDocument.FinalResponseDocument.ToString();
                }
                else
                {
                    return null;
                }
            }
            set { base.Content = value; }
        }

    }
        public class CustomMessageHandler : MessageHandler<CustomMessageContext>
        {

            private string appId = WebConfigurationManager.AppSettings["WeixinAppId"];

            public CustomMessageHandler(Stream inputStream, PostModel postModel, int maxRecordCount = 0)
                : base(inputStream, postModel, maxRecordCount)
            {
                //这里设置仅用于测试，实际开发可以在外部更全局的地方设置，
                //比如MessageHandler<MessageContext>.GlobalWeixinContext.ExpireMinutes = 3。
                WeixinContext.ExpireMinutes = 3;

                if (!string.IsNullOrEmpty(postModel.AppId))
                {
                    appId = postModel.AppId;//通过第三方开放平台发送过来的请求
                }

                //在指定条件下，不使用消息去重
                base.OmitRepeatedMessageFunc = requestMessage =>
                {
                    var textRequestMessage = requestMessage as RequestMessageText;
                    if (textRequestMessage != null && textRequestMessage.Content == "容错")
                    {
                        return false;
                    }
                    return true;
                };
            }

            public override IResponseMessageBase DefaultResponseMessage(IRequestMessageBase requestMessage)
            {
                /* 所有没有被处理的消息会默认返回这里的结果，
                * 因此，如果想把整个微信请求委托出去（例如需要使用分布式或从其他服务器获取请求），
                * 只需要在这里统一发出委托请求，如：
                * var responseMessage = MessageAgent.RequestResponseMessage(agentUrl, agentToken, RequestDocument.ToString());
                * return responseMessage;
                */

                var responseMessage = this.CreateResponseMessage<ResponseMessageText>();
                responseMessage.Content = "这条消息来自DefaultResponseMessage。";
                return responseMessage;
            }

            /// <summary>
            /// 处理文字请求
            /// </summary>
            /// <returns></returns>
            public override IResponseMessageBase OnTextRequest(RequestMessageText requestMessage)
            {
                var responseMessage = base.CreateResponseMessage<ResponseMessageText>();
                responseMessage.Content = "OK, got it!"
                return responseMessage;
            }

        }

        public class CustomMessageContext : MessageContext<IRequestMessageBase, IResponseMessageBase>
        {
            public CustomMessageContext()
            {
                base.MessageContextRemoved += CustomMessageContext_MessageContextRemoved;
            }

            /// <summary>
            /// 当上下文过期，被移除时触发的时间
            /// </summary>
            /// <param name="sender"></param>
            /// <param name="e"></param>
            void CustomMessageContext_MessageContextRemoved(object sender, Senparc.Weixin.Context.WeixinContextRemovedEventArgs<IRequestMessageBase, IResponseMessageBase> e)
            {
                /* 注意，这个事件不是实时触发的（当然你也可以专门写一个线程监控）
                 * 为了提高效率，根据WeixinContext中的算法，这里的过期消息会在过期后下一条请求执行之前被清除
                 */

                var messageContext = e.MessageContext as CustomMessageContext;
                if (messageContext == null)
                {
                    return;//如果是正常的调用，messageContext不会为null
                }

                //TODO:这里根据需要执行消息过期时候的逻辑，下面的代码仅供参考

                //Log.InfoFormat("{0}的消息上下文已过期",e.OpenId);
                //api.SendMessage(e.OpenId, "由于长时间未搭理客服，您的客服状态已退出！");
            }
        }
    }

