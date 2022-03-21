<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ComplexFeeForm.aspx.cs" Inherits="CollegeWebForm.StudentFee" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>View <%: Title %>Fee by Student</h2>
    <p>Select the the student from the dropdown list. Each list item is the sum of student-id and full-name.</p>
     <div aria-busy="False" style="height: 445px">
         <table class="nav-justified" style="height: 440px">
             <tr>
                 <td style="width: 420px; height: 50px;"></td>
                 <td style="width: 698px; height: 50px;"></td>
                 <td style="height: 50px"></td>
             </tr>
             <tr>
                 <td style="width: 420px; height: 55px;">
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="STUDENT_NAME" AutoPostBack="true" DataValueField="PERSON_ID" Height="45px" Width="260px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT PERSON.PERSON_ID, CONCAT(CONCAT(PERSON.PERSON_ID, ' - '), PERSON.FULL_NAME) AS STUDENT_NAME FROM PERSON, STUDENT WHERE PERSON.PERSON_ID = STUDENT.STUDENT_ID"></asp:SqlDataSource>
                 </td>
                 <td style="width: 698px; " rowspan="3">
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT STUDENT.STUDENT_ID, STUDENT_FEE.FEE_ID, FEE.FEE_TYPE, FEE.FEE_AMOUNT, STUDENT_FEE.PAYMENT_DATE FROM STUDENT, STUDENT_FEE, FEE WHERE STUDENT.STUDENT_ID = STUDENT_FEE.STUDENT_ID AND STUDENT_FEE.FEE_ID = FEE.FEE_ID AND (STUDENT.STUDENT_ID = :STUDENT_ID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="STUDENT_ID" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="STUDENT_ID" DataSourceID="SqlDataSource2" AllowSorting="True" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Width="740px">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="FEE_ID" HeaderText="FEE_ID" SortExpression="FEE_ID" />
                <asp:BoundField DataField="FEE_TYPE" HeaderText="FEE_TYPE" SortExpression="FEE_TYPE" />
                <asp:BoundField DataField="FEE_AMOUNT" HeaderText="FEE_AMOUNT" SortExpression="FEE_AMOUNT" />
                <asp:BoundField DataField="PAYMENT_DATE" HeaderText="PAYMENT_DATE" SortExpression="PAYMENT_DATE" />
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
                 </td>
                 <td style="height: 55px"></td>
             </tr>
             <tr>
                 <td style="width: 420px; height: 40px;"></td>
                 <td style="height: 40px"></td>
             </tr>
             <tr>
                 <td style="width: 420px; height: 236px;">
                     <asp:FormView ID="FormView1" runat="server" DataKeyNames="STUDENT_ID,EMAIL" DataSourceID="SqlDataSource3" Width="395px">            
            <ItemTemplate>
                <Table>
                     <table class="nav-justified">
                         <tr> 
                        <td>Student ID:</td>                            
                        <td><asp:Label ID="STUDENT_IDLabel" runat="server" Text='<%# Eval("STUDENT_ID") %>' /></td>
                    </tr>
                    <tr> 
                        <td>Full Name:</td>
                        <td><asp:Label ID="FULL_NAMELabel" runat="server" Text='<%# Bind("FULL_NAME") %>' /></td>
                    </tr>
                    <tr> 
                        <td>Gender:</td>
                        <td><asp:Label ID="GENDERLabel" runat="server" Text='<%# Bind("GENDER") %>' /></td>
                    </tr>
                    <tr> 
                        <td>Date of Birth:</td>
                        <td><asp:Label ID="DOBLabel" runat="server" Text='<%# Bind("DOB") %>' /></td>
                    </tr>
                    <tr> 
                        <td>Phone:</td>
                        <td><asp:Label ID="PHONELabel" runat="server" Text='<%# Bind("PHONE") %>' /></td>
                    </tr>
                    <tr> 
                        <td>Email:</td>
                        <td><asp:Label ID="EMAILLabel" runat="server" Text='<%# Eval("EMAIL") %>' /></td>
                    </tr>
                    <tr> 
                        <td>Specialization:</td>
                        <td><asp:Label ID="SPECIALIZATIONLabel" runat="server" Text='<%# Bind("SPECIALIZATION") %>' /></td>
                    </tr>
                    <tr> 
                        <td>Group:</td>
                        <td><asp:Label ID="groupLabel" runat="server" Text='<%# Bind("group") %>' /></td>
                    </tr>
                    <tr> 
                        <td>Date Joined:</td>                        
                        <td><asp:Label ID="DATE_JOINEDLabel" runat="server" Text='<%# Bind("DATE_JOINED") %>' /></td>
                    </tr>
                     </table>
                 </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT STUDENT.STUDENT_ID, PERSON.FULL_NAME, PERSON.GENDER, PERSON.DOB, PERSON.PHONE, PERSON.EMAIL, STUDENT.SPECIALIZATION, STUDENT.&quot;group&quot;, STUDENT.DATE_JOINED FROM PERSON, STUDENT WHERE PERSON.PERSON_ID = STUDENT.STUDENT_ID AND (STUDENT.STUDENT_ID = :STUDENT_ID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="STUDENT_ID" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
                 </td>
                 <td style="height: 236px"></td>
             </tr>            
             <tr>
                 <td style="width: 420px">
                     &nbsp;</td>
                 <td style="width: 698px">
                     &nbsp;</td>
                 <td>&nbsp;</td>
             </tr>            
         </table>
    </div>
</asp:Content>

