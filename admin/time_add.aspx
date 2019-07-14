<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="time_add.aspx.cs" Inherits="DB.Web.Admin.time_add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>时间轴管理</title>
    <!-- public -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <!-- plugins -->
    <link href="css/plugins/datetimepicker/bootstrap-datetimepicker.min.css" rel="stylesheet">
    <link href="css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">
    <!-- coustom -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/coustom.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class="row border-bottom white-bg clearfix" data-desc='标题-锚标签'>
        <div class="col-lg-10">
            <ol class="breadcrumb">
                <li>
                    <a><i class="fa fa-home"></i>首页</a>
                </li>
                <li>时间轴管理
                </li>
                <li class="active">
                    <strong>添加</strong>
                </li>
            </ol>
        </div>
    </div>
    <!-- breadcrumb begin -->

    <!-- wrapper-content begin -->
    <div class="wrapper wrapper-content">

        <div class="row">
            <div class="col-lg-12">
                <div class="ibox float-e-margins">


                    <div class="ibox-title">
                        <h5>添加 </h5>
                    </div>
                    <div class="ibox-content">

                        <%--<div class="alert alert-info">
                                    请优先添加代理品牌，方便与商品分类绑定。品牌宣传视频，请放在第三方视频网站上，获取链接即可。
                                </div>--%>

                        <section class="form-horizontal">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">标题</label>
                                <div class="col-sm-4">
                                    <input type="text" class="form-control" id="name" runat="server">
                                </div>
                            </div>

                            <div class="hr-line-dashed"></div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label">时间</label>
                                <div class="col-sm-4">
                                        <div class="input-group date">
                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                            <input type="text" class="form-control" id="date" runat="server" placeholder="请选择时间" >
                                        </div>
                                </div>
                            </div>

                            <div class="hr-line-dashed"></div>

                             <div class="form-group">
                                <label class="col-sm-2 control-label">内容</label>
                                <div class="col-sm-8">
                                    <textarea id="remarks" cols="20" rows="6" class="form-control" runat="server"></textarea>
                                </div>
                            </div>

                            <div class="hr-line-dashed"></div>

                            <div class="form-group">
                                <div class="col-sm-8 col-sm-offset-2">
                                    <asp:Button ID="Button2" runat="server" Text="添加" CssClass="btn btn-primary" OnClick="Button2_Click" />
                                </div>
                            </div>

                        </section>

                    </div>



                </div>
            </div>
        </div>

    </div>

<!-- Data picker -->
<script src="js/plugins/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script src="js/plugins/datetimepicker/bootstrap-datetimepicker.zh-CN.js"></script>

<script>
    $(document).ready(function () {

        $('.input-group.date').datetimepicker({
            language: 'zh-CN',
            format: 'yyyy-mm-dd hh:ii',
            weekStart: 1, //一周从哪一天开始
            todayBtn: 1,
            autoclose: 1,  //是否立即关闭此日期时间选择器。
            todayHighlight: 1,
            startView: 2,// 日期时间选择器打开之后首先显示的视图。
            // minView: 2,  //日期时间选择器所能够提供的最精确的时间选择视图。
            forceParse: 0,  //当选择器关闭的时候，是否强制解析输入框中的值。
        });

    });
</script>

</asp:Content>
