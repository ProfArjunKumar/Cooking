<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Addkeyword.aspx.cs" Inherits="Cooking.Addkeyword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:DataList ID="DataList1" CellPadding="4"  GridLines="Both"  BorderWidth="3px" RepeatColumns="1" RepeatDirection="Horizontal" OnItemCommand="DataList1_OnItemCommand" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1">
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <ItemStyle ForeColor="#000066" />
        <ItemTemplate>
          
            <asp:Label ID="IdLabel" runat="server" Visible="false" Text='<%# Eval("Id") %>' />
            
         <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
            <br />
         <asp:Image ImageUrl='<%# Bind("Image") %>' ID="img1" Width="200px" Height="200px" runat="server" />
          
            
           
           
            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
            <br />
            Name:
            <asp:Label ID="CustomeridLabel" runat="server" Text='<%# Eval("Customerid") %>' />
            <br />
            Mobileno:
            <asp:Label ID="MobilenoLabel" runat="server" Text='<%# Eval("Mobileno") %>' />
            <br />
            Addkeywords:
         <asp:TextBox ID="txtadd" runat="server" />
            <asp:Button Text="Submit" ID="btnsubmit" CommandName="keyword" runat="server" CommandArgument='<%# Eval("Id") %>' />
            <br />
            Status:
            <asp:Label ID="StatusLabel" runat="server" Text='<%# Eval("Status") %>'  />
            <br />
<br />
            <asp:Button Text="Publish" ID="btnpublish" runat="server" CommandName="Publish" CommandArgument='<%# Eval("Id") %>' />
            <asp:Button Text="Reject" ID="Btnreject" runat="server" CommandName="Reject" CommandArgument='<%# Eval("Id") %>' />
            <asp:Button Text="delete" ID="btndelte" runat="server" CommandName="delete" CommandArgument='<%# Eval("Id") %>' />
            
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Cooking %>" DeleteCommand="DELETE FROM [Postrecipe] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Postrecipe] ([Image], [Title], [Description], [Customerid], [Mobileno], [Addkeywords], [Status]) VALUES (@Image, @Title, @Description, @Customerid, @Mobileno, @Addkeywords, @Status)" SelectCommand="SELECT * FROM [Postrecipe] where Status='Pending' " UpdateCommand="UPDATE [Postrecipe] SET [Image] = @Image, [Title] = @Title, [Description] = @Description, [Customerid] = @Customerid, [Mobileno] = @Mobileno, [Addkeywords] = @Addkeywords, [Status] = @Status WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Customerid" Type="Int32" />
            <asp:Parameter Name="Mobileno" Type="String" />
            <asp:Parameter Name="Addkeywords" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Customerid" Type="Int32" />
            <asp:Parameter Name="Mobileno" Type="String" />
            <asp:Parameter Name="Addkeywords" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
</asp:Content>
