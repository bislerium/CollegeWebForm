<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentAttendance.aspx.cs" Inherits="CollegeWebForm.forms.StudentAttendance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="STUDENT_ID,ATTENDANCE_ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" ReadOnly="True" SortExpression="STUDENT_ID" />
                    <asp:BoundField DataField="ATTENDANCE_ID" HeaderText="ATTENDANCE_ID" ReadOnly="True" SortExpression="ATTENDANCE_ID" />
                    <asp:BoundField DataField="ATTENDANCE_STATUS" HeaderText="ATTENDANCE_STATUS" SortExpression="ATTENDANCE_STATUS" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;STUDENT_ATTENDANCE&quot; WHERE &quot;STUDENT_ID&quot; = :original_STUDENT_ID AND &quot;ATTENDANCE_ID&quot; = :original_ATTENDANCE_ID AND &quot;ATTENDANCE_STATUS&quot; = :original_ATTENDANCE_STATUS" InsertCommand="INSERT INTO &quot;STUDENT_ATTENDANCE&quot; (&quot;STUDENT_ID&quot;, &quot;ATTENDANCE_ID&quot;, &quot;ATTENDANCE_STATUS&quot;) VALUES (:STUDENT_ID, :ATTENDANCE_ID, :ATTENDANCE_STATUS)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;STUDENT_ATTENDANCE&quot;" UpdateCommand="UPDATE &quot;STUDENT_ATTENDANCE&quot; SET &quot;ATTENDANCE_STATUS&quot; = :ATTENDANCE_STATUS WHERE &quot;STUDENT_ID&quot; = :original_STUDENT_ID AND &quot;ATTENDANCE_ID&quot; = :original_ATTENDANCE_ID AND &quot;ATTENDANCE_STATUS&quot; = :original_ATTENDANCE_STATUS">
                <DeleteParameters>
                    <asp:Parameter Name="original_STUDENT_ID" Type="Decimal" />
                    <asp:Parameter Name="original_ATTENDANCE_ID" Type="Decimal" />
                    <asp:Parameter Name="original_ATTENDANCE_STATUS" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="STUDENT_ID" Type="Decimal" />
                    <asp:Parameter Name="ATTENDANCE_ID" Type="Decimal" />
                    <asp:Parameter Name="ATTENDANCE_STATUS" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ATTENDANCE_STATUS" Type="String" />
                    <asp:Parameter Name="original_STUDENT_ID" Type="Decimal" />
                    <asp:Parameter Name="original_ATTENDANCE_ID" Type="Decimal" />
                    <asp:Parameter Name="original_ATTENDANCE_STATUS" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="STUDENT_ID,ATTENDANCE_ID" DataSourceID="SqlDataSource1">
                <InsertItemTemplate>
                    STUDENT_ID:
                    <asp:TextBox ID="STUDENT_IDTextBox" runat="server" Text='<%# Bind("STUDENT_ID") %>' />
                    <br />
                    ATTENDANCE_ID:
                    <asp:TextBox ID="ATTENDANCE_IDTextBox" runat="server" Text='<%# Bind("ATTENDANCE_ID") %>' />
                    <br />
                    ATTENDANCE_STATUS:
                    <asp:TextBox ID="ATTENDANCE_STATUSTextBox" runat="server" Text='<%# Bind("ATTENDANCE_STATUS") %>' />
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
