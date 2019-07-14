<%@ Page Title="" Language="C#" MasterPageFile="~/inventory/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="DB.Web.inventory.index" %>
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
    <div class="wrapper wrapper-content">
        <div class="row">
            <div class="col-lg-3">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <a href="inventory_product_category.html" class="label label-info pull-right"><i class="fa fa-plus"></i> 新增</a>
                        <h5>库存品类</h5>
                    </div>
                    <div class="ibox-content clearfix">
                        <h1 class="no-margins" runat="server" id="pl">15 <small class="font-noraml">种</small></h1>
                        <small class="stat-percent" runat="server" id="date1"></small>
                        <small>截止</small>
                    </div>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <a href="inventory_add.aspx" class="label label-info pull-right"><i class="fa fa-plus"></i> 新增</a>
                        <h5>库存</h5>
                    </div>
                    <div class="ibox-content clearfix">
                        <h1 class="no-margins" runat="server" id="kcbase">40 <small class="font-noraml">种</small></h1>
                        <small class="stat-percent" runat="server" id="date2">2014.10.06</small>
                        <small>截止</small>
                    </div>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <a href="inlist_list.aspx" class="label label-info pull-right"><i class="fa fa-eye"></i> 明细</a>
                        <h5>入库单</h5>
                    </div>
                    <div class="ibox-content clearfix">
                        <h1 class="no-margins" runat="server" id="rkd">300 <small class="font-noraml">个</small></h1>
                        <small class="stat-percent" runat="server" id="date3"></small>
                        <small>截止</small>
                    </div>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <a href="outlist_list.aspx" class="label label-info pull-right"><i class="fa fa-eye"></i> 明细</a>
                        <h5>出库单</h5>
                    </div>
                    <div class="ibox-content clearfix">
                        <h1 class="no-margins" runat="server" id="ckd">300 <small class="font-noraml">个</small></h1>
                        <small class="stat-percent" runat="server" id="date4"></small>
                        <small>截止</small>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
