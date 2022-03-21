<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BasicAddress.aspx.cs" Inherits="CollegeWebForm.Teacher_details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ADDRESS_ID" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
                <Columns>
                    <asp:BoundField DataField="ADDRESS_ID" HeaderText="ADDRESS_ID" ReadOnly="True" SortExpression="ADDRESS_ID" />
                    <asp:BoundField DataField="COUNTRY" HeaderText="COUNTRY" SortExpression="COUNTRY" />
                    <asp:BoundField DataField="PROVINCE" HeaderText="PROVINCE" SortExpression="PROVINCE" />
                    <asp:BoundField DataField="CITY_LOCALITY" HeaderText="CITY_LOCALITY" SortExpression="CITY_LOCALITY" />
                    <asp:BoundField DataField="STREET_NAME" HeaderText="STREET_NAME" SortExpression="STREET_NAME" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;ADDRESS&quot; WHERE &quot;ADDRESS_ID&quot; = :ADDRESS_ID" InsertCommand="INSERT INTO &quot;ADDRESS&quot; (&quot;ADDRESS_ID&quot;, &quot;COUNTRY&quot;, &quot;PROVINCE&quot;, &quot;CITY_LOCALITY&quot;, &quot;STREET_NAME&quot;) VALUES (:ADDRESS_ID, :COUNTRY, :PROVINCE, :CITY_LOCALITY, :STREET_NAME)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;ADDRESS&quot;" UpdateCommand="UPDATE &quot;ADDRESS&quot; SET &quot;COUNTRY&quot; = :COUNTRY, &quot;PROVINCE&quot; = :PROVINCE, &quot;CITY_LOCALITY&quot; = :CITY_LOCALITY, &quot;STREET_NAME&quot; = :STREET_NAME WHERE &quot;ADDRESS_ID&quot; = :ADDRESS_ID">
                <DeleteParameters>
                    <asp:Parameter Name="ADDRESS_ID" Type="Decimal" />
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
                    <asp:Parameter Name="ADDRESS_ID" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="ADDRESS_ID" DataSourceID="SqlDataSource1">
                <InsertItemTemplate>
                    COUNTRY:
                    <asp:TextBox ID="COUNTRYTextBox" runat="server" Text='<%# Bind("COUNTRY") %>' />
                    <br />
                    PROVINCE:
                    <asp:TextBox ID="PROVINCETextBox" runat="server" Text='<%# Bind("PROVINCE") %>' />
                    <br />
                    CITY_LOCALITY:
                    <asp:TextBox ID="CITY_LOCALITYTextBox" runat="server" Text='<%# Bind("CITY_LOCALITY") %>' />
                    <br />
                    STREET_NAME:
                    <asp:TextBox ID="STREET_NAMETextBox" runat="server" Text='<%# Bind("STREET_NAME") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
            <br />
        </div>
    </form>
</body>
</html>
