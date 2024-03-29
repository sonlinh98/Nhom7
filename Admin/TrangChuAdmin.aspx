﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="TrangChuAdmin.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <h2>Thống kê doanh thu các tháng trong năm 2019</h2>
    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDsThongKe" Height="424px" Width="840px">
        <Series>
            <asp:Series Name="Series1" XValueMember="Thang" YValueMembers="Doanhthu">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </ChartAreas>
</asp:Chart>
    <br />
  
        <asp:SqlDataSource ID="SqlDsThongKe" runat="server" ConnectionString="<%$ ConnectionStrings:QLBanOtoConnectionString %>" SelectCommand="Select SUM(DonGia) as 'Doanhthu', MONTH(NgayTao) as 'Thang' From DON_HANG WHERE YEAR(NgayTao)=@nam GROUP BY MONTH(NgayTao) ">
            <SelectParameters>
                <asp:Parameter DefaultValue="2019" Name="nam" />
            </SelectParameters>
    </asp:SqlDataSource>
    
</asp:Content>

