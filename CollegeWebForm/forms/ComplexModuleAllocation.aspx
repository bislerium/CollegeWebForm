<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ComplexModuleAllocation.aspx.cs" Inherits="CollegeWebForm.forms.ComplexModuleAllocation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>View <%: Title %>Module Allocation per Teacher</h2>
    <p>
        Select the the teacher from the dropdown list. Each list item is the sum of teacher-id and full-name.
    </p>
    <table class="nav-justified" style="height: 500px">
        <tr>
            <td class="modal-sm" style="width: 420px; height: 50px"></td>
            <td style="height: 50px"></td>
        </tr>
        <tr>
            <td style="width: 420px">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="TEACHER_NAME" DataValueField="PERSON_ID" Height="45px" Width="260px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:collegedb %>" ProviderName="<%$ ConnectionStrings:collegedb.ProviderName %>" SelectCommand="SELECT TEACHER.TEACHER_ID, PERSON.FULL_NAME, PERSON.GENDER, PERSON.DOB, PERSON.PHONE, PERSON.EMAIL, TEACHER.SALARY, TEACHER.DATE_JOINED FROM PERSON, TEACHER WHERE PERSON.PERSON_ID = TEACHER.TEACHER_ID AND (TEACHER.TEACHER_ID = :TEACHER_ID)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="TEACHER_ID" PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td rowspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="TEACHER_ID,MODULE_ID" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="760px">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <Columns>
                        <asp:BoundField DataField="MODULE_ID" HeaderText="MODULE_ID" ReadOnly="True" SortExpression="MODULE_ID" />
                        <asp:BoundField DataField="MODULE_CODE" HeaderText="MODULE_CODE" SortExpression="MODULE_CODE" />
                        <asp:BoundField DataField="MODULE_NAME" HeaderText="MODULE_NAME" SortExpression="MODULE_NAME" />
                        <asp:BoundField DataField="WEEK_DURATION" HeaderText="WEEK_DURATION" SortExpression="WEEK_DURATION" />
                        <asp:BoundField DataField="CREDIT_HOURS" HeaderText="CREDIT_HOURS" SortExpression="CREDIT_HOURS" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:collegedb %>" ProviderName="<%$ ConnectionStrings:collegedb.ProviderName %>" SelectCommand="SELECT TEACHER.TEACHER_ID, &quot;MODULE&quot;.MODULE_ID, &quot;MODULE&quot;.MODULE_CODE, &quot;MODULE&quot;.MODULE_NAME, &quot;MODULE&quot;.WEEK_DURATION, &quot;MODULE&quot;.CREDIT_HOURS FROM &quot;MODULE&quot;, MODULE_ALLOCATION, TEACHER WHERE &quot;MODULE&quot;.MODULE_ID = MODULE_ALLOCATION.MODULE_ID AND TEACHER.TEACHER_ID = MODULE_ALLOCATION.TEACHER_ID AND (TEACHER.TEACHER_ID = :TEACHER_ID)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="TEACHER_ID" PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 420px; height: 10px"></td>
        </tr>
        <tr>
            <td style="width: 420px">
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="TEACHER_ID,EMAIL" DataSourceID="SqlDataSource3" Width="395px">
                    <ItemTemplate>
                        <table class="nav-justified">
                            <tr>
                                <td>Teacher ID:</td>
                                <td>
                                    <asp:Label ID="TEACHER_IDLabel" runat="server" Text='<%# Eval("TEACHER_ID") %>' /></td>
                            </tr>
                            <tr>
                                <td>Full Name:</td>
                                <td>
                                    <asp:Label ID="FULL_NAMELabel" runat="server" Text='<%# Bind("FULL_NAME") %>' /></td>
                            </tr>
                            <tr>
                                <td>Gender:</td>
                                <td>
                                    <asp:Label ID="GENDERLabel" runat="server" Text='<%# Bind("GENDER") %>' /></td>
                            </tr>
                            <tr>
                                <td>Date of Birth:</td>
                                <td>
                                    <asp:Label ID="DOBLabel" runat="server" Text='<%# Bind("DOB") %>' /></td>
                            </tr>
                            <tr>
                                <td>Phone:</td>
                                <td>
                                    <asp:Label ID="PHONELabel" runat="server" Text='<%# Bind("PHONE") %>' /></td>
                            </tr>
                            <tr>
                                <td>Email:</td>
                                <td>
                                    <asp:Label ID="EMAILLabel" runat="server" Text='<%# Eval("EMAIL") %>' /></td>
                            </tr>
                            <tr>
                                <td>Salary:</td>
                                <td>
                                    <asp:Label ID="SALARYLabel" runat="server" Text='<%# Bind("SALARY") %>' /></td>
                            </tr>
                            <tr>
                                <td>Date Joined:</td>
                                <td>
                                    <asp:Label ID="DATE_JOINEDLabel" runat="server" Text='<%# Bind("DATE_JOINED") %>' /></td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:FormView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:collegedb %>" ProviderName="<%$ ConnectionStrings:collegedb.ProviderName %>" SelectCommand="SELECT PERSON.PERSON_ID, CONCAT(CONCAT(PERSON.PERSON_ID, ' - '), PERSON.FULL_NAME) AS TEACHER_NAME FROM PERSON, TEACHER WHERE PERSON.PERSON_ID = TEACHER.TEACHER_ID"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 420px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
