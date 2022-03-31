<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ComplexAssignmentResult.aspx.cs" Inherits="CollegeWebForm.forms.ComplexAssignmentResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>View <%: Title %>Module Assignment &amp; Result per Student</h2>
    <p>
        Select the the student from the dropdown list. Each list item is the sum of student-id and full-name.
    </p>
    <br />
    <table class="nav-justified" style="height: 501px">
        <tr>
            <td class="modal-lg" style="width: 420px; height: 49px"></td>
            <td style="height: 49px"></td>
        </tr>
        <tr>
            <td class="modal-lg" style="width: 420px">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="STUDENT_NAME" DataValueField="PERSON_ID" Height="45px" Width="260px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:collegedb %>" ProviderName="<%$ ConnectionStrings:collegedb.ProviderName %>" SelectCommand="SELECT PERSON.PERSON_ID, CONCAT(CONCAT(PERSON.PERSON_ID, ' - '), PERSON.FULL_NAME) AS STUDENT_NAME FROM PERSON, STUDENT WHERE PERSON.PERSON_ID = STUDENT.STUDENT_ID"></asp:SqlDataSource>
            </td>
            <td rowspan="3">
                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="STUDENT_ID" DataSourceID="SqlDataSource3" GridLines="Horizontal" Width="750px">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <Columns>
                        <asp:BoundField DataField="MODULE_CODE" HeaderText="MODULE_CODE" SortExpression="MODULE_CODE" />
                        <asp:BoundField DataField="MODULE_NAME" HeaderText="MODULE_NAME" SortExpression="MODULE_NAME" />
                        <asp:BoundField DataField="ASSIGNMENT_TYPE" HeaderText="ASSIGNMENT_TYPE" SortExpression="ASSIGNMENT_TYPE" />
                        <asp:BoundField DataField="GRADE" HeaderText="GRADE" SortExpression="GRADE" />
                        <asp:BoundField DataField="STATUS" HeaderText="STATUS" SortExpression="STATUS" />
                        <asp:BoundField DataField="POST_DATE" HeaderText="POST_DATE" SortExpression="POST_DATE" />
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
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:collegedb %>" ProviderName="<%$ ConnectionStrings:collegedb.ProviderName %>" SelectCommand="SELECT STUDENT.STUDENT_ID, &quot;MODULE&quot;.MODULE_CODE, &quot;MODULE&quot;.MODULE_NAME, ASSIGNMENT.ASSIGNMENT_TYPE, ASSIGNMENT_RESULT.GRADE, GRADE_STATUS.STATUS, ASSIGNMENT_RESULT.POST_DATE FROM STUDENT, ASSIGNMENT_RESULT, ASSIGNMENT, GRADE_STATUS, &quot;MODULE&quot; WHERE STUDENT.STUDENT_ID = ASSIGNMENT_RESULT.STUDENT_ID AND ASSIGNMENT.ASSIGNMENT_ID = ASSIGNMENT_RESULT.ASSIGNMENT_ID AND GRADE_STATUS.GRADE = ASSIGNMENT_RESULT.GRADE AND &quot;MODULE&quot;.MODULE_ID = ASSIGNMENT_RESULT.MODULE_ID AND STUDENT.STUDENT_ID = :STUDENT_ID">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="STUDENT_ID" PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="modal-lg" style="width: 420px; height: 10px"></td>
        </tr>
        <tr>
            <td class="modal-lg" style="width: 420px">
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="STUDENT_ID,EMAIL" DataSourceID="SqlDataSource2" Width="396px">
                    <ItemTemplate>
                        <table class="nav-justified">
                            <tr>
                                <td>Student ID:</td>
                                <td>
                                    <asp:Label ID="STUDENT_IDLabel" runat="server" Text='<%# Eval("STUDENT_ID") %>' /></td>
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
                                <td>Specialization:</td>
                                <td>
                                    <asp:Label ID="SPECIALIZATIONLabel" runat="server" Text='<%# Bind("SPECIALIZATION") %>' /></td>
                            </tr>
                            <tr>
                                <td>Class Group:</td>
                                <td>
                                    <asp:Label ID="CLASS_GROUPLabel" runat="server" Text='<%# Bind("CLASS_GROUP") %>' />
                            </tr>
                            <tr>
                                <td>Date Joined:</td>
                                <td>
                                    <asp:Label ID="DATE_JOINEDLabel" runat="server" Text='<%# Bind("DATE_JOINED") %>' /></td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:FormView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:collegedb %>" ProviderName="<%$ ConnectionStrings:collegedb.ProviderName %>" SelectCommand="SELECT STUDENT.STUDENT_ID, PERSON.FULL_NAME, PERSON.GENDER, PERSON.DOB, PERSON.PHONE, PERSON.EMAIL, STUDENT.SPECIALIZATION, STUDENT.CLASS_GROUP, STUDENT.DATE_JOINED FROM PERSON, STUDENT WHERE PERSON.PERSON_ID = STUDENT.STUDENT_ID AND STUDENT.STUDENT_ID = :STUDENT_ID">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="STUDENT_ID" PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="modal-lg" style="width: 420px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
