<%@ Page Title="" Language="C#" MasterPageFile="~/student/Site1.Master" AutoEventWireup="true" CodeBehind="C_list.aspx.cs" Inherits="DB.Web.student.C_list" %>
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
                        <h5>餐表列表</h5>
                    </div>
                    <div class="ibox-content">


                        <div class="table-responsive">
                            <div class="dataTables_wrapper form-inline dt-bootstrap">
                            <div class="clearfix m-b">
                                <div class="html5buttons">
                                    <div class="dt-buttons btn-group">
                                      <a data-toggle="modal" data-target="#myModalPhone" class="btn btn-default buttons-csv buttons-html5">
                                        <i class="fa fa-eye"></i>
                                        <span>移动端查看</span>
                                      </a>

                                      <div id="myModalPhone" class="modal fade" tabindex="-1" role="dialog">
                                        <div class="modal-dialog" role="document">
                                          <div class="modal-content">
                                            <div class="modal-header">
                                              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                              <h4 class="modal-title">今日餐表 </h4>
                                            </div>
                                            <div class="modal-body">
                                              <p style="text-align:center">
                                                <img src="http://www.imutuus.com/qrcode/201782113018.gif" width="160"><br><br>
                                                <small>扫码在移动端端查看</small>
                                              </p>
                                            </div>
                                            <div class="modal-footer">
                                              <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                            </div>
                                          </div><!-- /.modal-content -->
                                        </div><!-- /.modal-dialog -->
                                      </div><!-- /.modal -->
<script>
$('#myModalPhone').on('shown.bs.modal', function () {
$('#myInput').focus()
})
</script>
                                    </div>
                                </div>

                            </div>


                            <table class="table table-striped table-bordered table-hover dataTables" >
                                <thead>
                                    <tr>
                                        <th>编号</th>
                                          <th>星期</th>
                                        <th>日期</th>
                                      <th>分类</th>
                                            <th>名称</th>
                                            <th>描述</th>

                                        <th class="t-center">操作</th>
                                    </tr>
                                </thead>
                                <tbody>
                                       <asp:Repeater ID="Repeater1" runat="server"   onitemcommand="Repeater1_ItemCommand" OnItemDataBound="Repeater1_OnItemDataBound" >
                                    <ItemTemplate>
                                            <tr>
                                                <td>
                                                   <%#Eval("cbid")%>
                                                </td>
                                                 <td>
                                                   <%#Eval("week")%>
                                                </td>
                                                <td><%#Eval("date")%></td>
                                                   <td runat="server" id="tx"><%#Eval("iscopy")%></td>
                                                   <td><%#Eval("swdx")%></td>
                                                <td><%#Eval("swdt")%></td>

                                                <td class="t-center">
                                                    <a href='<%#"c_modify.aspx?id="+Eval("cbid")%> ' class="btn btn-info btn-table-eidt" title="修改"  >
                                                        <i class="fa  fa-eye"></i>
                                                    </a>



                                                      <asp:LinkButton ID="LinkButton1" CommandArgument='<%#Eval("cbid")%>' CommandName="del"  runat="server"  CssClass="btn btn-warning btn-table-eidt" title="删除" ><i class="fa fa-trash"></i>
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
</asp:Content>
