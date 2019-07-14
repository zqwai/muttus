<%@ Page Title="" Language="C#" MasterPageFile="~/inventory/Site1.Master" AutoEventWireup="true" CodeBehind="p_modify.aspx.cs" Inherits="DB.Web.inventory.p_modify" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>出入库系统 | Mutuus管理系统</title>
    <!-- public -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <!-- coustom -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/coustom.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <!-- breadcrumb begin -->
    <div class="row border-bottom white-bg clearfix" data-desc='标题-锚标签'>
        <div class="col-lg-10">
            <ol class="breadcrumb">
                <li>
                    <a href="index.aspx"><i class="fa fa-home"></i> 首页</a>
                </li>
                <li>
                    库存管理
                </li>
                <li class="active">
                    <strong>创建品类</strong>
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
                        <h5>修改品类</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">

                               <%-- <div class="alert alert-info">
                                    请创建库存品类，才能完成后续操作
                                </div>--%>

                                <ul class="form-horizontal m-b clearfix" style="list-style: none;">
                                    <li class="form-group clearfix">
                                        <label class="col-sm-2 control-label">库存品类</label>
                                        <div class="col-sm-5">
                                            <input type="text" name="" value="" placeholder="输入库存品类" class="form-control" runat="server" id="pl">
                                        </div>
                                    </li>

                                    <div class="hr-line-dashed"></div>

                                    <li class="form-group clearfix">
                                        <label class="col-sm-2 control-label"></label>
                                        <div class="col-sm-10">
                                            <asp:LinkButton ID="LinkButton1" runat="server"  CssClass="btn btn-info" OnClick="LinkButton1_Click"><i class="fa fa-plus"></i> 添加</asp:LinkButton>
                                           
                                            <!-- <a href="javascript:history.back(-1)" class="btn btn-default m-l-lg"><i class="fa fa-reply"></i> 返回</a> -->
                                        </div>
                                    </li>
                                </ul>

                    </div>
                </div>

            </div>
        </div>
    </div>

</asp:Content>
