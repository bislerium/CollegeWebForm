<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BasicTeacher.aspx.cs" Inherits="CollegeWebForm.Teacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="TEACHER_ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="TEACHER_ID" HeaderText="TEACHER_ID" ReadOnly="True" SortExpression="TEACHER_ID" />
                <asp:BoundField DataField="SALARY" HeaderText="SALARY" SortExpression="SALARY" />
                <asp:BoundField DataField="DATE_JOINED" HeaderText="DATE_JOINED" SortExpression="DATE_JOINED" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;TEACHER&quot; WHERE &quot;TEACHER_ID&quot; = :original_TEACHER_ID AND &quot;SALARY&quot; = :original_SALARY AND &quot;DATE_JOINED&quot; = :original_DATE_JOINED" InsertCommand="INSERT INTO &quot;TEACHER&quot; (&quot;TEACHER_ID&quot;, &quot;SALARY&quot;, &quot;DATE_JOINED&quot;) VALUES (:TEACHER_ID, :SALARY, :DATE_JOINED)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;TEACHER&quot;" UpdateCommand="UPDATE &quot;TEACHER&quot; SET &quot;SALARY&quot; = :SALARY, &quot;DATE_JOINED&quot; = :DATE_JOINED WHERE &quot;TEACHER_ID&quot; = :original_TEACHER_ID AND &quot;SALARY&quot; = :original_SALARY AND &quot;DATE_JOINED&quot; = :original_DATE_JOINED">
            <DeleteParameters>
                <asp:Parameter Name="original_TEACHER_ID" Type="Decimal" />
                <asp:Parameter Name="original_SALARY" Type="Decimal" />
                <asp:Parameter Name="original_DATE_JOINED" Type="DateTime" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TEACHER_ID" Type="Decimal" />
                <asp:Parameter Name="SALARY" Type="Decimal" />
                <asp:Parameter Name="DATE_JOINED" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="SALARY" Type="Decimal" />
                <asp:Parameter Name="DATE_JOINED" Type="DateTime" />
                <asp:Parameter Name="original_TEACHER_ID" Type="Decimal" />
                <asp:Parameter Name="original_SALARY" Type="Decimal" />
                <asp:Parameter Name="original_DATE_JOINED" Type="DateTime" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="TEACHER_ID" DataSourceID="SqlDataSource1">
            <InsertItemTemplate>
                TEACHER_ID:
                <asp:TextBox ID="TEACHER_IDTextBox" runat="server" Text='<%# Bind("TEACHER_ID") %>' />
                <br />
                SALARY:
                <asp:TextBox ID="SALARYTextBox" runat="server" Text='<%# Bind("SALARY") %>' />
                <br />
                DATE_JOINED:
                <asp:TextBox ID="DATE_JOINEDTextBox" runat="server" Text='<%# Bind("DATE_JOINED") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
    </form>
</body>
</html>
