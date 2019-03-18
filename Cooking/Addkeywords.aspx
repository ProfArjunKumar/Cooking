<%@ Page Title="" Language="C#" MasterPageFile="~/Admin1.Master" AutoEventWireup="true" CodeBehind="Addkeywords.aspx.cs" Inherits="Cooking.Addkeywords" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <h2>Veg</h2>
        <tr>
            <td>
                <asp:Label Text="image" runat="server" />
            </td>
            <td>
                      <asp:FileUpload ID="FileUpload1"  runat="server" />
                <asp:Button text="ChooseFile" ID="btnFileupload" runat="server" Visible="False" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label Text="Title" runat="server" />
            </td>
            <td>
                <asp:TextBox ID="txtTitle" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label Text="Description" runat="server" />
            </td>
            <td>
                <asp:TextBox ID="txtDescription" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button Text="Submit" ID="btnVegsubmit" OnClick="btnVegsubmit_Click" runat="server" />
            </td>
        </tr>
    </table>
    <table>
        <h2>Non-Veg</h2>
        <tr>
            <td>
                <asp:Label Text="image" runat="server" />
            </td>
            <td>
                      <asp:FileUpload ID="FileUpload2"  runat="server" />
                <asp:Button text="ChooseFile" ID="Button1" runat="server" Visible="False" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label Text="Title" runat="server" />
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label Text="Description" runat="server" />
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button Text="Submit" ID="btnNonveg" OnClick="btnNonveg_Click" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>
