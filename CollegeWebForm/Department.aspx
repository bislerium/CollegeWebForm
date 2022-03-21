<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Department.aspx.cs" Inherits="CollegeWebForm.Department" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="DEPARTMENT_ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="DEPARTMENT_ID" HeaderText="DEPARTMENT_ID" ReadOnly="True" SortExpression="DEPARTMENT_ID" />
                    <asp:BoundField DataField="DEPARTMENT_NAME" HeaderText="DEPARTMENT_NAME" SortExpression="DEPARTMENT_NAME" />
                    <asp:BoundField DataField="DEPARTMENT_LOCATION" HeaderText="DEPARTMENT_LOCATION" SortExpression="DEPARTMENT_LOCATION" />
                    <asp:BoundField DataField="NUM_EMPLOYEES" HeaderText="NUM_EMPLOYEES" SortExpression="NUM_EMPLOYEES" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;DEPARTMENT&quot; WHERE &quot;DEPARTMENT_ID&quot; = :original_DEPARTMENT_ID AND &quot;DEPARTMENT_NAME&quot; = :original_DEPARTMENT_NAME AND &quot;DEPARTMENT_LOCATION&quot; = :original_DEPARTMENT_LOCATION AND &quot;NUM_EMPLOYEES&quot; = :original_NUM_EMPLOYEES" InsertCommand="INSERT INTO &quot;DEPARTMENT&quot; (&quot;DEPARTMENT_ID&quot;, &quot;DEPARTMENT_NAME&quot;, &quot;DEPARTMENT_LOCATION&quot;, &quot;NUM_EMPLOYEES&quot;) VALUES (:DEPARTMENT_ID, :DEPARTMENT_NAME, :DEPARTMENT_LOCATION, :NUM_EMPLOYEES)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;DEPARTMENT&quot;" UpdateCommand="UPDATE &quot;DEPARTMENT&quot; SET &quot;DEPARTMENT_NAME&quot; = :DEPARTMENT_NAME, &quot;DEPARTMENT_LOCATION&quot; = :DEPARTMENT_LOCATION, &quot;NUM_EMPLOYEES&quot; = :NUM_EMPLOYEES WHERE &quot;DEPARTMENT_ID&quot; = :original_DEPARTMENT_ID AND &quot;DEPARTMENT_NAME&quot; = :original_DEPARTMENT_NAME AND &quot;DEPARTMENT_LOCATION&quot; = :original_DEPARTMENT_LOCATION AND &quot;NUM_EMPLOYEES&quot; = :original_NUM_EMPLOYEES">
                <DeleteParameters>
                    <asp:Parameter Name="original_DEPARTMENT_ID" Type="Decimal" />
                    <asp:Parameter Name="original_DEPARTMENT_NAME" Type="String" />
                    <asp:Parameter Name="original_DEPARTMENT_LOCATION" Type="String" />
                    <asp:Parameter Name="original_NUM_EMPLOYEES" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="DEPARTMENT_ID" Type="Decimal" />
                    <asp:Parameter Name="DEPARTMENT_NAME" Type="String" />
                    <asp:Parameter Name="DEPARTMENT_LOCATION" Type="String" />
                    <asp:Parameter Name="NUM_EMPLOYEES" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="DEPARTMENT_NAME" Type="String" />
                    <asp:Parameter Name="DEPARTMENT_LOCATION" Type="String" />
                    <asp:Parameter Name="NUM_EMPLOYEES" Type="Decimal" />
                    <asp:Parameter Name="original_DEPARTMENT_ID" Type="Decimal" />
                    <asp:Parameter Name="original_DEPARTMENT_NAME" Type="String" />
                    <asp:Parameter Name="original_DEPARTMENT_LOCATION" Type="String" />
                    <asp:Parameter Name="original_NUM_EMPLOYEES" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="DEPARTMENT_ID" DataSourceID="SqlDataSource1">
                <InsertItemTemplate>
                    DEPARTMENT_NAME:
                    <asp:TextBox ID="DEPARTMENT_NAMETextBox" runat="server" Text='<%# Bind("DEPARTMENT_NAME") %>' />
                    <br />
                    DEPARTMENT_LOCATION:
                    <asp:TextBox ID="DEPARTMENT_LOCATIONTextBox" runat="server" Text='<%# Bind("DEPARTMENT_LOCATION") %>' />
                    <br />
                    NUM_EMPLOYEES:
                    <asp:TextBox ID="NUM_EMPLOYEESTextBox" runat="server" Text='<%# Bind("NUM_EMPLOYEES") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate><asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
        </div>
    </form>
</body>
</html>
