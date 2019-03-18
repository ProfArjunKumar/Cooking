<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Homerecipes.aspx.cs" Inherits="Cooking.Homerecipes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    <div>
        <asp:Label ID="lbltitle" runat="server" />
    </div>
    <div>
        <asp:Image ID="img1"  Height="200px" Width="250px" runat="server" />

        <asp:Label ID="txtdes" runat="server" />
    </div>
    
    <br />
    <asp:GridView ID="gridview1" AutoGenerateColumns="false" Width="100%" Height="100%" runat="server">
        <Columns>
            <asp:BoundField DataField="rating" HeaderText="Rating" />
       <asp:BoundField   DataField="comment" HeaderText="Comment" />
            </Columns>
    </asp:GridView>

</asp:Content>
