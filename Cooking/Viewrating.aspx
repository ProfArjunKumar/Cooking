<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Viewrating.aspx.cs" Inherits="Cooking.Viewrating" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        td>img{
            width:200px;
            height:200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <asp:GridView ID="GridView1" runat="server" Height="100%" Width="100%"  AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField HeaderText="TITLE" DataField="Title" />
            <asp:ImageField HeaderText="IMAGE" DataImageUrlField="Image">
            </asp:ImageField>
            <asp:BoundField HeaderText="COMMENT" DataField="comment" />
          <%--  <asp:BoundField HeaderText="Rating" DataField="rating" />/ --%>
            <asp:TemplateField HeaderText="RATING">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("rating") %>' runat="server" />/ <asp:Label Text="5" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>



   <%-- <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>--%>



</asp:Content>
