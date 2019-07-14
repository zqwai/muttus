<%@ Page Title="" Language="C#" MasterPageFile="~/student/Site1.Master" AutoEventWireup="true" CodeBehind="czdate_list.aspx.cs" Inherits="DB.Web.student.czdate_list" %>
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
                        <h5>学生数据列表</h5>
                    </div>
                    <div class="ibox-content">

                          <h5>评价体系列表</h5>
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
                                         <th>学生编号</th>
                                        <th>姓名</th>
                                        <th>月龄</th>
                                         <th>评估月份</th>
                                         <th>月龄总分</th>
                                         <th>特征总分</th>
                                        <th>评估结果</th>


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
                                                  <td><%#Eval("date")%></td>
                                                 <td><%#Eval("dtcp")%></td>
                                                 <td><%#Eval("dtmark")%></td>
                                                <td><%#Eval("rename")%></td>


                                            </tr>
                                    </ItemTemplate>
                                </asp:Repeater>


                                    </tbody>


                            </table>



                        </div>
                        </div>

                    </div>

                    <div class="ibox-content">

                          <h5>早期学习目标完成评估列表</h5>
                        <div class="table-responsive">
                            <div class="dataTables_wrapper form-inline dt-bootstrap">

                            <table class="table table-striped table-bordered table-hover dataTables" >
                                <thead>
                                    <tr>
                                        <th>特征完成度</th>
                                        <th>ELG01</th>
                                         <th>ELG02</th>
                                        <th>ELG03</th>
                                       <th>ELG04</th>
                                        <th>ELG05</th>
                                        <th>ELG06</th>
                                         <th>ELG07</th>

                                    </tr>
                                </thead>
                                <tbody>
                                       <asp:Repeater ID="Repeater2" runat="server"    >
                                    <ItemTemplate>
                                            <tr>
                                             <td><%#Eval("tall")%></td>
                                                <td><%#Eval("e1")%></td>
                                                  <td><%#Eval("e2")%></td>
                                                  <td><%#Eval("e3")%></td>
                                                  <td><%#Eval("e4")%></td>
                                                  <td><%#Eval("e5")%></td>
                                                  <td><%#Eval("e6")%></td>
                                                  <td><%#Eval("e7")%></td>

                                            </tr>
                                    </ItemTemplate>
                                </asp:Repeater>


                                    </tbody>


                            </table>



                        </div>
                        </div>

                    </div>


                      <div class="ibox-content">

                        <h5>本月各领域上课频率</h5>
                        <div class="table-responsive">

                             <div class="form-group clearfix">
                                自我认知: <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                              </div>


                             <div class="form-group clearfix">
                                    沟通和语言: <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                             </div>


                             <div class="form-group clearfix">
                                    身体发展: <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                             </div>


                             <div class="form-group clearfix">
                                      文字读写: <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                             </div>


                            <div class="form-group clearfix">
                                    数学: <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                            </div>

                            <div class="form-group clearfix">
                                      社会认知: <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>

                            </div>


                            <div class="form-group clearfix">
                                      艺术表达与设计: <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                            </div>







                        </div>

                    </div>
                </div>


            </div>
        </div>
    </div>
</asp:Content>
