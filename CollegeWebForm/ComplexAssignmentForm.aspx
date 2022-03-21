<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ComplexAssignmentForm.aspx.cs" Inherits="CollegeWebForm.StudentAssignmentResult" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="STUDENT_NAME" DataValueField="PERSON_ID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT PERSON.PERSON_ID, CONCAT(CONCAT(PERSON.PERSON_ID, ' - '), PERSON.FULL_NAME) AS STUDENT_NAME FROM PERSON, STUDENT WHERE PERSON.PERSON_ID = STUDENT.STUDENT_ID"></asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="STUDENT_ID,EMAIL" DataSourceID="SqlDataSource2">
                <EditItemTemplate>
                    STUDENT_ID:
                    <asp:Label ID="STUDENT_IDLabel1" runat="server" Text='<%# Eval("STUDENT_ID") %>' />
                    <br />
                    FULL_NAME:
                    <asp:TextBox ID="FULL_NAMETextBox" runat="server" Text='<%# Bind("FULL_NAME") %>' />
                    <br />
                    GENDER:
                    <asp:TextBox ID="GENDERTextBox" runat="server" Text='<%# Bind("GENDER") %>' />
                    <br />
                    DOB:
                    <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' />
                    <br />
                    PHONE:
                    <asp:TextBox ID="PHONETextBox" runat="server" Text='<%# Bind("PHONE") %>' />
                    <br />
                    EMAIL:
                    <asp:Label ID="EMAILLabel1" runat="server" Text='<%# Eval("EMAIL") %>' />
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
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    STUDENT_ID:
                    <asp:TextBox ID="STUDENT_IDTextBox" runat="server" Text='<%# Bind("STUDENT_ID") %>' />
                    <br />
                    FULL_NAME:
                    <asp:TextBox ID="FULL_NAMETextBox" runat="server" Text='<%# Bind("FULL_NAME") %>' />
                    <br />
                    GENDER:
                    <asp:TextBox ID="GENDERTextBox" runat="server" Text='<%# Bind("GENDER") %>' />
                    <br />
                    DOB:
                    <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' />
                    <br />
                    PHONE:
                    <asp:TextBox ID="PHONETextBox" runat="server" Text='<%# Bind("PHONE") %>' />
                    <br />
                    EMAIL:
                    <asp:TextBox ID="EMAILTextBox" runat="server" Text='<%# Bind("EMAIL") %>' />
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
                    STUDENT_ID:
                    <asp:Label ID="STUDENT_IDLabel" runat="server" Text='<%# Eval("STUDENT_ID") %>' />
                    <br />
                    FULL_NAME:
                    <asp:Label ID="FULL_NAMELabel" runat="server" Text='<%# Bind("FULL_NAME") %>' />
                    <br />
                    GENDER:
                    <asp:Label ID="GENDERLabel" runat="server" Text='<%# Bind("GENDER") %>' />
                    <br />
                    DOB:
                    <asp:Label ID="DOBLabel" runat="server" Text='<%# Bind("DOB") %>' />
                    <br />
                    PHONE:
                    <asp:Label ID="PHONELabel" runat="server" Text='<%# Bind("PHONE") %>' />
                    <br />
                    EMAIL:
                    <asp:Label ID="EMAILLabel" runat="server" Text='<%# Eval("EMAIL") %>' />
                    <br />
                    SPECIALIZATION:
                    <asp:Label ID="SPECIALIZATIONLabel" runat="server" Text='<%# Bind("SPECIALIZATION") %>' />
                    <br />
                    group:
                    <asp:Label ID="groupLabel" runat="server" Text='<%# Bind("group") %>' />
                    <br />
                    DATE_JOINED:
                    <asp:Label ID="DATE_JOINEDLabel" runat="server" Text='<%# Bind("DATE_JOINED") %>' />
                    <br />

                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT STUDENT.STUDENT_ID, PERSON.FULL_NAME, PERSON.GENDER, PERSON.DOB, PERSON.PHONE, PERSON.EMAIL, STUDENT.SPECIALIZATION, STUDENT.&quot;group&quot;, STUDENT.DATE_JOINED FROM PERSON, STUDENT WHERE PERSON.PERSON_ID = STUDENT.STUDENT_ID AND STUDENT.STUDENT_ID = :STUDENT_ID">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="STUDENT_ID" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="STUDENT_ID" DataSourceID="SqlDataSource3">
                <Columns>
                    <asp:BoundField DataField="MODULE_CODE" HeaderText="MODULE_CODE" SortExpression="MODULE_CODE" />
                    <asp:BoundField DataField="MODULE_NAME" HeaderText="MODULE_NAME" SortExpression="MODULE_NAME" />
                    <asp:BoundField DataField="ASSIGNMENT_TYPE" HeaderText="ASSIGNMENT_TYPE" SortExpression="ASSIGNMENT_TYPE" />
                    <asp:BoundField DataField="GRADE" HeaderText="GRADE" SortExpression="GRADE" />
                    <asp:BoundField DataField="STATUS" HeaderText="STATUS" SortExpression="STATUS" />
                    <asp:BoundField DataField="POST_DATE" HeaderText="POST_DATE" SortExpression="POST_DATE" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT STUDENT.STUDENT_ID, &quot;MODULE&quot;.MODULE_CODE, &quot;MODULE&quot;.MODULE_NAME, ASSIGNMENT.ASSIGNMENT_TYPE, ASSIGNMENT_RESULT.GRADE, GRADE_STATUS.STATUS, ASSIGNMENT_RESULT.POST_DATE FROM STUDENT, ASSIGNMENT_RESULT, ASSIGNMENT, GRADE_STATUS, &quot;MODULE&quot; WHERE STUDENT.STUDENT_ID = ASSIGNMENT_RESULT.STUDENT_ID AND ASSIGNMENT.ASSIGNMENT_ID = ASSIGNMENT_RESULT.ASSIGNMENT_ID AND GRADE_STATUS.GRADE = ASSIGNMENT_RESULT.GRADE AND &quot;MODULE&quot;.MODULE_ID = ASSIGNMENT_RESULT.MODULE_ID AND STUDENT.STUDENT_ID = :STUDENT_ID">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="STUDENT_ID" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
