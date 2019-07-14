<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bind.aspx.cs" Inherits="DB.Web.bind" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
    
    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="email=no"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

	<title>mutuus课程表</title>

    <meta name="keywords" content="">
    <meta name="description" content="">

    <link href="https://res.wx.qq.com/open/libs/weui/1.1.0/weui.min.css" rel="stylesheet">
    <link href="css/wx_mutuus.css" rel="stylesheet">

    <script src="js/jquery.1.11.0.min.js"></script>
    <script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
</head>
<body>

    
<form id="form2" runat="server">
<div class="container" id="container">
	<div class="page home js_show">
	    <div class="page__hd page__hd-info">
	    	<div class='header__thumb'>
	    			<img src="http://img0.imgtn.bdimg.com/it/u=2004330761,637123453&fm=26&gp=0.jpg" runat="server" id="show" alt="">
	    	</div>

	    </div>
	    <div class="page__bd page__bd_spacing">
	    	<div class="weui-cells__title"></div>
	    	<div class="weui-cells">

	            <div class="weui-cell">
	            	<div class="weui-cell__hd">
	            		<label >
		            		<svg class="icon-svg" viewBox="0 0 1024 1024" width="200" height="200"><path d="M531.264 497.28c-0.32 0-0.64 22.592-0.832 60.608 0.256 0 0.576 0 0.832 0 225.472 0 408.384 182.784 408.384 408.256 0 15.36-1.024 30.528-2.752 45.376l60.864 0c1.472-14.848 2.368-30.016 2.368-45.376C1000.128 707.264 790.144 497.28 531.264 497.28zM516.096 497.28c-116.928 0-211.712-94.72-211.712-211.712 0-116.928 94.784-211.776 211.712-211.776 116.992 0 211.776 94.784 211.776 211.776 0 66.88-31.616 125.76-80 164.544 22.976 5.184 45.376 12.032 67.264 20.16 45.248-48.448 73.28-113.152 73.28-184.704 0-150.336-121.856-272.192-272.256-272.192S243.904 135.232 243.904 285.568c0 101.632 56.384 189.312 139.008 236.032-186.112 62.144-320.448 237.504-320.448 444.48 0 15.36 0.832 30.528 2.304 45.376l60.864 0c-0.192-1.28-0.448-2.368-0.576-3.648-1.344-13.76-2.112-27.648-2.112-41.728 0-14.016 0.704-28.032 2.112-41.6 0.384-4.224 1.344-8.384 1.856-12.608 1.28-9.344 2.432-18.752 4.288-27.904 1.408-6.848 3.456-13.376 5.184-20.096 1.6-6.4 2.944-12.736 4.864-19.008 2.688-8.512 5.952-16.64 9.152-24.896 1.6-4.096 2.88-8.512 4.608-12.608 4.416-10.368 9.472-20.48 14.72-30.528 0.832-1.728 1.536-3.52 2.432-5.12 5.184-9.472 10.88-18.624 16.768-27.648 1.28-1.984 2.368-3.968 3.648-6.016 73.152-108.48 197.056-179.84 337.664-180.224 0.064-23.808 0.192-44.544 0.256-62.08C525.568 496.128 521.024 497.28 516.096 497.28z" p-id="999"></path></svg>
	            		</label>
	            	</div>
	                <div class="weui-cell__bd">
	                <input id="uname" type="text" name="" value="" placeholder="请输入您的姓名" class="weui-input" runat="server">
	                	
	                </div>
	            </div>

	          

	            <div class="weui-cell">
	            	<div class="weui-cell__hd">
	            		<label >
		            		<svg class="icon-svg" viewBox="0 0 1024 1024" width="200" height="200"><path d="M600.19 510.56a40 40 0 0 0 40 40H756.6a40 40 0 0 0 0-80H640.19a40 40 0 0 0-40 40zM156.47 805.21a51.93 51.93 0 0 1-51.87-51.87V271a51.93 51.93 0 0 1 51.87-51.87h539.75a40 40 0 0 0 0-80H156.47C83.75 139.14 24.6 198.3 24.6 271v482.34c0 72.71 59.16 131.87 131.87 131.87a40 40 0 1 0 0-80z m712-666.08a40 40 0 0 0 0 80A51.93 51.93 0 0 1 920.35 271v482.34a51.93 51.93 0 0 1-51.87 51.87H328.73a40 40 0 0 0 0 80h539.75c72.71 0 131.87-59.16 131.87-131.87V271c0-72.7-59.15-131.86-131.87-131.86zM580 510.56a40 40 0 0 0-40-40H274.82a40 40 0 0 0 0 80H540a40 40 0 0 0 40-40z" p-id="4291"/></path></svg>
	            		</label>
	            	</div>
	                <div class="weui-cell__bd">
	                
	                  	<asp:TextBox ID="TextBox1" runat="server" cssClass="weui-input" placeholder="请输入学生绑定码"></asp:TextBox>
	                </div>
	            </div>
	        </div>
	        <div class="weui-btn-area">
	        
	        	<%--<input type="button" name="" value="绑定" class='weui-btn weui-btn_primary btn-submit btn_disabled' disabled="">--%>
                	<asp:Button ID="Button1" runat="server" Text="绑定" OnClick="Button1_Click" cssClass='weui-btn weui-btn_primary btn-submit btn_disabled' disabled=""/>
	        	<div class="code-info-wrap">
		        	<div class="code-text"><a class="btn-text-link" href="javascript:;">什么是学生绑定码</a></div>
		        	<div class="code-info hide">
		        		<p class="page__desc">“学生绑定码”：是系统识别您孩子身份编码。</p>
				        <p class="page__desc">1、首次使用，需要对您的身份进行识别；</p>
				        <p class="page__desc">2、学生绑定码可向责任老师申请获得；</p>
				        <p class="page__desc">3、请输入真实信息，方便日后查询；</p> 
		        	</div>
	        	</div>
	        </div>

	        
	    </div>
	</div>
</div>
</form>

<script>
    $(function () {
        $('.btn-text-link').on('click', function () {
            var _this = $(this);
            _this.parent().toggleClass('open').next().toggleClass('hide');
        })


        var tipmsg = {
            name: {
                'id': 'uname',
                'msgtext': { 'text': '姓名不能为空！', 'text2': '姓名在2-16个字符之间！', },
            },
            phone: {
                'id': 'phone',
                'msgtext': { 'text': '手机不能为空！', 'text2': '手机号码输入有误！', },
            },
            invCode: {
                'id': 'TextBox1',
                'msgtext': { 'text': '学生绑定码不能为空！', 'text2': '学生绑定码输入有误！', },
            },
            // email:{
            //     'id' : 'email',
            //     'msgtext' : { 'text': '邮箱不能为空！', 'text2': '邮箱地址格式不对！',  },
            // },
            // area:{
            //     'id' : 'area',
            //     'msgtext' : { 'text': '请选择区域', 'text2': '邮箱地址格式不对！',  },
            // },
            submit: {
                'id': 'btn-submit',
            },

            //正则
            reg_email: {
                'cn': /^[A-Za-z0-9\u4E00-\u9FA5]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/,
                'en': /^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/,  // /^\w+\@[a-zA-Z0-9]+\.[a-zA-Z]{2,4}$/i,
            }, // ,  //验证邮箱
            reg_chinese: /^[\u4E00-\u9FA5]+$/,                 //验证中文
            reg_mobile: /^1[34578]{1}[0-9]{9}$/,               //验证手机
            reg_invCode: /^[0-9a-zA-Z]*$/,                       //限制只能输入英文字母和数字,不能输入中文和其他特殊字符

        };

        var nameId = $('#' + tipmsg.name.id);
        var phoneId = $('#' + tipmsg.phone.id);
        var invCodeId = $('#' + tipmsg.invCode.id);

        var submitId = $('.' + tipmsg.submit.id);


        // 表单焦点效果
        $('.am-input-required,.am-select-required').focus(function () {
            $(this).addClass('on');
        }).blur(function () {
            $(this).removeClass('on');
        });
        // 判断 并移除 提交按钮 disabled
        function submitRisabledRemove() {
            var a1 = nameId.hasClass("success");
            var a2 = phoneId.hasClass("success");
            var a3 = invCodeId.hasClass("success");
            // var a3 = $('.page__form .weui-cells:nth-child(3)').hasClass("success");
            // var a4 = $('.page__form .weui-cells:nth-child(4)').hasClass("success");
            console.log(a1,  a3);
            if (a1  && a3) {//&& a4&& a2
                submitId.removeClass('btn_disabled').removeAttr('disabled');
            }
        }
        // 创建错误提示
        function toolTipErr(text) {
            var toolTipErrHtml = '<div class="js-toptips js-toptips_warn js_tooltips" style="display:block">' + text + '</div>';
            $('body').prepend(toolTipErrHtml);
            setTimeout(function () {
                $('.js_tooltips').remove();
            }, 1000);
        };
        function inputBorderSuccess(id) {
            id.removeClass('err').addClass('success').parent().parent().removeClass('err').addClass('success');
            submitRisabledRemove()
        }
        function inputBorderErr(id) {
            id.removeClass('success').addClass('err').parent().parent().removeClass('success').addClass('err');
        }

        // 表单验证
        phoneId.blur(function () {
            var _this = $(this);
            var _value = _this.val().replace(/\s/g, "");
            if (_this.val() == '') {
                inputBorderErr(phoneId);
                toolTipErr(tipmsg.phone.msgtext.text);
            }
            else if (!tipmsg.reg_mobile.test(_value)) {
                inputBorderErr(phoneId);
                toolTipErr(tipmsg.phone.msgtext.text2);
            } else {
                inputBorderSuccess(phoneId);
            }
        });
        nameId.blur(function () {
            var _this = $(this);
            if (_this.val().length >= 2 && _this.val().length <= 16 && _this.val() != '') {
                inputBorderSuccess(nameId);
            }
            else if (_this.val() == '') {
                inputBorderErr(nameId);
                toolTipErr(tipmsg.name.msgtext.text);
            }
            else {
                inputBorderErr(nameId);
                toolTipErr(tipmsg.name.msgtext.text2);
            }
        });
        invCodeId.blur(function () {
            var _this = $(this);
            var _value = _this.val().replace(/\s/g, "");
            if (_this.val() == '') {
                inputBorderErr(invCodeId);
                toolTipErr(tipmsg.invCode.msgtext.text);
            } else {
                inputBorderSuccess(invCodeId);
            }
            // else if (!tipmsg.reg_invCode.test(_value)) {
            //     inputBorderErr(invCodeId);
            //     toolTipErr(tipmsg.invCode.msgtext.text2);
            // } 
            // else {
            //     inputBorderErr(invCodeId);
            //     toolTipErr(tipmsg.invCode.msgtext.text2);
            // }
        });

        $('#btnRegirst').on('touchstart', function () {
            $(this).parent().hide().next().show();
        })
    });
</script>
</body>
</html>

