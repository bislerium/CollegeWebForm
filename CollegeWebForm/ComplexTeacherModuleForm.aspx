<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ComplexTeacherModuleForm.aspx.cs" Inherits="CollegeWebForm.TeacherModule" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="TEACHER_NAME" AutoPostBack="True" DataValueField="PERSON_ID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT TEACHER.TEACHER_ID, PERSON.FULL_NAME, PERSON.GENDER, PERSON.DOB, PERSON.PHONE, PERSON.EMAIL, TEACHER.SALARY, TEACHER.DATE_JOINED FROM PERSON, TEACHER WHERE PERSON.PERSON_ID = TEACHER.TEACHER_ID AND (TEACHER.TEACHER_ID = :TEACHER_ID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="TEACHER_ID" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="TEACHER_ID,EMAIL" DataSourceID="SqlDataSource3">
                <EditItemTemplate>
                    TEACHER_ID:
                    <asp:Label ID="TEACHER_IDLabel1" runat="server" Text='<%# Eval("TEACHER_ID") %>' />
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
                    SALARY:
                    <asp:Label ID="SALARYLabel" runat="server" Text='<%# Bind("SALARY") %>' />
                    <br />
                    DATE_JOINED:
                    <asp:Label ID="DATE_JOINEDLabel" runat="server" Text='<%# Bind("DATE_JOINED") %>' />
                    <br />

                </ItemTemplate>
            </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT PERSON.PERSON_ID, CONCAT(CONCAT(PERSON.PERSON_ID, ' - '), PERSON.FULL_NAME) AS TEACHER_NAME FROM PERSON, TEACHER WHERE PERSON.PERSON_ID = TEACHER.TEACHER_ID"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TEACHER_ID,MODULE_ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="MODULE_ID" HeaderText="MODULE_ID" SortExpression="MODULE_ID" ReadOnly="True" />
                    <asp:BoundField DataField="MODULE_CODE" HeaderText="MODULE_CODE" SortExpression="MODULE_CODE" />
                    <asp:BoundField DataField="MODULE_NAME" HeaderText="MODULE_NAME" SortExpression="MODULE_NAME" />
                    <asp:BoundField DataField="WEEK_DURATION" HeaderText="WEEK_DURATION" SortExpression="WEEK_DURATION" />
                    <asp:BoundField DataField="CREDIT_HOURS" HeaderText="CREDIT_HOURS" SortExpression="CREDIT_HOURS" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT TEACHER.TEACHER_ID, &quot;MODULE&quot;.MODULE_ID, &quot;MODULE&quot;.MODULE_CODE, &quot;MODULE&quot;.MODULE_NAME, &quot;MODULE&quot;.WEEK_DURATION, &quot;MODULE&quot;.CREDIT_HOURS FROM &quot;MODULE&quot;, MODULE_ALLOCATION, TEACHER WHERE &quot;MODULE&quot;.MODULE_ID = MODULE_ALLOCATION.MODULE_ID AND TEACHER.TEACHER_ID = MODULE_ALLOCATION.TEACHER_ID AND (TEACHER.TEACHER_ID = :TEACHER_ID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="TEACHER_ID" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>

        </div>
    </form>
</body>
</html>
