<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Viewvistor.aspx.cs" Inherits="Cooking.Viewvistor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="gv1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
        <Columns>

            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Customerid" HeaderText="Customerid" SortExpression="Customerid" />
            <asp:BoundField DataField="Customername" HeaderText="Customername" SortExpression="Customername" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="Mobileno" HeaderText="Mobileno" SortExpression="Mobileno" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="Pincode" HeaderText="Pincode" SortExpression="Pincode" />
            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:BoundField DataField="Conformpassword" HeaderText="Conformpassword" SortExpression="Conformpassword" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:CommandField ShowDeleteButton="True" ControlStyle-ForeColor="Red" ShowEditButton="True" /> 
        </Columns>

        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />

    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Cooking %>" DeleteCommand="DELETE FROM [Cooking] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Cooking] ([Customerid], [Customername], [Gender], [Mobileno], [Email], [City], [Pincode], [Username], [Password], [Conformpassword], [Address], [Date]) VALUES (@Customerid, @Customername, @Gender, @Mobileno, @Email, @City, @Pincode, @Username, @Password, @Conformpassword, @Address, @Date)" SelectCommand="SELECT * FROM [Cooking]" UpdateCommand="UPDATE [Cooking] SET [Customerid] = @Customerid, [Customername] = @Customername, [Gender] = @Gender, [Mobileno] = @Mobileno, [Email] = @Email, [City] = @City, [Pincode] = @Pincode, [Username] = @Username, [Password] = @Password, [Conformpassword] = @Conformpassword, [Address] = @Address, [Date] = @Date WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Customerid" Type="String" />
            <asp:Parameter Name="Customername" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Mobileno" Type="Int32" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="Pincode" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Conformpassword" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter DbType="Date" Name="Date" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Customerid" Type="String" />
            <asp:Parameter Name="Customername" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Mobileno" Type="Int32" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="Pincode" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Conformpassword" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter DbType="Date" Name="Date" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
