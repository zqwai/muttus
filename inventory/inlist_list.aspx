<%@ Page Title="" Language="C#" MasterPageFile="~/inventory/Site1.Master" AutoEventWireup="true" CodeBehind="inlist_list.aspx.cs" Inherits="DB.Web.inventory.inlist_list" %>
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
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
      <!-- breadcrumb begin -->
    <div class="row border-bottom white-bg clearfix" data-desc='标题-锚标签'>
        <div class="col-lg-10">
            <ol class="breadcrumb">
                <li>
                    <a href="index.aspx"><i class="fa fa-home"></i> 首页</a>
                </li>
                <li>
                    入库管理
                </li>
                <li class="active">
                    <strong>入库单列表</strong>
                </li>
            </ol>
        </div>
    </div>
        <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-lg-12">
                
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>入库单列表</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                        </div>
                    </div> 
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>       
                    <div class="ibox-content">

                        <div class="table-responsive">
                            <div class="dataTables_wrapper form-inline dt-bootstrap">
                            <div class="clearfix m-b">
                                <div class="html5buttons">
                                    <div class="dt-buttons btn-group">
                                      
                                    </div>
                                </div>
                                <div class="dataTables_length form-inline">
                                        
                                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control input-sm chosen-select" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control input-sm chosen-select"></asp:DropDownList>
                                           
                                    <input type="text" name="" value="" placeholder="关键字" class="form-control" runat="server" id="key">
                                    <asp:Button ID="Button1" runat="server" Text="搜索" CssClass="btn btn-default m-no" OnClick="Button1_Click" />
                                  
                                </div>
                                
                            </div>


                            <table class="table table-striped table-bordered table-hover dataTables" >
                                <thead>
                                    <tr>
                                        <th width="5%" class="t-center">编号</th>
                                        <th width="7%" class="t-center">库存品类</th>
                                        <th width="8%" class="t-center">用品名称</th>
                                        <th width="7%" class="t-center">入库数量</th>
                                        <th width="8%" class="t-center">操作人</th>
                                        <th width="15%" class="t-center">时间</th>
                                        <th width="40%" class="t-center">备注</th>
                                        <th width="10%" class="t-center">操作</th>
                                       
                                    </tr>
                                </thead>
                                <tbody>
                                    
                                       <asp:Repeater ID="Repeater1" runat="server"   onitemcommand="Repeater1_ItemCommand" OnItemDataBound="Repeater1_OnItemDataBound" >
                                    <ItemTemplate>
                                            <tr>
                                                <td>
                                                   <%#Eval("rk_id")%>
                                                </td>
                                                <td><%#Eval("pname")%></td>
                                                 <td><%#Eval("kc_name")%></td>
                                                 <td><%#Eval("num")%><%#Eval("num_base")%></td>
                                                <td><%#Eval("createdbyname")%></td>
                                                <td><%#Eval("createdon")%></td>
                                               <td><%#Eval("remark")%></td>
                                                <td class="t-center">
                                                  
                                                    
                                                      <asp:LinkButton ID="LinkButton1" CommandArgument='<%#Eval("rk_id")%>' CommandName="del"  runat="server"  CssClass="btn btn-warning btn-table-eidt" title="删除" ><i class="fa fa-trash"></i> 
                                                      </asp:LinkButton>
                                                    
                                                 <%--     <asp:LinkButton ID="LinkButton2" CommandArgument='<%#Eval("kc_id")%>' CommandName="jy"  runat="server"  CssClass="btn btn-danger btn-table-eidt" title="禁用" ><i class="fa fa-minus"></i> 
                                                      </asp:LinkButton>--%>
                                                    
                                                </td>
                                            </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                                </tbody>
                            </table>

                                     <div class="dataTables_paginate paging_simple_numbers">
                                       
                                        共<asp:Label ID="lb_count" runat="server" Text="Label"></asp:Label>条记录
                                        共<asp:Label ID="lb_page" runat="server" Text="Label"></asp:Label>页 ;
                                        当前第<asp:Label ID="lb_CurrentPage" runat="server" Text="1"></asp:Label>页
                                        <asp:LinkButton ID="LinkFirst" runat="server" OnClick="LinkFirst_Click">首页</asp:LinkButton>
                                        <asp:LinkButton ID="LinkUp" runat="server" OnClick="LinkUp_Click">上一页</asp:LinkButton>
                                        <asp:LinkButton ID="LinkDown" runat="server" OnClick="LinkDown_Click">下一页</asp:LinkButton>
                                        <asp:LinkButton ID="LinkLast" runat="server" OnClick="LinkLast_Click">尾页</asp:LinkButton>
                                        转到第<asp:DropDownList ID="DropDownList3" runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>页
                                        
                                    </div>


                            </div>
                        </div>


                    </div>
                        </ContentTemplate></asp:UpdatePanel>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
