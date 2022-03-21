<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ComplexFeeForm.aspx.cs" Inherits="CollegeWebForm.StudentFee" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>View <%: Title %>Teacher CRUD</h2>
    <p style="width: 1200px">Select the the teacher from the dropdown list. Each list item is the sum of teacher-id and full-name.</p>
    <table class="nav-justified" style="height: 520px">
        <tr>
            <td style="width: 430px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 430px">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="TEACHER_ID" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                TEACHER_ID:
                <asp:Label ID="TEACHER_IDLabel1" runat="server" Text='<%# Eval("TEACHER_ID") %>' />
                <br />
                SALARY:
                <asp:TextBox ID="SALARYTextBox" runat="server" Text='<%# Bind("SALARY") %>' />
                <br />
                DATE_JOINED:
                <asp:TextBox ID="DATE_JOINEDTextBox" runat="server" Text='<%# Bind("DATE_JOINED") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
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
                TEACHER_ID:
                <asp:Label ID="TEACHER_IDLabel" runat="server" Text='<%# Eval("TEACHER_ID") %>' />
                <br />
                SALARY:
                <asp:Label ID="SALARYLabel" runat="server" Text='<%# Bind("SALARY") %>' />
                <br />
                DATE_JOINED:
                <asp:Label ID="DATE_JOINEDLabel" runat="server" Text='<%# Bind("DATE_JOINED") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
            </td>
            <td>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="TEACHER_ID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Width="730px">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="TEACHER_ID" HeaderText="TEACHER_ID" ReadOnly="True" SortExpression="TEACHER_ID" />
                <asp:BoundField DataField="SALARY" HeaderText="SALARY" SortExpression="SALARY" />
                <asp:BoundField DataField="DATE_JOINED" HeaderText="DATE_JOINED" SortExpression="DATE_JOINED" />
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
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
            </td>
        </tr>
        <tr>
            <td style="width: 430px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
