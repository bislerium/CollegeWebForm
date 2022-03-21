<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ComplexFeeForm.aspx.cs" Inherits="CollegeWebForm.StudentFee" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>View <%: Title %>Fee by Student</h2>
    <p>Select the the student from the dropdown list. Each list item is the sum of student-id and full-name.</p>
     <div style="height: 420px">
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="STUDENT_NAME" AutoPostBack="true" DataValueField="PERSON_ID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT PERSON.PERSON_ID, CONCAT(CONCAT(PERSON.PERSON_ID, ' - '), PERSON.FULL_NAME) AS STUDENT_NAME FROM PERSON, STUDENT WHERE PERSON.PERSON_ID = STUDENT.STUDENT_ID"></asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="STUDENT_ID,EMAIL" DataSourceID="SqlDataSource3">
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
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT STUDENT.STUDENT_ID, PERSON.FULL_NAME, PERSON.GENDER, PERSON.DOB, PERSON.PHONE, PERSON.EMAIL, STUDENT.SPECIALIZATION, STUDENT.&quot;group&quot;, STUDENT.DATE_JOINED FROM PERSON, STUDENT WHERE PERSON.PERSON_ID = STUDENT.STUDENT_ID AND (STUDENT.STUDENT_ID = :STUDENT_ID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="STUDENT_ID" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="STUDENT_ID" DataSourceID="SqlDataSource2" AllowSorting="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="FEE_ID" HeaderText="FEE_ID" SortExpression="FEE_ID" />
                <asp:BoundField DataField="FEE_TYPE" HeaderText="FEE_TYPE" SortExpression="FEE_TYPE" />
                <asp:BoundField DataField="FEE_AMOUNT" HeaderText="FEE_AMOUNT" SortExpression="FEE_AMOUNT" />
                <asp:BoundField DataField="PAYMENT_DATE" HeaderText="PAYMENT_DATE" SortExpression="PAYMENT_DATE" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT STUDENT.STUDENT_ID, STUDENT_FEE.FEE_ID, FEE.FEE_TYPE, FEE.FEE_AMOUNT, STUDENT_FEE.PAYMENT_DATE FROM STUDENT, STUDENT_FEE, FEE WHERE STUDENT.STUDENT_ID = STUDENT_FEE.STUDENT_ID AND STUDENT_FEE.FEE_ID = FEE.FEE_ID AND (STUDENT.STUDENT_ID = :STUDENT_ID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="STUDENT_ID" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
         <br />
    </div>
</asp:Content>

