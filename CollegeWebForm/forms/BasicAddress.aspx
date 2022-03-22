<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BasicAddress.aspx.cs" Inherits="CollegeWebForm.forms.BasicAddress" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>CRUD Address</h2>
    <p>
        Create, read, update and delete address using the labelled fields and buttons.
    </p>
    <table class="nav-justified" style="height: 500px; width: 98%">
        <tr>
            <td class="modal-sm" style="width: 420px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 420px">
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="ADDRESS_ID" DataSourceID="SqlDataSource1">

                    <InsertItemTemplate>
                        <table class="nav-justified" style="width: 400px; border-collapse: separate; border-spacing: 0 0.6em;">
                            <tr>
                                <td>Country:</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="COUNTRYTextBox" runat="server" Text='<%# Bind("COUNTRY") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>Province:</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="PROVINCETextBox" runat="server" Text='<%# Bind("PROVINCE") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>City Locality:</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="CITY_LOCALITYTextBox" runat="server" Text='<%# Bind("CITY_LOCALITY") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>Street Name:</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="STREET_NAMETextBox" runat="server" Text='<%# Bind("STREET_NAME") %>' />
                                </td>
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
                        <asp:LinkButton class="btn btn-primary" ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Add a new address" />
                    </ItemTemplate>
                </asp:FormView>
            </td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ADDRESS_ID" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="750px">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <Columns>
                        <asp:BoundField DataField="ADDRESS_ID" HeaderText="ADDRESS_ID" ReadOnly="True" SortExpression="ADDRESS_ID" />
                        <asp:BoundField DataField="COUNTRY" HeaderText="COUNTRY" SortExpression="COUNTRY" />
                        <asp:BoundField DataField="PROVINCE" HeaderText="PROVINCE" SortExpression="PROVINCE" />
                        <asp:BoundField DataField="CITY_LOCALITY" HeaderText="CITY_LOCALITY" SortExpression="CITY_LOCALITY" />
                        <asp:BoundField DataField="STREET_NAME" HeaderText="STREET_NAME" SortExpression="STREET_NAME" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:collegedb %>" DeleteCommand="DELETE FROM &quot;ADDRESS&quot; WHERE &quot;ADDRESS_ID&quot; = :original_ADDRESS_ID AND &quot;COUNTRY&quot; = :original_COUNTRY AND &quot;PROVINCE&quot; = :original_PROVINCE AND &quot;CITY_LOCALITY&quot; = :original_CITY_LOCALITY AND &quot;STREET_NAME&quot; = :original_STREET_NAME" InsertCommand="INSERT INTO &quot;ADDRESS&quot; (&quot;ADDRESS_ID&quot;, &quot;COUNTRY&quot;, &quot;PROVINCE&quot;, &quot;CITY_LOCALITY&quot;, &quot;STREET_NAME&quot;) VALUES (:ADDRESS_ID, :COUNTRY, :PROVINCE, :CITY_LOCALITY, :STREET_NAME)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:collegedb.ProviderName %>" SelectCommand="SELECT * FROM &quot;ADDRESS&quot;" UpdateCommand="UPDATE &quot;ADDRESS&quot; SET &quot;COUNTRY&quot; = :COUNTRY, &quot;PROVINCE&quot; = :PROVINCE, &quot;CITY_LOCALITY&quot; = :CITY_LOCALITY, &quot;STREET_NAME&quot; = :STREET_NAME WHERE &quot;ADDRESS_ID&quot; = :original_ADDRESS_ID AND &quot;COUNTRY&quot; = :original_COUNTRY AND &quot;PROVINCE&quot; = :original_PROVINCE AND &quot;CITY_LOCALITY&quot; = :original_CITY_LOCALITY AND &quot;STREET_NAME&quot; = :original_STREET_NAME">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ADDRESS_ID" Type="Decimal" />
                        <asp:Parameter Name="original_COUNTRY" Type="String" />
                        <asp:Parameter Name="original_PROVINCE" Type="String" />
                        <asp:Parameter Name="original_CITY_LOCALITY" Type="String" />
                        <asp:Parameter Name="original_STREET_NAME" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ADDRESS_ID" Type="Decimal" />
                        <asp:Parameter Name="COUNTRY" Type="String" />
                        <asp:Parameter Name="PROVINCE" Type="String" />
                        <asp:Parameter Name="CITY_LOCALITY" Type="String" />
                        <asp:Parameter Name="STREET_NAME" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="COUNTRY" Type="String" />
                        <asp:Parameter Name="PROVINCE" Type="String" />
                        <asp:Parameter Name="CITY_LOCALITY" Type="String" />
                        <asp:Parameter Name="STREET_NAME" Type="String" />
                        <asp:Parameter Name="original_ADDRESS_ID" Type="Decimal" />
                        <asp:Parameter Name="original_COUNTRY" Type="String" />
                        <asp:Parameter Name="original_PROVINCE" Type="String" />
                        <asp:Parameter Name="original_CITY_LOCALITY" Type="String" />
                        <asp:Parameter Name="original_STREET_NAME" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 420px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
