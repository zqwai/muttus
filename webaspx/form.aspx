<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="form.aspx.cs" Inherits="DB.Web.form" %>

<!DOCTYPE html>

<html lang="zh-CN">
<head runat="server">
   <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
    <link rel="shortcut icon" href="http://www.imutuus.com/images/mutuus.png">
    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="email=no"/>

    <title>mutuus - being imaginative, being different</title>
    <meta name="keywords" content="mutuus 儿童教育 幼托 幼托教育">
    <meta name="description" content="什么是好的教育？这个问题很难回答。孩子们会多背几首古诗、会多读几个英文单词？或者掌握一些熟练的绘画技巧，会一些乐器？这些成就虽然能令人羡慕，但其实并不能说明什么。">

    <link href="css/css.css" rel="stylesheet">

    <script src="js/jquery.1.11.0.min.js"></script>
    <style type="text/css">
        body{background-color: #fff;}
    </style>
</head>
<body>
    <form id="form1" runat="server">
 <div id="modal" class="modal-dialog">
    <div class="modal-content">
        <div class="modal-body text-center">
            <div class="row">
                <div class="col-md-12 text-center form">
                        <div class="row">
                            <div class="col-md-12">
                                <h3>OPEN DAY</h3>
                                <p class="form-description">我们将邀请您参加一对一的 OPEN DAY 活动，让您亲自体验我们对孩子们的小心思。</p>
                            </div>
                            <div class="col-md-12">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="usr_name" class="sr-only">宝宝姓名</label>
                                            <input class="form-control" id="Name" name="Name" placeholder="宝宝姓名" type="text" value="" runat="server">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="usr_surname" class="sr-only">宝宝年龄</label>
                                            <input class="form-control" id="age" name="age" placeholder="宝宝年龄" type="text" value=""  runat="server">
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="usr_email" class="sr-only">手机</label>
                                            <input class="form-control" id="phone" name="Email" placeholder="填写手机联系方式" type="text"  runat="server">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="usr_email" class="sr-only">电子邮箱</label>
                                            <input class="form-control" id="email" name="email" placeholder="填写电子邮箱（选填）" type="text" value=""  runat="server">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="usr_name" class="sr-only">选择计划参观的中心</label>
                                            <!-- <input class="form-control" id="CompanyName" name="CompanyName" placeholder="选择计划参观的中心" type="text" value=""> -->
                                            <asp:DropDownList ID="dpcenter" runat="server" CssClass="form-control"></asp:DropDownList>
                                           
                                        </div>
                                    </div>

                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="usr_surname" class="sr-only">选择计划参观的日期</label>
                                            <!-- <input class="form-control" id="Title" name="Title" placeholder="选择计划参观的日期" type="text" value=""> -->
                                              <asp:DropDownList ID="dpdate" runat="server" CssClass="form-control"></asp:DropDownList>
                                          
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label for="usr_surname" class="sr-only">其它特殊要求（如有）</label>
                                            <textarea class="form-control" cols="20" id="WhyToAttend" name="WhyToAttend" placeholder="其它特殊要求（如有）" rows="2" runat="server"></textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                            <asp:Button ID="Button1" runat="server" Text="提交" CssClass="btn btn-default" OnClick="Button1_Click" />
                                       
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <a href="javascript:history.back(-1)" class="btn btn-default btn-border">返回</a>
                                    </div>
                                </div>

                            </div>
                        </div>
                </div>
            </div>
        </div>
    </div>

</div>
    </form>
</body>

    
<script src="js/bundles/core.js"></script>
<script src="js/fancybox/jquery.fancybox.min.js"></script>
<script>  
 
</script>
</html>
