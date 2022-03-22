<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="CollegeWebForm.forms.Dashboard" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <h2>Dashboard</h2>
    <p>
        Visual representation of data analysis over the current college database.
    </p>
     <br/>
    <br/>
<table class="nav-justified">
    <tr>
        <td style="width: 519px">
            <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1">
                <series>
                    <asp:Series Name="Series1" ChartType="Bar" IsValueShownAsLabel="True" XValueMember="GENDER" YValueMembers="COUNTS" Palette="Bright">
                    </asp:Series>
                </series>
                <chartareas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </chartareas>
                <Titles>
                    <asp:Title Name="Title1" Text="Total Persons per Gender">
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
                    <asp:Title Name="Title1" Text="Total Persons per Type">
                    </asp:Title>
                </Titles>
            </asp:Chart>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:collegedb %>" ProviderName="<%$ ConnectionStrings:collegedb.ProviderName %>" SelectCommand="SELECT PERSON_TYPE, COUNT(PERSON_TYPE) AS counts FROM PERSON GROUP BY PERSON_TYPE"></asp:SqlDataSource>
        </td>
        <td style="width: 395px">
            <asp:Chart ID="Chart3" runat="server" DataSourceID="SqlDataSource3">
                <series>
                    <asp:Series Name="Series1" ChartType="Pie" Color="Transparent" IsValueShownAsLabel="True" Legend="Legend1" XValueMember="GRADE" YValueMembers="COUNT">
                    </asp:Series>
                </series>
                <chartareas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </chartareas>
                <Legends>
                    <asp:Legend Name="Legend1">
                    </asp:Legend>
                </Legends>
                <Titles>
                    <asp:Title Name="Title1" Text="Total Students per Grade">
                    </asp:Title>
                </Titles>
            </asp:Chart>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:collegedb %>" ProviderName="<%$ ConnectionStrings:collegedb.ProviderName %>" SelectCommand="SELECT GRADE, COUNT(GRADE) AS count FROM ASSIGNMENT_RESULT GROUP BY GRADE"></asp:SqlDataSource>
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
        <td style="width: 519px">
            <asp:Chart ID="Chart5" runat="server" DataSourceID="SqlDataSource5">
                <Series>
                    <asp:Series ChartArea="ChartArea1" ChartType="Doughnut" IsValueShownAsLabel="True" Legend="Legend1" Name="Series1" XValueMember="DEPARTMENT_NAME" YValueMembers="NUM_EMPLOYEES" YValuesPerPoint="2">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
                <Legends>
                    <asp:Legend Alignment="Center" Docking="Top" Name="Legend1">
                    </asp:Legend>
                </Legends>
                <Titles>
                    <asp:Title Name="Title1" Text="Total Employees per Department">
                    </asp:Title>
                </Titles>
            </asp:Chart>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:collegedb %>" ProviderName="<%$ ConnectionStrings:collegedb.ProviderName %>" SelectCommand="SELECT DEPARTMENT_NAME, NUM_EMPLOYEES FROM DEPARTMENT"></asp:SqlDataSource>
        </td>
        <td colspan="2">
            <asp:Chart ID="Chart6" runat="server" DataSourceID="SqlDataSource6" Width="600px">
                <Series>
                    <asp:Series ChartType="Line" Name="Series1" XValueMember="FEE_TYPE" YValueMembers="sum" IsValueShownAsLabel="True">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
                <Titles>
                    <asp:Title Name="Title1" Text="Revenue per Fee-type">
                    </asp:Title>
                </Titles>
            </asp:Chart>
            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:collegedb %>" ProviderName="<%$ ConnectionStrings:collegedb.ProviderName %>" SelectCommand="SELECT FEE.FEE_TYPE, SUM(FEE.FEE_AMOUNT) AS &quot;sum&quot; FROM FEE, STUDENT_FEE WHERE FEE.FEE_ID = STUDENT_FEE.FEE_ID GROUP BY FEE.FEE_TYPE ORDER BY FEE.FEE_TYPE"></asp:SqlDataSource>
        </td>
        <td>
            <asp:Chart ID="Chart9" runat="server" DataSourceID="SqlDataSource9">
                <Series>
                    <asp:Series ChartType="Pie" IsValueShownAsLabel="True" Legend="Legend1" Name="Series1" XValueMember="ASSIGNMENT_TYPE" YValueMembers="COUNTS">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
                <Legends>
                    <asp:Legend Alignment="Center" Docking="Top" Name="Legend1">
                    </asp:Legend>
                </Legends>
                <Titles>
                    <asp:Title Name="Title1" Text="Total Module Assignment per Assignment type">
                    </asp:Title>
                </Titles>
            </asp:Chart>
            <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:collegedb %>" ProviderName="<%$ ConnectionStrings:collegedb.ProviderName %>" SelectCommand="SELECT ASSIGNMENT.ASSIGNMENT_TYPE, COUNT(ASSIGNMENT.ASSIGNMENT_TYPE) AS counts FROM ASSIGNMENT, ASSIGNMENT_RESULT WHERE ASSIGNMENT.ASSIGNMENT_ID = ASSIGNMENT_RESULT.ASSIGNMENT_ID GROUP BY ASSIGNMENT.ASSIGNMENT_TYPE"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Chart ID="Chart8" runat="server" DataSourceID="SqlDataSource8" Width="600px">
                <Series>
                    <asp:Series IsValueShownAsLabel="True" Name="Series1" XValueMember="MODULE_NAME" YValueMembers="COUNTS">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
                <Titles>
                    <asp:Title Name="Title1" Text="Total Teachers allocation per Module">
                    </asp:Title>
                </Titles>
            </asp:Chart>
            <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:collegedb %>" ProviderName="<%$ ConnectionStrings:collegedb.ProviderName %>" SelectCommand="SELECT &quot;MODULE&quot;.MODULE_NAME, COUNT(&quot;MODULE&quot;.MODULE_NAME) AS counts FROM &quot;MODULE&quot;, MODULE_ALLOCATION, TEACHER WHERE &quot;MODULE&quot;.MODULE_ID = MODULE_ALLOCATION.MODULE_ID AND MODULE_ALLOCATION.TEACHER_ID = TEACHER.TEACHER_ID GROUP BY &quot;MODULE&quot;.MODULE_NAME"></asp:SqlDataSource>
        </td>
        <td colspan="2">
            <asp:Chart ID="Chart7" runat="server" DataSourceID="SqlDataSource7" Width="600px">
                <Series>
                    <asp:Series ChartArea="ChartArea1" Name="Series1" XValueMember="MODULE_NAME" YValueMembers="COUNTS" YValuesPerPoint="2">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
                <Titles>
                    <asp:Title Name="Title1" Text="Total Students enrollment per Module">
                    </asp:Title>
                </Titles>
            </asp:Chart>
            <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:collegedb %>" ProviderName="<%$ ConnectionStrings:collegedb.ProviderName %>" SelectCommand="SELECT &quot;MODULE&quot;.MODULE_NAME, COUNT(&quot;MODULE&quot;.MODULE_NAME) AS counts FROM &quot;MODULE&quot;, MODULE_ENROLMENT, STUDENT WHERE &quot;MODULE&quot;.MODULE_ID = MODULE_ENROLMENT.MODULE_ID AND STUDENT.STUDENT_ID = MODULE_ENROLMENT.STUDENT_ID GROUP BY &quot;MODULE&quot;.MODULE_NAME"></asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>
