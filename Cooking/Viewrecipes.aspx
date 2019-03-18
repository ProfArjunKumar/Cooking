<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Viewrecipes.aspx.cs" Inherits="Cooking.Viewrecipes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:Label ID="lbltitle" runat="server" />
    </div>
    <div>
        <asp:Image ID="img1" runat="server" />

        <asp:Label ID="txtdes" runat="server" />
    </div>

    <div>
        <asp:Label Text="Comment:" ID="lblcomment" runat="server" />
        <asp:TextBox ID="txtcomment" TextMode="MultiLine" CssClass="form-control" runat="server" />
        <asp:RequiredFieldValidator ErrorMessage="Enter Comment" Display="Dynamic"  ForeColor="Red" ControlToValidate="txtcomment" runat="server" />
    </div>
    <br />
    <div>
        <asp:Label Text="Rating:" ID="lblrating" runat="server" />
        <asp:DropDownList ID="drprate" runat="server">
            <asp:ListItem Text="0" />
            <asp:ListItem Text="1" />
            <asp:ListItem Text="2" />
            <asp:ListItem Text="3" />
            <asp:ListItem Text="4" />
            <asp:ListItem Text="5" />
        </asp:DropDownList>
        <asp:RequiredFieldValidator ErrorMessage="Select one" Display="Dynamic" ForeColor="Red" InitialValue="0" ControlToValidate="drprate" runat="server" />
    </div>
    <br />
    <center>
    <div>
        <asp:Button Text="Submit" ID="btnsubmit" OnClick="btnsubmit_Click" runat="server"  />
    </div>
        </center>
    <br />
    <br />
    <asp:GridView ID="gridview1" AutoGenerateColumns="False" Height="100%" Width="100%"  runat="server" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id" >
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />

        <Columns>

            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="comment" HeaderText="comment" SortExpression="comment" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            <asp:BoundField DataField="recipeid" HeaderText="recipeid" SortExpression="recipeid" />
            <asp:BoundField DataField="rating" HeaderText="rating" SortExpression="rating" />

        </Columns>

    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Cooking %>" SelectCommand="SELECT * FROM [comment] WHERE ([recipeid] = @recipeid)">
        <SelectParameters>
            <asp:QueryStringParameter Name="recipeid" QueryStringField="id" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Label ID="lblmsg" runat="server" />
</asp:Content>
