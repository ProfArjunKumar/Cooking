<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true"  CodeBehind="Postrecipe.aspx.cs" Inherits="Cooking.Postrecipe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body{
            background-color:lightblue;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <br />
        <br />
        <br />
    <table>
             <tr>
            <td>
               <asp:label text="Category" runat="server" />
            </td>
            <td>
                <asp:dropdownlist ID="drp1" runat="server">
                     <asp:listitem text="Select" />
                     <asp:listitem text="Veg" />
                    <asp:listitem text="Non-Veg" />
                    
                    </asp:dropdownlist>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label Text="image" runat="server" />
            </td>
            <td>
                      <asp:FileUpload ID="FileUpload1"  runat="server" />
                <asp:Button text="ChooseFile" ID="btnFileupload" CssClass="form-control"  runat="server" Visible="False" />
           <asp:label  ID="lblmsg" ForeColor="Red" runat="server" />
                </td>
        </tr>

        <tr>
            <td>
                <asp:Label Text="Title" runat="server" />
            </td>
            <td>
                <asp:TextBox ID="txtTitle" CssClass="form-control" runat="server" />
                <asp:RequiredFieldValidator ErrorMessage="Enter Title" ForeColor="Red" Display="Dynamic" ControlToValidate="txtTitle" runat="server" />
            </td>
            
        </tr>
      
        <tr>
            <td>
                <asp:Label Text="Description" runat="server" />
            </td>
            <td>
                <asp:TextBox ID="txtDescription" TextMode="MultiLine" CssClass="form-control" runat="server" />
                <asp:RequiredFieldValidator ErrorMessage="Enter description" ForeColor="Red" ControlToValidate="txtDescription" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button Text="Submit" ID="btnsubmit" OnClick="btnsubmit_Click" runat="server" />
            </td>
        </tr>
    </table>
        </center>
    <asp:Label ID="lbCustomerid" runat="server" Visible="false" />
     <asp:Label ID="lbMobileno" runat="server" Visible="false" />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    
    
</asp:Content>
