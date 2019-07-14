<%@ Page Title="" Language="C#" MasterPageFile="~/inventory/Site1.Master" AutoEventWireup="true" CodeBehind="manage_modify.aspx.cs" Inherits="DB.Web.inventory.manage_modify" %>
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
        <!-- wrapper-content begin-->
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-lg-12">
                
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>编辑管理员 </h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">

                                <div class="alert alert-info">
                                    重置密码：若需要修改才填
                                </div>

                                <ul class="form-horizontal m-b clearfix" style="list-style: none;">
                                    <li class="form-group clearfix">
                                        <label class="col-sm-2 control-label">姓名</label>
                                        <div class="col-sm-5" style="padding-top: 7px;" runat="server" id="name">
                                          
                                        </div>
                                    </li>

                                    <div class="hr-line-dashed"></div>

                                    <li class="form-group clearfix">
                                        <label class="col-sm-2 control-label">权限归属</label>
                                        
                                        <div class="col-sm-5">
                                            <asp:DropDownList ID="DropDownList1" runat="server">
                                                <asp:ListItem Value="0">超级管理员</asp:ListItem>
                                                   <asp:ListItem Value="1">管理员</asp:ListItem>
                                                   <asp:ListItem Value="2">库存管理员</asp:ListItem>
                                                   <asp:ListItem Value="3">入库及库存管理</asp:ListItem>
                                                   <asp:ListItem Value="4">出库及库存管理</asp:ListItem>
                                            </asp:DropDownList>
                                       <%--     <select name="" class="form-control chosen-select">
                                                <option value="0">超级管理员</option>
                                                <option value="1">管理员</option>
                                                <option value="2">库存管理员</option>
                                                <option value="2">入库及库存管理</option>
                                                <option value="3">出库及库存管理</option>
                                            </select>--%>
                                        </div>
                                    </li>

                                    <div class="hr-line-dashed"></div>

                                    <li class="form-group clearfix">
                                        <label class="col-sm-2 control-label">初始或重置密码</label>
                                        
                                        <div class="col-sm-5">
                                            <input type="text" name="" value="" placeholder="重置密码" class="form-control" runat="server" id="pass">
                                        </div>
                                    </li>

                                    <div class="hr-line-dashed"></div>

                                    <li class="form-group clearfix">
                                        <label class="col-sm-2 control-label"></label>
                                        <div class="col-sm-10">
                                            <asp:LinkButton ID="LinkButton1" runat="server"  CssClass="btn btn-info" OnClick="LinkButton1_Click"><i class="fa fa-check"></i>确认修改</asp:LinkButton>
                                           
                                        </div>
                                    </li>
                                </ul>

                    </div>
                </div>

            </div>
        </div>
    </div>

    <div class="footer">
        <div class="pull-right">
            栾叮互动－技术支持
        </div>
        <div>
            <strong> Mutuus </strong> &copy; 2016-2020
        </div>
    </div>
</asp:Content>
