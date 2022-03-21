<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Module.aspx.cs" Inherits="CollegeWebForm.Module" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="MODULE_ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="MODULE_ID" HeaderText="MODULE_ID" ReadOnly="True" SortExpression="MODULE_ID" />
                    <asp:BoundField DataField="MODULE_CODE" HeaderText="MODULE_CODE" SortExpression="MODULE_CODE" />
                    <asp:BoundField DataField="MODULE_NAME" HeaderText="MODULE_NAME" SortExpression="MODULE_NAME" />
                    <asp:BoundField DataField="WEEK_DURATION" HeaderText="WEEK_DURATION" SortExpression="WEEK_DURATION" />
                    <asp:BoundField DataField="CREDIT_HOURS" HeaderText="CREDIT_HOURS" SortExpression="CREDIT_HOURS" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;MODULE&quot; WHERE &quot;MODULE_ID&quot; = :original_MODULE_ID AND &quot;MODULE_CODE&quot; = :original_MODULE_CODE AND &quot;MODULE_NAME&quot; = :original_MODULE_NAME AND &quot;WEEK_DURATION&quot; = :original_WEEK_DURATION AND &quot;CREDIT_HOURS&quot; = :original_CREDIT_HOURS" InsertCommand="INSERT INTO &quot;MODULE&quot; (&quot;MODULE_ID&quot;, &quot;MODULE_CODE&quot;, &quot;MODULE_NAME&quot;, &quot;WEEK_DURATION&quot;, &quot;CREDIT_HOURS&quot;) VALUES (:MODULE_ID, :MODULE_CODE, :MODULE_NAME, :WEEK_DURATION, :CREDIT_HOURS)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;MODULE&quot;" UpdateCommand="UPDATE &quot;MODULE&quot; SET &quot;MODULE_CODE&quot; = :MODULE_CODE, &quot;MODULE_NAME&quot; = :MODULE_NAME, &quot;WEEK_DURATION&quot; = :WEEK_DURATION, &quot;CREDIT_HOURS&quot; = :CREDIT_HOURS WHERE &quot;MODULE_ID&quot; = :original_MODULE_ID AND &quot;MODULE_CODE&quot; = :original_MODULE_CODE AND &quot;MODULE_NAME&quot; = :original_MODULE_NAME AND &quot;WEEK_DURATION&quot; = :original_WEEK_DURATION AND &quot;CREDIT_HOURS&quot; = :original_CREDIT_HOURS">
                <DeleteParameters>
                    <asp:Parameter Name="original_MODULE_ID" Type="Decimal" />
                    <asp:Parameter Name="original_MODULE_CODE" Type="String" />
                    <asp:Parameter Name="original_MODULE_NAME" Type="String" />
                    <asp:Parameter Name="original_WEEK_DURATION" Type="Decimal" />
                    <asp:Parameter Name="original_CREDIT_HOURS" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MODULE_ID" Type="Decimal" />
                    <asp:Parameter Name="MODULE_CODE" Type="String" />
                    <asp:Parameter Name="MODULE_NAME" Type="String" />
                    <asp:Parameter Name="WEEK_DURATION" Type="Decimal" />
                    <asp:Parameter Name="CREDIT_HOURS" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="MODULE_CODE" Type="String" />
                    <asp:Parameter Name="MODULE_NAME" Type="String" />
                    <asp:Parameter Name="WEEK_DURATION" Type="Decimal" />
                    <asp:Parameter Name="CREDIT_HOURS" Type="Decimal" />
                    <asp:Parameter Name="original_MODULE_ID" Type="Decimal" />
                    <asp:Parameter Name="original_MODULE_CODE" Type="String" />
                    <asp:Parameter Name="original_MODULE_NAME" Type="String" />
                    <asp:Parameter Name="original_WEEK_DURATION" Type="Decimal" />
                    <asp:Parameter Name="original_CREDIT_HOURS" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="MODULE_ID" DataSourceID="SqlDataSource1">
                <InsertItemTemplate>
                    MODULE_CODE:
                    <asp:TextBox ID="MODULE_CODETextBox" runat="server" Text='<%# Bind("MODULE_CODE") %>' />
                    <br />
                    MODULE_NAME:
                    <asp:TextBox ID="MODULE_NAMETextBox" runat="server" Text='<%# Bind("MODULE_NAME") %>' />
                    <br />
                    WEEK_DURATION:
                    <asp:TextBox ID="WEEK_DURATIONTextBox" runat="server" Text='<%# Bind("WEEK_DURATION") %>' />
                    <br />
                    CREDIT_HOURS:
                    <asp:TextBox ID="CREDIT_HOURSTextBox" runat="server" Text='<%# Bind("CREDIT_HOURS") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
        </div>
    </form>
</body>
</html>
