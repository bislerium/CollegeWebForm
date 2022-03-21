<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Person.aspx.cs" Inherits="CollegeWebForm.Person" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="PERSON_ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="PERSON_ID" HeaderText="PERSON_ID" ReadOnly="True" SortExpression="PERSON_ID" />
                    <asp:BoundField DataField="PERSON_TYPE" HeaderText="PERSON_TYPE" SortExpression="PERSON_TYPE" />
                    <asp:BoundField DataField="FULL_NAME" HeaderText="FULL_NAME" SortExpression="FULL_NAME" />
                    <asp:BoundField DataField="GENDER" HeaderText="GENDER" SortExpression="GENDER" />
                    <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                    <asp:BoundField DataField="PHONE" HeaderText="PHONE" SortExpression="PHONE" />
                    <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;PERSON&quot; WHERE &quot;PERSON_ID&quot; = :PERSON_ID" InsertCommand="INSERT INTO &quot;PERSON&quot; (&quot;PERSON_ID&quot;, &quot;PERSON_TYPE&quot;, &quot;FULL_NAME&quot;, &quot;GENDER&quot;, &quot;DOB&quot;, &quot;PHONE&quot;, &quot;EMAIL&quot;) VALUES (:PERSON_ID, :PERSON_TYPE, :FULL_NAME, :GENDER, :DOB, :PHONE, :EMAIL)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;PERSON&quot;" UpdateCommand="UPDATE &quot;PERSON&quot; SET &quot;PERSON_TYPE&quot; = :PERSON_TYPE, &quot;FULL_NAME&quot; = :FULL_NAME, &quot;GENDER&quot; = :GENDER, &quot;DOB&quot; = :DOB, &quot;PHONE&quot; = :PHONE, &quot;EMAIL&quot; = :EMAIL WHERE &quot;PERSON_ID&quot; = :PERSON_ID">
                <DeleteParameters>
                    <asp:Parameter Name="PERSON_ID" Type="Decimal" />
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
                    <asp:Parameter Name="PERSON_ID" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="PERSON_ID" DataSourceID="SqlDataSource1">
                <InsertItemTemplate>
                    PERSON_TYPE:
                    <asp:TextBox ID="PERSON_TYPETextBox" runat="server" Text='<%# Bind("PERSON_TYPE") %>' />
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
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>                
                    <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />  
                </ItemTemplate>                    
            </asp:FormView>
        </div>
    </form>
</body>
</html>
