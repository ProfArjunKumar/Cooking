<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Adminviewrating2.aspx.cs" Inherits="Cooking.Adminviewrating2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        td > img {
            width: 200px;
            height: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="gridview1" Height="100%" AutoGenerateColumns="false" Width="100%" runat="server">
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
</asp:Content>
