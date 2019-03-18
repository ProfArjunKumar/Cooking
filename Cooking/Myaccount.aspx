<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Myaccount.aspx.cs" Inherits="Cooking.Myaccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background-color: lightblue;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container" style="background-color: lightblue">
        <center>
    <table >
        <tr>
            <td>
                 <asp:Label Text="Customerid" runat="server" />
                </td>
            <td>
                <asp:TextBox ID="txtCustomerid" ReadOnly="true" CssClass="form-control" runat="server" />
            </td>
            </tr>
        <tr>
            <td>
                <asp:Label Text="Customername" runat="server" />
            </td>
    <td>
        <asp:TextBox ID="txtCustomername" CssClass="form-control" runat="server" />
        <asp:requiredfieldvalidator ForeColor="Red" Display="Dynamic" errormessage="Enter Name" controltovalidate="txtCustomername" runat="server"/>
        </td>
            </tr>
        <tr>
            <td>
<asp:Label Text="Gender" runat="server" />
            </td>
 <td>
     <asp:DropDownList ID="ddlGender" CssClass="form-control" runat="server">
         <asp:ListItem Text="Select" />
         <asp:ListItem Text="Male" />
          <asp:ListItem Text="Female" />
         <asp:ListItem Text="Others" />
     </asp:DropDownList>
     <asp:requiredfieldvalidator errormessage="Select one" Display="Dynamic" ForeColor="Red" controltovalidate="ddlGender" runat="server" InitialValue="Select"/>
 </td>
        </tr>     
         <tr>
            <td>
                <asp:Label Text="Mobile no" runat="server" />
                </td>
            <td>
                <asp:TextBox ID="txtMbleno" CssClass="form-control" runat="server" />
                <asp:requiredfieldvalidator Display="Dynamic" ForeColor="Red" errormessage="Enter Mobile Number" controltovalidate="txtMbleno" runat="server"/>
<asp:regularexpressionvalidator ForeColor="Red" Display="Dynamic" errormessage="Enter Valid Phone number" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$" controltovalidate="txtMbleno" runat="server"/>
            </td>
            </tr>
        <tr>
            <td>
                 <asp:Label Text="Email" runat="server" />
            </td>
    <td>
        <asp:TextBox ID="txtEmail" CssClass="form-control" OnTextChanged="txtEmail_TextChanged" AutoPostBack="true" runat="server" />
<asp:regularexpressionvalidator Display="Dynamic" errormessage="Invalid email" controltovalidate="txtEmail" runat="server" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"/>
    <asp:requiredfieldvalidator  ForeColor="Red" Display="Dynamic" errormessage="Enter Email" controltovalidate="txtEmail" runat="server"/>
        <asp:label  ID="lblmsg1" runat="server" ForeColor="Red" />
        </td>
            </tr>
        <tr>
            <td>
  <asp:Label Text="Address" runat="server" />
            </td>
 <td>
     <asp:TextBox ID="txtAddress" TextMode="MultiLine" CssClass="form-control" runat="server" />
 <asp:requiredfieldvalidator Display="Dynamic" ForeColor="Red" errormessage="Enter Address" controltovalidate="txtAddress" runat="server"/>
 </td>
        </tr>
   
   <tr>
            <td>
                <asp:Label Text="City" runat="server" />
                </td>
            <td>
                <asp:TextBox ID="txtCity" CssClass="form-control" runat="server" />
            <asp:requiredfieldvalidator ForeColor="Red"  Display="Dynamic" errormessage="Enter City" controltovalidate="txtCity" runat="server"/>
            </td>
            </tr>
        <tr>
            <td>
            
    <asp:Label Text="Pincode"  runat="server" />
            </td>
    <td>
        <asp:TextBox ID="txtPincode" CssClass="form-control" runat="server" />
        <asp:requiredfieldvalidator ForeColor="Red" errormessage="Enter Pincode" Display="Dynamic"  controltovalidate="txtPincode" runat="server"/>
        </td>
            </tr>
        <tr>
            <td>
  <asp:Label Text="Username" runat="server" />
            </td>
 <td>
     <asp:TextBox ID="txtUsername" CssClass="form-control"  OnTextChanged="txtUsername_TextChanged" AutoPostBack="true" runat="server" />
     <asp:requiredfieldvalidator ForeColor="Red" errormessage="Enter username" Display="Dynamic" controltovalidate="txtUsername" runat="server"/>
     <asp:label ID="lblmsg" ForeColor="red" runat="server" />
 </td>
        </tr>

        <tr>
            <td>
  
    <asp:Label Text="Password" runat="server" />
            </td>
    <td>
       
        <asp:TextBox ID="txtPassword" CssClass="form-control"  TextMode="Password" runat="server" />
      <asp:requiredfieldvalidator ForeColor="Red" Display="Dynamic" errormessage="Enter password" controltovalidate="txtPassword" runat="server"/>
        </td>
            </tr>
        <tr>
            <td>
    <asp:Label Text="Conformpassword" runat="server" />
            </td>
 <td>
     <asp:TextBox ID="txtConformpassword" CssClass="form-control" TextMode="Password" runat="server" />
   <asp:comparevalidator   errormessage="password mismatch" ControlToCompare="txtPassword" controltovalidate="txtConformpassword" runat="server"/>
 </td>
        </tr>
  
<tr>
    <td>
    <asp:Button Text="Submit" ID="btnSubmit" OnClick="btnSubmit_Click" runat="server" />
        </td>
</tr>
        
      
    </table>
       </center>
    </div>
</asp:Content>
