<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Viewrecipe.aspx.cs" Inherits="Cooking.Viewrecipe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList runat="server" BackColor="White" RepeatColumns="1"  OnItemCommand="datalist1_ItemCommand" ID="datalist1" RepeatDirection="Horizontal" Width="100%" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="2px" CellPadding="3" DataKeyField="Id" DataSourceID="SqlDataSource1" GridLines="Both">
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <ItemStyle ForeColor="#000066" />
      
        <ItemTemplate>
            <asp:Label ID="IdLabel" runat="server" Visible="false" Text='<%# Eval("Id") %>' />
         <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />   
            <br />
          
               <asp:Image ImageUrl='<%# Bind("Image") %>' Height="100px" Width="100px" ID="img1" runat="server" />
                  
          <%--  <asp:Label ID="Label" runat="server" Text='<%# Eval("Image") %>' />--%>
         
            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
            <br />
            Name:
            <asp:Label ID="CustomeridLabel" runat="server" Text='<%# Eval("Customerid") %>' />
            <br />
            Mobileno:
            <asp:Label ID="MobilenoLabel" runat="server" Text='<%# Eval("Mobileno") %>' />
            <br />
            <asp:LinkButton Text="View" ID="btnview" CommandArgument='<%# Eval("Id") %>'  runat="server" />
        </ItemTemplate>
          
        <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        
    </asp:DataList>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Cooking %>" DeleteCommand="DELETE FROM [Postrecipe] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Postrecipe] ([Image], [Title], [Description], [Customerid], [Mobileno]) VALUES (@Image, @Title, @Description, @Customerid, @Mobileno)" SelectCommand="SELECT * FROM [Postrecipe]" UpdateCommand="UPDATE [Postrecipe] SET [Image] = @Image, [Title] = @Title, [Description] = @Description, [Customerid] = @Customerid, [Mobileno] = @Mobileno WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Customerid" Type="Int32" />
            <asp:Parameter Name="Mobileno" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Customerid" Type="Int32" />
            <asp:Parameter Name="Mobileno" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
