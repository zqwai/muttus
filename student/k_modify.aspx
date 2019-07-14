<%@ Page Title="" Language="C#" MasterPageFile="~/student/Site1.Master" AutoEventWireup="true" CodeBehind="k_modify.aspx.cs" Inherits="DB.Web.student.k_modify" %>
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
                   课程管理
                </li>
                <li class="active">
                    <strong>修改课程</strong>
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
                        <h5>修改课程</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">

                                <ul class="form-horizontal m-b clearfix" style="list-style: none;">

                                    <li class="form-group clearfix">
                                        <label class="col-sm-2 control-label">标题</label>
                                        <div class="col-sm-10">

                                            <textarea name="" rows="1" placeholder="标题" class="form-control" runat="server" id="name"></textarea>
                                        </div>
                                    </li>

                                    <div class="hr-line-dashed"></div>
                                    <li class="form-group clearfix">
                                        <label class="col-sm-2 control-label">日期</label>
                                        <div class="col-sm-5">
                                            <div class="input-group date day">
                                                <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                                <input type="text" class="form-control" placeholder="选择日期" runat="server" id="date">
                                            </div>
                                        </div>
                                    </li>

                                    <div class="hr-line-dashed"></div>
                                    <li class="form-group clearfix">
                                        <label class="col-sm-2 control-label">开始时间</label>
                                        <div class="col-sm-5">
                                            <div class="input-group date time">
                                                <span class="input-group-addon"><i class="fa fa-clock-o"></i></span>
                                                <input type="text" placeholder="开始时间" class="form-control" runat="server" id="stime"></input>
                                            </div>
                                        </div>
                                    </li>

                                    <div class="hr-line-dashed"></div>
                                    <li class="form-group clearfix">
                                        <label class="col-sm-2 control-label">所属课程体系</label>
                                        <div class="col-sm-5">
                                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control chosen-select" ></asp:DropDownList>
                                        </div>
                                    </li>

                                    <div class="hr-line-dashed"></div>
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>

                                    <li class="form-group clearfix">
                                        <label class="col-sm-2 control-label">主要领域</label>
                                        <div class="col-sm-10">

                                        <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged" RepeatDirection="Horizontal" cssClass='table table-check'>
                                          <asp:ListItem Value="1">自我认知</asp:ListItem>
                                          <asp:ListItem Value="2">沟通和语言</asp:ListItem>
                                          <asp:ListItem Value="3">身体发展</asp:ListItem>
                                          <asp:ListItem Value="4">文字读写</asp:ListItem>
                                          <asp:ListItem Value="5">数学</asp:ListItem>
                                          <asp:ListItem Value="6">社会认知</asp:ListItem>
                                          <asp:ListItem Value="7">艺术表达与设计</asp:ListItem>
                                        </asp:CheckBoxList>
                                        </div>
                                    </li>

                                    <div class="hr-line-dashed"></div>
                                    <li class="form-group clearfix">
                                        <label class="col-sm-2 control-label">早期学习目标</label>
                                        <div class="col-sm-10 CheckBoxList2">
                                            <asp:CheckBoxList ID="CheckBoxList2" runat="server" OnSelectedIndexChanged="CheckBoxList2_SelectedIndexChanged" RepeatColumns="5" RepeatDirection="Horizontal" RepeatLayout="Flow"></asp:CheckBoxList>
                                            <%--<asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control chosen-select" ></asp:DropDownList>--%>
                                        </div>
                                    </li>

                                  </ContentTemplate>
                                  </asp:UpdatePanel>


                                    <div class="hr-line-dashed"></div>
                                        <label class="col-sm-2 control-label"></label>
                                        <div class="col-sm-10">
                                               <asp:LinkButton ID="LinkButton1" runat="server"  CssClass="btn btn-info" OnClick="LinkButton1_Click"><i class="fa fa-plus"></i> 添加</asp:LinkButton>
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
