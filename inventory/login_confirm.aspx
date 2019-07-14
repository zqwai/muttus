<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login_confirm.aspx.cs" Inherits="DB.Web.inventory.login_confirm" %>

<!DOCTYPE html>

<html >
<head runat="server">
  <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>mutuus管理系统 | 出入库系统</title>

    <link href="https://res.wx.qq.com/open/libs/weui/1.1.0/weui.min.css" rel="stylesheet">
    <link href="css/weui-phone.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
 

<div class="page icon js_show">
    <div class="page__hd">
        <div class="icon-box">
            <i class="weui-icon-success weui-icon_msg"></i>
            <div class="icon-box__ctn">
                <h3 class="icon-box__title"></h3>
                <p class="icon-box__desc" runat="server" id="show">你的微信账号正在进行网页登陆</p>
            </div>
        </div>
    </div>
    <div class="page__bd">
        <div class="weui-form-preview">
            <div class="weui-cells">
                <div class="weui-cell">
                    <div class="weui-cell__bd">
                        <p>登陆微信号</p>
                    </div>
                    <div class="weui-cell__ft" runat="server" id="name"></div>
                </div>
                <div class="weui-cell">
                    <div class="weui-cell__bd">
                        <p>登陆网站</p>
                    </div>
                    <div class="weui-cell__ft">mutuus管理系统</div>
                </div>
                <div class="weui-cell">
                    <div class="weui-cell__bd">
                        <p>登陆时间</p>
                    </div>
                    <div class="weui-cell__ft" runat="server" id="date"></div>
                </div>
            </div>
            <div class="weui-form-preview__ft">
                <asp:LinkButton ID="LinkButton1" Visible="false" Enabled="false" runat="server" CssClass="weui-form-preview__btn weui-form-preview__btn_primary" OnClick="LinkButton1_Click">确认操作</asp:LinkButton>
                <%--<a class="" style="display: none;" href="javascript:"></a>--%>
            </div>
        </div>
        
    </div>
    <div class="page__ft">
        <a href="javascript:">mutuus</a>
    </div>
</div>
   

    </form>
</body>
        <!-- Mainly scripts -->
    <script src="http://apps.bdimg.com/libs/zepto/1.1.4/zepto.min.js"></script>
    <script src="https://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
    <script>
        function onBridgeReady() {
          WeixinJSBridge.invoke('hideOptionMenu');
        }
        if (typeof WeixinJSBridge == "undefined") {
          document.addEventListener('WeixinJSBridgeReady', onBridgeReady, false);
        } else if (document.attachEvent) {
          document.attachEvent('WeixinJSBridgeReady', onBridgeReady); 
          document.attachEvent('onWeixinJSBridgeReady', onBridgeReady);
        } else {
          onBridgeReady();
        }
      </script>
</html>
