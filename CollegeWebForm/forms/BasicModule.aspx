<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BasicModule.aspx.cs" Inherits="CollegeWebForm.forms.BasicModule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>CRUD Module</h2>
    <p>
        Create, read, update and delete module using the labelled fields and buttons.
    </p>
    <table class="nav-justified" style="height: 500px">
        <tr>
            <td style="width: 420px; height: 23px"></td>
            <td style="height: 23px"></td>
        </tr>
        <tr>
            <td style="width: 420px">
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="MODULE_ID" DataSourceID="SqlDataSource1">
                    <InsertItemTemplate>
                        <table class="nav-justified" style="width: 400px; border-collapse: separate; border-spacing: 0 0.6em;">
                            <tr>
                                <td>Module Code:</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="MODULE_CODETextBox" runat="server" Text='<%# Bind("MODULE_CODE") %>' /></td>
                            </tr>
                            <tr>
                                <td>Module Name:</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="MODULE_NAMETextBox" runat="server" Text='<%# Bind("MODULE_NAME") %>' /></td>
                            </tr>
                            <tr>
                                <td>Week Duration:</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="WEEK_DURATIONTextBox" runat="server" Text='<%# Bind("WEEK_DURATION") %>' /></td>
                            </tr>
                            <tr>
                                <td>Credit Hours</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="CREDIT_HOURSTextBox" runat="server" Text='<%# Bind("CREDIT_HOURS") %>' /></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:LinkButton class="btn btn-primary" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Add" />
                                    <asp:LinkButton class="btn btn-secondary" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                </td>
                            </tr>
                        </table>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton class="btn btn-primary" ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Add a new module" />
                    </ItemTemplate>
                </asp:FormView>
            </td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="MODULE_ID" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="750px">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <Columns>
                        <asp:BoundField DataField="MODULE_ID" HeaderText="MODULE_ID" ReadOnly="True" SortExpression="MODULE_ID" />
                        <asp:BoundField DataField="MODULE_CODE" HeaderText="MODULE_CODE" SortExpression="MODULE_CODE" />
                        <asp:BoundField DataField="MODULE_NAME" HeaderText="MODULE_NAME" SortExpression="MODULE_NAME" />
                        <asp:BoundField DataField="WEEK_DURATION" HeaderText="WEEK_DURATION" SortExpression="WEEK_DURATION" />
                        <asp:BoundField DataField="CREDIT_HOURS" HeaderText="CREDIT_HOURS" SortExpression="CREDIT_HOURS" />
                        <asp:TemplateField HeaderText="Actions" ShowHeader="False">
                            <EditItemTemplate>
                                <asp:Button class="btn btn-success" ID="Button1" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:Button class="btn btn-secondary" ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Button class="btn btn-success" ID="Button1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                &nbsp;<asp:Button class="btn btn-danger" ID="Button2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <PagerSettings Mode="NumericFirstLast" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <SortedAscendingCellStyle BackColor="#F4F4FD" />
                    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                    <SortedDescendingCellStyle BackColor="#D8D8F0" />
                    <SortedDescendingHeaderStyle BackColor="#3E3277" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:collegedb %>" DeleteCommand="DELETE FROM &quot;MODULE&quot; WHERE &quot;MODULE_ID&quot; = :original_MODULE_ID AND &quot;MODULE_CODE&quot; = :original_MODULE_CODE AND &quot;MODULE_NAME&quot; = :original_MODULE_NAME AND &quot;WEEK_DURATION&quot; = :original_WEEK_DURATION AND &quot;CREDIT_HOURS&quot; = :original_CREDIT_HOURS" InsertCommand="INSERT INTO &quot;MODULE&quot; (&quot;MODULE_ID&quot;, &quot;MODULE_CODE&quot;, &quot;MODULE_NAME&quot;, &quot;WEEK_DURATION&quot;, &quot;CREDIT_HOURS&quot;) VALUES (:MODULE_ID, :MODULE_CODE, :MODULE_NAME, :WEEK_DURATION, :CREDIT_HOURS)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:collegedb.ProviderName %>" SelectCommand="SELECT * FROM &quot;MODULE&quot;" UpdateCommand="UPDATE &quot;MODULE&quot; SET &quot;MODULE_CODE&quot; = :MODULE_CODE, &quot;MODULE_NAME&quot; = :MODULE_NAME, &quot;WEEK_DURATION&quot; = :WEEK_DURATION, &quot;CREDIT_HOURS&quot; = :CREDIT_HOURS WHERE &quot;MODULE_ID&quot; = :original_MODULE_ID AND &quot;MODULE_CODE&quot; = :original_MODULE_CODE AND &quot;MODULE_NAME&quot; = :original_MODULE_NAME AND &quot;WEEK_DURATION&quot; = :original_WEEK_DURATION AND &quot;CREDIT_HOURS&quot; = :original_CREDIT_HOURS">
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
            </td>
        </tr>
        <tr>
            <td style="width: 420px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
