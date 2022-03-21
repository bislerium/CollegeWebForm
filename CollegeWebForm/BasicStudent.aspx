<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BasicStudent.aspx.cs" Inherits="CollegeWebForm.Student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="STUDENT_ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" ReadOnly="True" SortExpression="STUDENT_ID" />
                    <asp:BoundField DataField="SPECIALIZATION" HeaderText="SPECIALIZATION" SortExpression="SPECIALIZATION" />
                    <asp:BoundField DataField="group" HeaderText="group" SortExpression="group" />
                    <asp:BoundField DataField="DATE_JOINED" HeaderText="DATE_JOINED" SortExpression="DATE_JOINED" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;STUDENT&quot; WHERE &quot;STUDENT_ID&quot; = :STUDENT_ID" InsertCommand="INSERT INTO &quot;STUDENT&quot; (&quot;STUDENT_ID&quot;, &quot;SPECIALIZATION&quot;, &quot;group&quot;, &quot;DATE_JOINED&quot;) VALUES (:STUDENT_ID, :SPECIALIZATION, :group, :DATE_JOINED)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;STUDENT&quot;" UpdateCommand="UPDATE &quot;STUDENT&quot; SET &quot;SPECIALIZATION&quot; = :SPECIALIZATION, &quot;group&quot; = :group, &quot;DATE_JOINED&quot; = :DATE_JOINED WHERE &quot;STUDENT_ID&quot; = :STUDENT_ID">
                <DeleteParameters>
                    <asp:Parameter Name="STUDENT_ID" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="STUDENT_ID" Type="Decimal" />
                    <asp:Parameter Name="SPECIALIZATION" Type="String" />
                    <asp:Parameter Name="group" Type="String" />
                    <asp:Parameter Name="DATE_JOINED" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="SPECIALIZATION" Type="String" />
                    <asp:Parameter Name="group" Type="String" />
                    <asp:Parameter Name="DATE_JOINED" Type="DateTime" />
                    <asp:Parameter Name="STUDENT_ID" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="STUDENT_ID" DataSourceID="SqlDataSource1">
                <InsertItemTemplate>
                    STUDENT_ID:
                    <asp:TextBox ID="STUDENT_IDTextBox" runat="server" Text='<%# Bind("STUDENT_ID") %>' />
                    <br />
                    SPECIALIZATION:
                    <asp:TextBox ID="SPECIALIZATIONTextBox" runat="server" Text='<%# Bind("SPECIALIZATION") %>' />
                    <br />
                    group:
                    <asp:TextBox ID="groupTextBox" runat="server" Text='<%# Bind("group") %>' />
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
        </div>
    </form>
</body>
</html>
