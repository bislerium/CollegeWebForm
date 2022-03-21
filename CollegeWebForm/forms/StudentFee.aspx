<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentFee.aspx.cs" Inherits="CollegeWebForm.forms.StudentFee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="STUDENT_ID,FEE_ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" ReadOnly="True" SortExpression="STUDENT_ID" />
                    <asp:BoundField DataField="FEE_ID" HeaderText="FEE_ID" ReadOnly="True" SortExpression="FEE_ID" />
                    <asp:BoundField DataField="PAYMENT_DATE" HeaderText="PAYMENT_DATE" SortExpression="PAYMENT_DATE" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;STUDENT_FEE&quot; WHERE &quot;STUDENT_ID&quot; = :original_STUDENT_ID AND &quot;FEE_ID&quot; = :original_FEE_ID AND &quot;PAYMENT_DATE&quot; = :original_PAYMENT_DATE" InsertCommand="INSERT INTO &quot;STUDENT_FEE&quot; (&quot;STUDENT_ID&quot;, &quot;FEE_ID&quot;, &quot;PAYMENT_DATE&quot;) VALUES (:STUDENT_ID, :FEE_ID, :PAYMENT_DATE)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;STUDENT_FEE&quot;" UpdateCommand="UPDATE &quot;STUDENT_FEE&quot; SET &quot;PAYMENT_DATE&quot; = :PAYMENT_DATE WHERE &quot;STUDENT_ID&quot; = :original_STUDENT_ID AND &quot;FEE_ID&quot; = :original_FEE_ID AND &quot;PAYMENT_DATE&quot; = :original_PAYMENT_DATE">
                <DeleteParameters>
                    <asp:Parameter Name="original_STUDENT_ID" Type="Decimal" />
                    <asp:Parameter Name="original_FEE_ID" Type="Decimal" />
                    <asp:Parameter Name="original_PAYMENT_DATE" Type="DateTime" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="STUDENT_ID" Type="Decimal" />
                    <asp:Parameter Name="FEE_ID" Type="Decimal" />
                    <asp:Parameter Name="PAYMENT_DATE" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="PAYMENT_DATE" Type="DateTime" />
                    <asp:Parameter Name="original_STUDENT_ID" Type="Decimal" />
                    <asp:Parameter Name="original_FEE_ID" Type="Decimal" />
                    <asp:Parameter Name="original_PAYMENT_DATE" Type="DateTime" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="STUDENT_ID,FEE_ID" DataSourceID="SqlDataSource1">
                <InsertItemTemplate>
                    STUDENT_ID:
                    <asp:TextBox ID="STUDENT_IDTextBox" runat="server" Text='<%# Bind("STUDENT_ID") %>' />
                    <br />
                    FEE_ID:
                    <asp:TextBox ID="FEE_IDTextBox" runat="server" Text='<%# Bind("FEE_ID") %>' />
                    <br />
                    PAYMENT_DATE:
                    <asp:TextBox ID="PAYMENT_DATETextBox" runat="server" Text='<%# Bind("PAYMENT_DATE") %>' />
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
