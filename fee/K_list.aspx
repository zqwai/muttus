<%@ Page Title="" Language="C#" MasterPageFile="~/fee/Site1.Master" AutoEventWireup="true" CodeBehind="K_list.aspx.cs" Inherits="DB.Web.fee.K_list" %>
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
    <link href="http://www.imutuus.com/admin/css/plugins/dataTables/datatables.min.css" rel="stylesheet">
    <!-- coustom -->
    <link href="http://www.imutuus.com/admin/css/style.css" rel="stylesheet">
    <link href="http://www.imutuus.com/admin/css/coustom.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-lg-12">


                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>学生列表</h5>
                    </div>
                    <div class="ibox-content">


                        <div class="table-responsive">
                            <div class="dataTables_wrapper form-inline dt-bootstrap">
                            <div class="clearfix m-b">
                                <div class="html5buttons">
                                    <div class="dt-buttons btn-group">
                                        <%--<asp:Button ID="Button1" runat="server" Text="更新学生数据" CssClass="btn btn-default buttons-csv buttons-html5" OnClick="Button1_Click" />--%>
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
                                         <th>学生编号</th>
                                        <th>姓名</th>
                                        <th>月龄</th>
                                         <th>性别</th>
                                            <th>费用总额</th>
                                            <th>剩余费用</th>
                                          <th>状态</th>
                                            <th>签到天数</th>
                                            <th>病假天数</th>
                                            <th>事假天数</th>
                                        <th class="t-center">操作</th>
                                    </tr>
                                </thead>
                                <tbody>
                                       <asp:Repeater ID="Repeater1" runat="server"   onitemcommand="Repeater1_ItemCommand" OnItemDataBound="Repeater1_OnItemDataBound" >
                                    <ItemTemplate>
                                            <tr>
                                                <td>
                                                   <%#Eval("atid")%>
                                                </td>
                                                <td><%#Eval("uid")%></td>
                                                    <td><%#Eval("uname")%></td>
                                                  <td><%#Eval("uage")%></td>
                                               
                                                <td><%#Eval("sexname")%></td>
                                                   <td runat="server" id="Td4"><%#Eval("uid")%></td>
                                                  <td runat="server" id="Td5"><%#Eval("uid")%></td>
                                                   <td runat="server" id="role"><%#Eval("status")%></td>
                                                  <td runat="server" id="Td1"><%#Eval("uid")%></td>
                                                  <td runat="server" id="Td2"><%#Eval("uid")%></td>
                                                  <td runat="server" id="Td3"><%#Eval("uid")%></td>
                                                <td class="t-center">
                                                  <a href='<%#"r_f_list.aspx?id="+Eval("uid")%> ' class="btn btn-info btn-table-eidt" title="查看费用包"  >
                                                        <i class="fa  fa-eye"></i>
                                                    </a>
                                                   
                                                    
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
                </div>


            </div>
        </div>
    </div>
</asp:Content>

