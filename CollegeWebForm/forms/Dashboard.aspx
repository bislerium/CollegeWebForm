<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="CollegeWebForm.forms.Dashboard" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <h2>Dashboard</h2>
    <p>
        Visual representation of data analysis over the current college database.
    </p>
<table class="nav-justified" style="height: 637px">
    <tr>
        <td style="width: 519px">
            <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1">
                <series>
                    <asp:Series Name="Series1" ChartType="Bar" IsValueShownAsLabel="True" XValueMember="GENDER" YValueMembers="COUNTS">
                    </asp:Series>
                </series>
                <chartareas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </chartareas>
                <Titles>
                    <asp:Title Name="Title1" Text="Total Person per Gender">
                    </asp:Title>
                </Titles>
            </asp:Chart>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:collegedb %>" ProviderName="<%$ ConnectionStrings:collegedb.ProviderName %>" SelectCommand="SELECT GENDER, COUNT(GENDER) AS counts FROM PERSON GROUP BY GENDER"></asp:SqlDataSource>
        </td>
        <td style="width: 423px">
            <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource2">
                <series>
                    <asp:Series IsValueShownAsLabel="True" Name="Series1" XValueMember="PERSON_TYPE" YValueMembers="COUNTS">
                    </asp:Series>
                </series>
                <chartareas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </chartareas>
                <Titles>
                    <asp:Title Name="Title1" Text="Total Person per Type">
                    </asp:Title>
                </Titles>
            </asp:Chart>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:collegedb %>" ProviderName="<%$ ConnectionStrings:collegedb.ProviderName %>" SelectCommand="SELECT PERSON_TYPE, COUNT(PERSON_TYPE) AS counts FROM PERSON GROUP BY PERSON_TYPE"></asp:SqlDataSource>
        </td>
        <td style="width: 395px">
            <asp:Chart ID="Chart3" runat="server">
                <series>
                    <asp:Series Name="Series1">
                    </asp:Series>
                </series>
                <chartareas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </chartareas>
            </asp:Chart>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server"></asp:SqlDataSource>
        </td>
        <td>
            <asp:Chart ID="Chart4" runat="server" DataSourceID="SqlDataSource4">
                <series>
                    <asp:Series ChartType="Funnel" IsValueShownAsLabel="True" Legend="Legend1" Name="Series1" XValueMember="STATUS" YValueMembers="COUNTS">
                    </asp:Series>
                </series>
                <chartareas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </chartareas>
                <Legends>
                    <asp:Legend Alignment="Center" Docking="Top" LegendStyle="Row" Name="Legend1">
                    </asp:Legend>
                </Legends>
                <Titles>
                    <asp:Title Name="Title1" Text="Total Students per Result Status">
                    </asp:Title>
                </Titles>
            </asp:Chart>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:collegedb %>" ProviderName="<%$ ConnectionStrings:collegedb.ProviderName %>" SelectCommand="SELECT GRADE_STATUS.STATUS, COUNT(GRADE_STATUS.STATUS) AS counts FROM ASSIGNMENT_RESULT, GRADE_STATUS WHERE GRADE_STATUS.GRADE = ASSIGNMENT_RESULT.GRADE GROUP BY GRADE_STATUS.STATUS"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td style="width: 519px">&nbsp;</td>
        <td style="width: 423px">&nbsp;</td>
        <td style="width: 395px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 519px">&nbsp;</td>
        <td style="width: 423px">&nbsp;</td>
        <td style="width: 395px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 519px">&nbsp;</td>
        <td style="width: 423px">&nbsp;</td>
        <td style="width: 395px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
