<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentModule.aspx.cs" Inherits="CollegeWebForm.forms.StudentModule" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>Module Allocation</h2>
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TEACHER_ID,MODULE_ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="TEACHER_ID" HeaderText="TEACHER_ID" ReadOnly="True" SortExpression="TEACHER_ID" />
                    <asp:BoundField DataField="MODULE_ID" HeaderText="MODULE_ID" ReadOnly="True" SortExpression="MODULE_ID" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;MODULE_ALLOCATION&quot; WHERE &quot;TEACHER_ID&quot; = :original_TEACHER_ID AND &quot;MODULE_ID&quot; = :original_MODULE_ID" InsertCommand="INSERT INTO &quot;MODULE_ALLOCATION&quot; (&quot;TEACHER_ID&quot;, &quot;MODULE_ID&quot;) VALUES (:TEACHER_ID, :MODULE_ID)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;MODULE_ALLOCATION&quot;">
                <DeleteParameters>
                    <asp:Parameter Name="original_TEACHER_ID" Type="Decimal" />
                    <asp:Parameter Name="original_MODULE_ID" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="TEACHER_ID" Type="Decimal" />
                    <asp:Parameter Name="MODULE_ID" Type="Decimal" />
                </InsertParameters>
            </asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="TEACHER_ID,MODULE_ID" DataSourceID="SqlDataSource1">
                <InsertItemTemplate>
                    TEACHER_ID:
                    <asp:TextBox ID="TEACHER_IDTextBox" runat="server" Text='<%# Bind("TEACHER_ID") %>' />
                    <br />
                    MODULE_ID:
                    <asp:TextBox ID="MODULE_IDTextBox" runat="server" Text='<%# Bind("MODULE_ID") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate><asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
        </div>
</asp:Content>

