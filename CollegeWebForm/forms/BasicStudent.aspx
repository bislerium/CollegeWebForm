﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BasicStudent.aspx.cs" Inherits="CollegeWebForm.forms.BasicStudent" %>

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
                                    <asp:TextBox ID="PERSON_IDTextBox" runat="server" Text='<%# Bind("PERSON_ID") %>' TextMode="Number" />
                                </td>
                            </tr>
                            <tr>
                                <td>Person Type:</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="PERSON_TYPETextBox" runat="server" Text='<%# Bind("PERSON_TYPE") %>' value="Student"/>
                                </td>
                            </tr>
                            <tr>
                                <td>Full Name:</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="FULL_NAMETextBox" runat="server" Text='<%# Bind("FULL_NAME") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>Gender:</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="GENDERTextBox" runat="server" Text='<%# Bind("GENDER") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>Date of Birth:</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="DOBTextBox" runat="server" Text='<%# Bind("DOB") %>' TextMode="Date"/>
                                </td>
                            </tr>
                            <tr>
                                <td>Phone:</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="PHONETextBox" runat="server" Text='<%# Bind("PHONE") %>' TextMode="Phone"/>
                                </td>
                            </tr>
                            <tr>
                                <td>Email:</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="EMAILTextBox" runat="server" Text='<%# Bind("EMAIL") %>' TextMode="Email" />
                                </td>
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
                     <InsertItemTemplate>
                         <table class="nav-justified" style="width: 400px; border-collapse: separate; border-spacing: 0 0.6em;">
                            <tr>
                                <td>Student ID:</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="STUDENT_IDTextBox" runat="server" Text='<%# Bind("STUDENT_ID") %>' TextMode="Number" />
                                </td>
                            </tr>
                            <tr>
                                <td>Specialization:</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="SPECIALIZATIONTextBox" runat="server" Text='<%# Bind("SPECIALIZATION") %>'/>
                                </td>
                            </tr>
                            <tr>
                                <td>Class Group:</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="CLASS_GROUPTextBox" runat="server" Text='<%# Bind("CLASS_GROUP") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>Date Joined:</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="DATE_JOINEDTextBox" runat="server" Text='<%# Bind("DATE_JOINED") %>' TextMode="Date"/>
                                </td>
                            </tr>                            
                            <tr>
                                <td></td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:LinkButton class="btn btn-primary" ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                    &nbsp;<asp:LinkButton class="btn btn-secondary" ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                                </td>
                            </tr>
                        </table>                                                
                    </InsertItemTemplate>
                     <ItemTemplate>
                        &nbsp;<asp:LinkButton class="btn btn-primary" ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Then, create a student account" />
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
                        <asp:BoundField DataField="FULL_NAME" HeaderText="FULL_NAME" SortExpression="FULL_NAME" />
                        <asp:BoundField DataField="GENDER" HeaderText="GENDER" SortExpression="GENDER" />
                        <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                        <asp:BoundField DataField="PHONE" HeaderText="PHONE" SortExpression="PHONE" />
                        <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                        <asp:TemplateField ShowHeader="False">
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:collegedb %>" DeleteCommand="DELETE FROM &quot;PERSON&quot; WHERE &quot;PERSON_ID&quot; = :original_PERSON_ID AND &quot;PERSON_TYPE&quot; = :original_PERSON_TYPE AND &quot;FULL_NAME&quot; = :original_FULL_NAME AND &quot;GENDER&quot; = :original_GENDER AND &quot;DOB&quot; = :original_DOB AND &quot;PHONE&quot; = :original_PHONE AND &quot;EMAIL&quot; = :original_EMAIL" InsertCommand="INSERT INTO &quot;PERSON&quot; (&quot;PERSON_ID&quot;, &quot;PERSON_TYPE&quot;, &quot;FULL_NAME&quot;, &quot;GENDER&quot;, &quot;DOB&quot;, &quot;PHONE&quot;, &quot;EMAIL&quot;) VALUES (:PERSON_ID, :PERSON_TYPE, :FULL_NAME, :GENDER, :DOB, :PHONE, :EMAIL)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:collegedb.ProviderName %>" SelectCommand="SELECT * FROM &quot;PERSON&quot; WHERE (&quot;PERSON_TYPE&quot; = :PERSON_TYPE)" UpdateCommand="UPDATE &quot;PERSON&quot; SET &quot;PERSON_TYPE&quot; = :PERSON_TYPE, &quot;FULL_NAME&quot; = :FULL_NAME, &quot;GENDER&quot; = :GENDER, &quot;DOB&quot; = :DOB, &quot;PHONE&quot; = :PHONE, &quot;EMAIL&quot; = :EMAIL WHERE &quot;PERSON_ID&quot; = :original_PERSON_ID AND &quot;PERSON_TYPE&quot; = :original_PERSON_TYPE AND &quot;FULL_NAME&quot; = :original_FULL_NAME AND &quot;GENDER&quot; = :original_GENDER AND &quot;DOB&quot; = :original_DOB AND &quot;PHONE&quot; = :original_PHONE AND &quot;EMAIL&quot; = :original_EMAIL">
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
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Student" Name="PERSON_TYPE" Type="String" />
                    </SelectParameters>
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
                        <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" ReadOnly="True" SortExpression="STUDENT_ID" />
                        <asp:BoundField DataField="SPECIALIZATION" HeaderText="SPECIALIZATION" SortExpression="SPECIALIZATION" />
                        <asp:BoundField DataField="CLASS_GROUP" HeaderText="CLASS_GROUP" SortExpression="CLASS_GROUP" />
                        <asp:BoundField DataField="DATE_JOINED" HeaderText="DATE_JOINED" SortExpression="DATE_JOINED" />
                        <asp:TemplateField ShowHeader="False">
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:collegedb %>" DeleteCommand="DELETE FROM &quot;STUDENT&quot; WHERE &quot;STUDENT_ID&quot; = :original_STUDENT_ID AND &quot;SPECIALIZATION&quot; = :original_SPECIALIZATION AND &quot;CLASS_GROUP&quot; = :original_CLASS_GROUP AND &quot;DATE_JOINED&quot; = :original_DATE_JOINED" InsertCommand="INSERT INTO &quot;STUDENT&quot; (&quot;STUDENT_ID&quot;, &quot;SPECIALIZATION&quot;, &quot;CLASS_GROUP&quot;, &quot;DATE_JOINED&quot;) VALUES (:STUDENT_ID, :SPECIALIZATION, :CLASS_GROUP, :DATE_JOINED)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:collegedb.ProviderName %>" SelectCommand="SELECT * FROM &quot;STUDENT&quot;" UpdateCommand="UPDATE &quot;STUDENT&quot; SET &quot;SPECIALIZATION&quot; = :SPECIALIZATION, &quot;CLASS_GROUP&quot; = :CLASS_GROUP, &quot;DATE_JOINED&quot; = :DATE_JOINED WHERE &quot;STUDENT_ID&quot; = :original_STUDENT_ID AND &quot;SPECIALIZATION&quot; = :original_SPECIALIZATION AND &quot;CLASS_GROUP&quot; = :original_CLASS_GROUP AND &quot;DATE_JOINED&quot; = :original_DATE_JOINED">
                    <DeleteParameters>
                        <asp:Parameter Name="original_STUDENT_ID" Type="Decimal" />
                        <asp:Parameter Name="original_SPECIALIZATION" Type="String" />
                        <asp:Parameter Name="original_CLASS_GROUP" Type="String" />
                        <asp:Parameter Name="original_DATE_JOINED" Type="DateTime" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="STUDENT_ID" Type="Decimal" />
                        <asp:Parameter Name="SPECIALIZATION" Type="String" />
                        <asp:Parameter Name="CLASS_GROUP" Type="String" />
                        <asp:Parameter Name="DATE_JOINED" Type="DateTime" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="SPECIALIZATION" Type="String" />
                        <asp:Parameter Name="CLASS_GROUP" Type="String" />
                        <asp:Parameter Name="DATE_JOINED" Type="DateTime" />
                        <asp:Parameter Name="original_STUDENT_ID" Type="Decimal" />
                        <asp:Parameter Name="original_SPECIALIZATION" Type="String" />
                        <asp:Parameter Name="original_CLASS_GROUP" Type="String" />
                        <asp:Parameter Name="original_DATE_JOINED" Type="DateTime" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
