<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BasicDepartment.aspx.cs" Inherits="CollegeWebForm.forms.BasicDepartment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>CRUD Department</h2>
    <p>
        Create, read, update and delete department using the labelled fields and buttons.
    </p>
    <table class="nav-justified" style="height: 500px">
        <tr>
            <td style="width: 420px"></td>
            <td></td>
        </tr>
        <tr>
            <td style="width: 420px">
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="DEPARTMENT_ID" DataSourceID="SqlDataSource1">
                    <InsertItemTemplate>
                        <table class="nav-justified" style="width: 400px; border-collapse: separate; border-spacing: 0 0.6em;">
                            <tr>
                                <td>Department Name:</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="DEPARTMENT_NAMELabel" runat="server" Text='<%# Bind("DEPARTMENT_NAME") %>' /></td>
                            </tr>
                            <tr>
                                <td>Department Location:</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="DEPARTMENT_LOCATIONLabel" runat="server" Text='<%# Bind("DEPARTMENT_LOCATION") %>' /></td>
                            </tr>
                            <tr>
                                <td>Number of Employees:</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="NUM_EMPLOYEESLabel" runat="server" Text='<%# Bind("NUM_EMPLOYEES") %>' /></td>
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
                        <asp:LinkButton class="btn btn-primary" ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Add a new department" />
                    </ItemTemplate>
                </asp:FormView>
            </td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="DEPARTMENT_ID" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="750px">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <Columns>
                        <asp:BoundField DataField="DEPARTMENT_ID" HeaderText="DEPARTMENT_ID" ReadOnly="True" SortExpression="DEPARTMENT_ID" />
                        <asp:BoundField DataField="DEPARTMENT_NAME" HeaderText="DEPARTMENT_NAME" SortExpression="DEPARTMENT_NAME" />
                        <asp:BoundField DataField="DEPARTMENT_LOCATION" HeaderText="DEPARTMENT_LOCATION" SortExpression="DEPARTMENT_LOCATION" />
                        <asp:BoundField DataField="NUM_EMPLOYEES" HeaderText="NUM_EMPLOYEES" SortExpression="NUM_EMPLOYEES" />
                        <asp:TemplateField ShowHeader="False" HeaderText="Actions">
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
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <SortedAscendingCellStyle BackColor="#F4F4FD" />
                    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                    <SortedDescendingCellStyle BackColor="#D8D8F0" />
                    <SortedDescendingHeaderStyle BackColor="#3E3277" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:collegedb %>" DeleteCommand="DELETE FROM &quot;DEPARTMENT&quot; WHERE &quot;DEPARTMENT_ID&quot; = :original_DEPARTMENT_ID AND &quot;DEPARTMENT_NAME&quot; = :original_DEPARTMENT_NAME AND &quot;DEPARTMENT_LOCATION&quot; = :original_DEPARTMENT_LOCATION AND &quot;NUM_EMPLOYEES&quot; = :original_NUM_EMPLOYEES" InsertCommand="INSERT INTO &quot;DEPARTMENT&quot; (&quot;DEPARTMENT_ID&quot;, &quot;DEPARTMENT_NAME&quot;, &quot;DEPARTMENT_LOCATION&quot;, &quot;NUM_EMPLOYEES&quot;) VALUES (:DEPARTMENT_ID, :DEPARTMENT_NAME, :DEPARTMENT_LOCATION, :NUM_EMPLOYEES)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:collegedb.ProviderName %>" SelectCommand="SELECT * FROM &quot;DEPARTMENT&quot;" UpdateCommand="UPDATE &quot;DEPARTMENT&quot; SET &quot;DEPARTMENT_NAME&quot; = :DEPARTMENT_NAME, &quot;DEPARTMENT_LOCATION&quot; = :DEPARTMENT_LOCATION, &quot;NUM_EMPLOYEES&quot; = :NUM_EMPLOYEES WHERE &quot;DEPARTMENT_ID&quot; = :original_DEPARTMENT_ID AND &quot;DEPARTMENT_NAME&quot; = :original_DEPARTMENT_NAME AND &quot;DEPARTMENT_LOCATION&quot; = :original_DEPARTMENT_LOCATION AND &quot;NUM_EMPLOYEES&quot; = :original_NUM_EMPLOYEES">
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
            </td>
        </tr>
        <tr>
            <td style="width: 420px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
