<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="reciepes.aspx.cs" Inherits="Cooking.reciepes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:DropDownList ID="ddl" AutoPostBack="true" CssClass="form-control" OnSelectedIndexChanged="ddl_SelectedIndexChanged" runat="server">
            <asp:ListItem Text="Select category" />            
            <asp:ListItem Text="Veg" />
            <asp:ListItem Text="Non-Veg" />
        </asp:DropDownList>

    </div>
    <asp:Label Text="(OR)" runat="server" />
    <div>
        <asp:Label Text="Search By using Keywords" runat="server" />
    </div>
    <div>
        <asp:DropDownList ID="drpk" CssClass="form-control" OnSelectedIndexChanged="drpk_SelectedIndexChanged" AutoPostBack="true" runat="server">
        </asp:DropDownList>
    </div>
    <br /><br />
    <asp:DataList ID="DataList1" GridLines="Both" BorderWidth="3px" RepeatColumns="1" OnItemCommand="DataList1_ItemCommand" RepeatDirection="Horizontal" runat="server" DataKeyField="Id" >
        <ItemTemplate>

            <asp:Label ID="IdLabel" runat="server" Visible="false" Text='<%# Eval("Id") %>' />
            <br />
            <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
            <br />
            <%-- <asp:Label ID="ImageLabel" runat="server" Text='<%# Eval("Image") %>' />--%>
            <asp:Image ImageUrl='<%# Eval("Image") %>' ID="img1" Height="200px" Width="220px" runat="server" />


            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
            <br />
            Name:
            <asp:Label ID="CustomeridLabel" runat="server" Text='<%# Eval("Customerid") %>' />
            <br />
            Mobileno:
            <asp:Label ID="MobilenoLabel" runat="server" Text='<%# Eval("Mobileno") %>' />
            <br />

            <br />
            <asp:Button Text="Delete" ID="btndelete" CommandName="delete" CommandArgument='<%# Eval("Id") %>' runat="server" />
            <asp:Label ID="StatusLabel" runat="server" Visible="false" Text='<%# Eval("Status") %>' />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>

    

</asp:Content>
