<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BasicStudent.aspx.cs" Inherits="CollegeWebForm.forms.BasicStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>CRUD Student</h2>
    <p>
        Create, read, update and delete student using the labelled fields and buttons.
    </p>
    <table class="nav-justified" style="height: 500px">
        <tr>
            <td style="height: 23px; width: 627px;">&nbsp;</td>
            <td style="height: 23px; width: 20px;">&nbsp;</td>
            <td style="height: 23px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 23px; width: 627px;">
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="PERSON_ID" DataSourceID="SqlDataSource1">
                    <InsertItemTemplate>
                        <table class="nav-justified" style="width: 400px; border-collapse: separate; border-spacing: 0 0.6em;">
                            <tr>
                                <td>Person ID:</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="PERSON_IDTextBox" runat="server" Text='<%# Bind("PERSON_ID") %>' TextMode="Number" /></td>
                            </tr>
                            <tr>
                                <td>Person Type:</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="PERSON_TYPETextBox" runat="server" Text='<%# Bind("PERSON_TYPE") %>' value="Student" ReadOnly="false"/></td>
                            </tr>
                            <tr>
                                <td>Full Name:</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="FULL_NAMETextBox" runat="server" Text='<%# Bind("FULL_NAME") %>' /></td>
                            </tr>
                            <tr>
                                <td>Gender:</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="GENDERTextBox" runat="server" Text='<%# Bind("GENDER") %>' /></td>
                            </tr>
                            <tr>
                                <td>Date of Birth:</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' TextMode="Date"/></td>
                            </tr>
                            <tr>
                                <td>Phone:</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="PHONETextBox" runat="server" Text='<%# Bind("PHONE") %>' TextMode="Phone"/></td>
                            </tr>
                            <tr>
                                <td>Email:</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="EMAILTextBox" runat="server" Text='<%# Bind("EMAIL") %>' TextMode="Email" /></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:LinkButton class="btn btn-primary" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                    &nbsp;<asp:LinkButton class="btn btn-secondary" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                </td>
                            </tr>
                        </table>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        &nbsp;<asp:LinkButton class="btn btn-primary" ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="First, create a person account" />
                    </ItemTemplate>
                </asp:FormView>
            </td>
            <td style="height: 23px; width: 20px;">&nbsp;</td>
            <td style="height: 23px">
                <asp:FormView ID="FormView2" runat="server" DataKeyNames="STUDENT_ID" DataSourceID="SqlDataSource2">
                    <EditItemTemplate>
                        STUDENT_ID:
                        <asp:Label ID="STUDENT_IDLabel1" runat="server" Text='<%# Eval("STUDENT_ID") %>' />
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
                        SPECIALIZATION:
                        <asp:Label ID="SPECIALIZATIONLabel" runat="server" Text='<%# Bind("SPECIALIZATION") %>' />
                        <br />
                        group:
                        <asp:Label ID="groupLabel" runat="server" Text='<%# Bind("group") %>' />
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
        </tr>
        <tr>
            <td style="height: 23px; width: 627px;">&nbsp;</td>
            <td style="height: 23px; width: 20px;">&nbsp;</td>
            <td style="height: 23px">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="PERSON_ID" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="1200px">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <Columns>
                        <asp:BoundField DataField="PERSON_ID" HeaderText="PERSON_ID" ReadOnly="True" SortExpression="PERSON_ID" />
                        <asp:BoundField DataField="PERSON_TYPE" HeaderText="PERSON_TYPE" SortExpression="PERSON_TYPE" />
                        <asp:BoundField DataField="FULL_NAME" HeaderText="FULL_NAME" SortExpression="FULL_NAME" />
                        <asp:BoundField DataField="GENDER" HeaderText="GENDER" SortExpression="GENDER" />
                        <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                        <asp:BoundField DataField="PHONE" HeaderText="PHONE" SortExpression="PHONE" />
                        <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:collegedb %>" DeleteCommand="DELETE FROM &quot;PERSON&quot; WHERE &quot;PERSON_ID&quot; = :original_PERSON_ID AND &quot;PERSON_TYPE&quot; = :original_PERSON_TYPE AND &quot;FULL_NAME&quot; = :original_FULL_NAME AND &quot;GENDER&quot; = :original_GENDER AND &quot;DOB&quot; = :original_DOB AND &quot;PHONE&quot; = :original_PHONE AND &quot;EMAIL&quot; = :original_EMAIL" InsertCommand="INSERT INTO &quot;PERSON&quot; (&quot;PERSON_ID&quot;, &quot;PERSON_TYPE&quot;, &quot;FULL_NAME&quot;, &quot;GENDER&quot;, &quot;DOB&quot;, &quot;PHONE&quot;, &quot;EMAIL&quot;) VALUES (:PERSON_ID, :PERSON_TYPE, :FULL_NAME, :GENDER, :DOB, :PHONE, :EMAIL)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:collegedb.ProviderName %>" SelectCommand="SELECT * FROM &quot;PERSON&quot;" UpdateCommand="UPDATE &quot;PERSON&quot; SET &quot;PERSON_TYPE&quot; = :PERSON_TYPE, &quot;FULL_NAME&quot; = :FULL_NAME, &quot;GENDER&quot; = :GENDER, &quot;DOB&quot; = :DOB, &quot;PHONE&quot; = :PHONE, &quot;EMAIL&quot; = :EMAIL WHERE &quot;PERSON_ID&quot; = :original_PERSON_ID AND &quot;PERSON_TYPE&quot; = :original_PERSON_TYPE AND &quot;FULL_NAME&quot; = :original_FULL_NAME AND &quot;GENDER&quot; = :original_GENDER AND &quot;DOB&quot; = :original_DOB AND &quot;PHONE&quot; = :original_PHONE AND &quot;EMAIL&quot; = :original_EMAIL">
                    <DeleteParameters>
                        <asp:Parameter Name="original_PERSON_ID" Type="Decimal" />
                        <asp:Parameter Name="original_PERSON_TYPE" Type="String" />
                        <asp:Parameter Name="original_FULL_NAME" Type="String" />
                        <asp:Parameter Name="original_GENDER" Type="String" />
                        <asp:Parameter Name="original_DOB" Type="DateTime" />
                        <asp:Parameter Name="original_PHONE" Type="String" />
                        <asp:Parameter Name="original_EMAIL" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="PERSON_ID" Type="Decimal" />
                        <asp:Parameter Name="PERSON_TYPE" Type="String" />
                        <asp:Parameter Name="FULL_NAME" Type="String" />
                        <asp:Parameter Name="GENDER" Type="String" />
                        <asp:Parameter Name="DOB" Type="DateTime" />
                        <asp:Parameter Name="PHONE" Type="String" />
                        <asp:Parameter Name="EMAIL" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="PERSON_TYPE" Type="String" />
                        <asp:Parameter Name="FULL_NAME" Type="String" />
                        <asp:Parameter Name="GENDER" Type="String" />
                        <asp:Parameter Name="DOB" Type="DateTime" />
                        <asp:Parameter Name="PHONE" Type="String" />
                        <asp:Parameter Name="EMAIL" Type="String" />
                        <asp:Parameter Name="original_PERSON_ID" Type="Decimal" />
                        <asp:Parameter Name="original_PERSON_TYPE" Type="String" />
                        <asp:Parameter Name="original_FULL_NAME" Type="String" />
                        <asp:Parameter Name="original_GENDER" Type="String" />
                        <asp:Parameter Name="original_DOB" Type="DateTime" />
                        <asp:Parameter Name="original_PHONE" Type="String" />
                        <asp:Parameter Name="original_EMAIL" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 627px">&nbsp;</td>
            <td style="width: 20px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="STUDENT_ID" DataSourceID="SqlDataSource2" GridLines="Horizontal" Width="1200px">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" ReadOnly="True" SortExpression="STUDENT_ID" />
                        <asp:BoundField DataField="SPECIALIZATION" HeaderText="SPECIALIZATION" SortExpression="SPECIALIZATION" />
                        <asp:BoundField DataField="group" HeaderText="group" SortExpression="group" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:collegedb %>" DeleteCommand="DELETE FROM &quot;STUDENT&quot; WHERE &quot;STUDENT_ID&quot; = :original_STUDENT_ID AND &quot;SPECIALIZATION&quot; = :original_SPECIALIZATION AND &quot;group&quot; = :original_group AND &quot;DATE_JOINED&quot; = :original_DATE_JOINED" InsertCommand="INSERT INTO STUDENT(STUDENT_ID, SPECIALIZATION, &quot;group&quot;, DATE_JOINED) VALUES (:STUDENT_ID, :SPECIALIZATION, :group , :DATE_JOINED)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:collegedb.ProviderName %>" SelectCommand="SELECT * FROM &quot;STUDENT&quot;" UpdateCommand="UPDATE STUDENT SET SPECIALIZATION = :SPECIALIZATION, &quot;group&quot; = :group , DATE_JOINED = :DATE_JOINED WHERE (STUDENT_ID = :original_STUDENT_ID) AND (SPECIALIZATION = :original_SPECIALIZATION) AND (&quot;group&quot; = :original_group) AND (DATE_JOINED = :original_DATE_JOINED)">
                    <DeleteParameters>
                        <asp:Parameter Name="original_STUDENT_ID" Type="Decimal" />
                        <asp:Parameter Name="original_SPECIALIZATION" Type="String" />
                        <asp:Parameter Name="original_group" Type="String" />
                        <asp:Parameter Name="original_DATE_JOINED" Type="DateTime" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="STUDENT_ID" Type="Decimal" />
                        <asp:Parameter Name="SPECIALIZATION" Type="String" />
                        <asp:Parameter Name="group" Type="String" />
                        <asp:Parameter Name="DATE_JOINED" Type="DateTime" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="SPECIALIZATION" Type="String" />
                        <asp:Parameter Name="group" Type="String" />
                        <asp:Parameter Name="DATE_JOINED" Type="DateTime" />
                        <asp:Parameter Name="original_STUDENT_ID" Type="Decimal" />
                        <asp:Parameter Name="original_SPECIALIZATION" Type="String" />
                        <asp:Parameter Name="original_group" Type="String" />
                        <asp:Parameter Name="original_DATE_JOINED" Type="DateTime" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
