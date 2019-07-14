<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="time_list.aspx.cs" Inherits="DB.Web.Admin.time_list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>预约管理</title>
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
 <div class="row border-bottom white-bg clearfix" data-desc='标题-锚标签'>
        <div class="col-lg-10">
            <ol class="breadcrumb">
                <li>
                    <a ><i class="fa fa-home"></i> 首页</a>
                </li>
                <li>
                    时间轴管理
                </li>
                <li class="active">
                    <strong>时间轴时间</strong>
                </li>
            </ol>
        </div>
    </div>
      <!-- wrapper-content begin -->
    <div class="wrapper wrapper-content">
    
        <div class="row">
            <div class="col-lg-12">
                <div class="ibox float-e-margins">


                        <div class="ibox-title">
                            <h5>时间轴列表 </h5>
                        </div>
                        <div class="ibox-content">

                            <div class="table-responsive">
                                <div class="dataTables_wrapper form-inline dt-bootstrap">

                                    <table class="table table-bordered table-hover dataTables  tooltip-demo" >
                                        <thead>
                                            <tr>
                                                <th>序号</th>
                                                <th>时间</th>
                                                 <th>标题</th>
                                               

                                                <th class="t-center">操作</th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                <asp:Repeater ID="Repeater1" runat="server"   onitemcommand="Repeater1_ItemCommand" >
                                    <ItemTemplate>
                                            <tr>
                                                <td>
                                                   <%#Eval("aid")%>
                                                </td>
                                                <td><%#Eval("adate")%></td>
                                                  <td><%#Eval("atitle")%></td>
                                               
                                                <td class="t-center">
                                                    <a href='<%#"time_modify.aspx?id="+Eval("aid")%> ' class="btn btn-primary btn-table-eidt" title="修改"  data-toggle="tooltip" data-placement="bottom">
                                                        <i class="fa fa-pencil"></i>
                                                    </a>
                                                   
                                                      <asp:LinkButton ID="LinkButton1" CommandArgument='<%#Eval("aid")%>' CommandName="del"  runat="server"  CssClass="btn btn-danger btn-table-eidt margin-left-20" title="删除"  data-toggle="tooltip" data-placement="bottom"><i class="fa fa-trash"></i> 
                                                      </asp:LinkButton>
                                                    
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
    <!-- wrapper-content end -->
</asp:Content>


