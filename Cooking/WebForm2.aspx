<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Cooking.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="gridview1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />

                    <%--<asp:TemplateField   >
                        <ItemTemplate>
                            <asp:Image ImageUrl='<%# Bind("Image") %>' runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>--%>
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:BoundField DataField="Customerid" HeaderText="Customerid" SortExpression="Customerid" />
                    <asp:BoundField DataField="Mobileno" HeaderText="Mobileno" SortExpression="Mobileno" />
                    <asp:BoundField DataField="Addkeywords" HeaderText="Addkeywords" SortExpression="Addkeywords" />
                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                    <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                </Columns>

//checking
            </asp:GridView>
            <link type="text/css" rel="stylesheet" href="https://cdn.datatables.net/1.10.9/css/dataTables.bootstrap.min.css" />
            <link type="text/css" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
            <link type="text/css" rel="stylesheet" href="https://cdn.datatables.net/responsive/1.0.7/css/responsive.bootstrap.min.css" />
            <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
            <script type="text/javascript" src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
            <script type="text/javascript" src="https://cdn.datatables.net/responsive/1.0.7/js/dataTables.responsive.min.js"></script>
            <script type="text/javascript" src="https://cdn.datatables.net/1.10.9/js/dataTables.bootstrap.min.js"></script>
            <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
            <script type="text/javascript">
                $(function () {
                    $('[id*=gridview1]').prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable({
                        "responsive": true,
                        "sPaginationType": "full_numbers"
                    });
                });
            </script>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Cooking %>" SelectCommand="SELECT * FROM [Postrecipe]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
