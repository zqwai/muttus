<%@ Page Title="" Language="C#" MasterPageFile="~/student/Site1.Master" AutoEventWireup="true" CodeBehind="c_add.aspx.cs" Inherits="DB.Web.student.c_add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>Mutuus管理系统</title>
    <!-- public -->
    <link href="http://www.imutuus.com/admin/css/bootstrap.min.css" rel="stylesheet">
    <link href="http://www.imutuus.com/admin/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="http://www.imutuus.com/admin/css/animate.css" rel="stylesheet">
    <!-- plugins -->
    <link href="http://www.imutuus.com/admin/css/plugins/datetimepicker/bootstrap-datetimepicker.min.css" rel="stylesheet">
    <link href="http://www.imutuus.com/admin/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="http://www.imutuus.com/admin/css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">
    <link href="http://www.imutuus.com/admin/css/plugins/chosen/chosen.css" rel="stylesheet">
    <!-- coustom -->
    <link href="http://www.imutuus.com/admin/css/style.css" rel="stylesheet">
    <link href="http://www.imutuus.com/admin/css/coustom.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>    <!-- breadcrumb begin -->
    <div class="row border-bottom white-bg clearfix" data-desc='标题-锚标签'>
        <div class="col-lg-10">
            <ol class="breadcrumb">
                <li>
                    <a href="index.aspx"><i class="fa fa-home"></i> 首页</a>
                </li>
                <li>
                   餐表管理
                </li>
                <li class="active">
                    <strong>新建</strong>
                </li>
            </ol>
        </div>
    </div>
    <!-- breadcrumb begin -->

    <!-- wrapper-content begin-->
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-lg-12">
                
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>餐表管理</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">

                                <div class="alert alert-info">
                                  
                                </div>

                                <ul class="form-horizontal m-b clearfix" style="list-style: none;">
                                   
                                    <li class="form-group clearfix">
                                        <label class="col-sm-2 control-label">日期</label>
                                        <div class="col-sm-10">
                                            <div class="input-group date day">
                                                <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                                <input type="text" class="form-control" placeholder="选择日期" runat="server" id="date">
                                            </div>
                                        </div>
                                    </li>

                                    <div class="hr-line-dashed"></div>

                                      <li class="form-group clearfix">
                                        <label class="col-sm-2 control-label">分类</label>
                                        <div class="col-sm-5">
                                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control chosen-select" >
                                                <asp:ListItem Value="1">上午点心</asp:ListItem>
                                                <asp:ListItem Value="2">中餐</asp:ListItem>
                                                <asp:ListItem Value="3">餐后水果</asp:ListItem>
                                                <asp:ListItem Value="4">下午点心</asp:ListItem>
                                                <asp:ListItem Value="5">备餐</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </li>
                                      <div class="hr-line-dashed"></div>
                                    <li class="form-group clearfix">
                                        <label class="col-sm-2 control-label">名称</label>
                                        <div class="col-sm-10">

                                            <input type="text" class="form-control" placeholder="名称" runat="server" id="name">
                                        </div>
                                    </li>

                                    <div class="hr-line-dashed"></div>
                                    <li class="form-group clearfix">
                                        <label class="col-sm-2 control-label">内容</label>
                                        <div class="col-sm-10">

                                            <textarea name="" rows="8" placeholder="描述" class="form-control" runat="server" id="body"></textarea>
                                        </div>
                                    </li>

                                 
                                 

                                 
                                  
                                    <div class="hr-line-dashed"></div> 
                                        <label class="col-sm-2 control-label"></label>
                                        <div class="col-sm-10">
                                               <asp:LinkButton ID="LinkButton1" runat="server"  CssClass="btn btn-info" OnClick="LinkButton1_Click"><i class="fa fa-plus"></i> 添加</asp:LinkButton>
                                          
                                         
                                            <!-- <a href="javascript:history.back(-1)" class="btn btn-default m-l-lg"><i class="fa fa-reply"></i> 返回</a> -->
                                        </div>
                                    
                                </ul>

                    </div>
                </div>

            </div>
        </div>
    </div>
<!-- Chosen -->
<script src="http://www.imutuus.com/admin/js/plugins/chosen/chosen.jquery.js"></script>
<!-- Data picker -->
<script src="http://www.imutuus.com/admin/js/plugins/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script src="http://www.imutuus.com/admin/js/plugins/datetimepicker/bootstrap-datetimepicker.zh-CN.js"></script>
<!-- iCheck -->
<script src="http://www.imutuus.com/admin/js/plugins/iCheck/icheck.min.js"></script>   
<script>

$(document).ready(function () {
    $('.i-checks').iCheck({
        checkboxClass: 'icheckbox_square-green',
        radioClass: 'iradio_square-green',
    });

    $('.input-group.day').datetimepicker({
        language:'zh-CN',
        format: 'yyyy-mm-dd ',
        weekStart: 1, //一周从哪一天开始  hh:ii
        todayBtn:  1, 
        autoclose: 1,  //是否立即关闭此日期时间选择器。
        todayHighlight: 1,
        startView: 2,// 日期时间选择器打开之后首先显示的视图。
        minView: 3,  //日期时间选择器所能够提供的最精确的时间选择视图。
        // forceParse: 0,  //当选择器关闭的时候，是否强制解析输入框中的值。
    });
    $('.input-group.time').datetimepicker({
        language:'zh-CN',
        format: 'hh:ii',
        weekStart: 1, //一周从哪一天开始  
        todayBtn:  1, 
        autoclose: 1,  //是否立即关闭此日期时间选择器。
        todayHighlight: 1,
        startView: 1,// 日期时间选择器打开之后首先显示的视图。
        minView: 0,  //日期时间选择器所能够提供的最精确的时间选择视图。
        // forceParse: 0,  //当选择器关闭的时候，是否强制解析输入框中的值。
    });
    // chosen select美化
    var config = {
            '.chosen-select'           : {},
            // '.chosen-select-deselect'  : {allow_single_deselect:true},
            '.chosen-select-no-single' : {disable_search_threshold:10},
            '.chosen-select-no-results': {default_no_result_text:'没找到:'},
            '.chosen-select-width'     : {width:"95%"}
            }
        for (var selector in config) {
            $(selector).chosen(config[selector]);
        }
});

</script>
</asp:Content>
