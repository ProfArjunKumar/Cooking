<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Addkeywords12.aspx.cs" Inherits="Cooking.Addkeywords12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
        <ItemTemplate>
            <table class="nav-justified">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Title") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Addkeywords") %>'></asp:Label>
                        &nbsp;<asp:Button ID="btnsubmit" runat="server" Text="Submit" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnpublish" runat="server" Text="Publish" />
                    </td>
                </tr>
            </table>
            <br />
<br />
        </ItemTemplate>

    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Cooking %>" SelectCommand="SELECT * FROM [Postrecipe]"></asp:SqlDataSource>
</asp:Content>
