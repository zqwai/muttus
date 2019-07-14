<%@ Page Title="" Language="C#" MasterPageFile="~/inventory/Site1.Master" AutoEventWireup="true" CodeBehind="inventory_modify.aspx.cs" Inherits="DB.Web.inventory.inventory_modify" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>出入库系统 | Mutuus管理系统</title>
    <!-- public -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <!-- plugins -->
    <link href="css/plugins/datetimepicker/bootstrap-datetimepicker.min.css" rel="stylesheet">
    <link href="css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">
    <link href="css/plugins/chosen/chosen.css" rel="stylesheet">
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
                    <strong>创建用品</strong>
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
                        <h5>创建用品</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">

                                <div class="alert alert-info">
                                    请先确认库存品类已创建，才能完成此操作！用品创建完成，才能完成出入库的操作
                                </div>

                                <ul class="form-horizontal m-b clearfix" style="list-style: none;">
                                    <li class="form-group clearfix">
                                        <label class="col-sm-2 control-label">选择库存品类</label>
                                        <div class="col-sm-5">
                                            <asp:DropDownList ID="DropDownList1" runat="server"  CssClass="form-control chosen-select"></asp:DropDownList>
                                          <%--  <select name="province" class="form-control chosen-select">
                                                <option value="1">文具用品</option>
                                                <option value="2">教学器材用品</option>
                                                <option value="3">玩具用品</option>
                                                <option value="3">保洁用品</option>
                                                <option value="3">厨房用品</option>
                                            </select>--%>
                                        </div>
                                    </li>

                                    <div class="hr-line-dashed"></div>

                                    <li class="form-group clearfix">
                                        <label class="col-sm-2 control-label">用品名称</label>
                                        <div class="col-sm-5">
                                            <input type="text" name="" value="" placeholder="输入用品名称" class="form-control" runat="server" id="name">
                                        </div>
                                    </li>
                                    
                                    <div class="hr-line-dashed"></div>

                                    <li class="form-group clearfix">
                                        <label class="col-sm-2 control-label">库存</label>
                                        <div class="col-sm-2">
                                            <input type="text" name="" value="0" placeholder="输入库存" class="form-control" id="num" runat="server">
                                        </div>
                                        <div class="col-sm-2">
                                            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control chosen-select">
                                              
                                                    <asp:ListItem Value="1">个</asp:ListItem>
                                                    <asp:ListItem Value="2">支</asp:ListItem>
                                                    <asp:ListItem Value="3">盒</asp:ListItem>
                                                    <asp:ListItem Value="4">包</asp:ListItem>
                                                    <asp:ListItem Value="5">张</asp:ListItem>
                                                    <asp:ListItem Value="6">台</asp:ListItem>
                                                    <asp:ListItem Value="7">条</asp:ListItem>
                                                    <asp:ListItem Value="8">打</asp:ListItem>
                                                    <asp:ListItem Value="9">袋</asp:ListItem>
                                                    <asp:ListItem Value="10">斤</asp:ListItem>
                                            </asp:DropDownList>
                                         <%--   <select name="province" class="form-control chosen-select">
                                                <option value="1">个</option>
                                                <option value="2">支</option>
                                                <option value="3">盒</option>
                                                <option value="3">包</option>
                                                <option value="3">张</option>
                                                <option value="1">台</option>
                                                <option value="2">条</option>
                                                <option value="3">打</option>
                                                <option value="3">袋</option>
                                                <option value="3">斤</option>
                                            </select>--%>
                                        </div>
                                    </li>

                                    <div class="hr-line-dashed"></div>

                                    <li class="form-group clearfix">
                                        <label class="col-sm-2 control-label">备注</label>
                                        <div class="col-sm-10">
                                            <textarea name="" rows="8" placeholder="备注" class="form-control" runat="server" id="remark"></textarea>
                                        </div>
                                    </li>

                                    <div class="hr-line-dashed"></div>

                                    <li class="form-group clearfix">
                                        <label class="col-sm-2 control-label"></label>
                                        <div class="col-sm-10">

                                           <asp:LinkButton ID="LinkButton1" runat="server"  CssClass="btn btn-info" OnClick="LinkButton1_Click"><i class="fa fa-plus"></i> 修改</asp:LinkButton>
                                           
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
