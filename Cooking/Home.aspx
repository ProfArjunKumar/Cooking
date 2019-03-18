<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Cooking.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        td>img{
            width:200px;
            height:200px;
        }
        body{
            background-image:url("img/1.jpg");
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <h3 class="text-center">Cooking Recipes Rating Analysis</h3>
        <div>     
           
            </div>

<div>
    
      
        <br />
        <br />
        <asp:DataList ID="DataList1" BackColor="White" RepeatColumns="4"  OnItemCommand="DataList1_ItemCommand1" RepeatDirection="Horizontal" Width="100%" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="2px" CellPadding="3" DataKeyField="Id" GridLines="Both" runat="server">
               <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <ItemStyle ForeColor="#000066" />
      
        <ItemTemplate>
           
            <asp:Label ID="IdLabel" Visible="false" runat="server" Text='<%# Eval("Id") %>' />
            <br />
               &nbsp;<asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />   
            <br />
      <%--   <asp:Label ID="ImageLabel" runat="server" Text='<%# Eval("Image") %>' />  --%>
            <asp:Image ImageUrl='<%# Eval("Image") %>' ID="img1" Height="200px" Width="250px" runat="server" />
            <br />
          
          <%--  <asp:Label ID="Label" runat="server" Text='<%# Eval("Image") %>' />--%>
         
         
        
         
         
            <br />
            
            <asp:Label ID="CustomeridLabel" runat="server" Text='<%# Eval("Customerid") %>' />
            <br />
           
            <asp:LinkButton Text="VIEW" ID="linkbutton"  CommandArgument='<%# Eval("Id") %>' runat="server" />
       
          
           
        </ItemTemplate>
          
        <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
     
        </asp:DataList>
         <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Cooking %>" SelectCommand="SELECT * FROM [Postrecipe] ORDER BY [Id] DESC">
    </asp:SqlDataSource>--%>

        </div>
        </div>
</asp:Content>
