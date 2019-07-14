<%@ Page Title="" Language="C#" MasterPageFile="~/inventory/Site1.Master" AutoEventWireup="true" CodeBehind="manage_list.aspx.cs" Inherits="DB.Web.inventory.manage_list" %>
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
    <link href="css/plugins/dataTables/datatables.min.css" rel="stylesheet">
    <!-- coustom -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/coustom.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-lg-12">


                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>管理员列表</h5>
                    </div>
                    <div class="ibox-content">


                        <div class="table-responsive">
                            <div class="dataTables_wrapper form-inline dt-bootstrap">
                            <div class="clearfix m-b">
                                <div class="html5buttons">
                                    <div class="dt-buttons btn-group">
                                      <%--  <a class="btn btn-default buttons-csv buttons-html5"><span>CSV</span></a>
                                        <a class="btn btn-default buttons-excel"><span>Excel</span></a>
                                        <a class="btn btn-default buttons-pdf"><span>PDF</span></a>
                                        <a class="btn btn-default buttons-print"><span>Print</span></a>--%>
                                    </div>
                                </div>
                                
                            </div>

                            
                            <table class="table table-striped table-bordered table-hover dataTables" >
                                <thead>
                                    <tr>
                                        <th>编号</th>
                                        <th>姓名</th>
                                        <th>身份</th>

                                        <th class="t-center">操作</th>
                                    </tr>
                                </thead>
                                <tbody>
                                       <asp:Repeater ID="Repeater1" runat="server"   onitemcommand="Repeater1_ItemCommand" OnItemDataBound="Repeater1_OnItemDataBound" >
                                    <ItemTemplate>
                                            <tr>
                                                <td>
                                                   <%#Eval("adminid")%>
                                                </td>
                                                <td><%#Eval("weixinname")%></td>
                                                  <td runat="server" id="role"><%#Eval("roleid")%></td>
                                              
                                                <td class="t-center">
                                                    <a href='<%#"manage_modify.aspx?id="+Eval("adminid")%> ' class="btn btn-info btn-table-eidt" title="审核赋权"  >
                                                        <i class="fa  fa-eye"></i>
                                                    </a>
                                                   
                                                    
                                                    
                                                      <asp:LinkButton ID="LinkButton1" CommandArgument='<%#Eval("adminid")%>' CommandName="del"  runat="server"  CssClass="btn btn-warning btn-table-eidt" title="删除" ><i class="fa fa-trash"></i> 
                                                      </asp:LinkButton>
                                                    
                                                      <asp:LinkButton ID="LinkButton2" CommandArgument='<%#Eval("adminid")%>' CommandName="jy"  runat="server"  CssClass="btn btn-danger btn-table-eidt" title="禁用" ><i class="fa fa-minus"></i> 
                                                      </asp:LinkButton>
                                                    
                                                </td>
                                            </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
      
                                    
                                    </tbody>
                                    <tfoot>
                                    <tr>
                                        <th>编号</th>
                                        <th>姓名</th>
                                        <th>身份</th>
                                           <th class="t-center">操作</th>
                                    </tr>
                                    </tfoot>
                                
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
                </div>


            </div>
        </div>
    </div>
</asp:Content>
