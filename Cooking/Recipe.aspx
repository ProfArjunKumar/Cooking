<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Recipe.aspx.cs" Inherits="Cooking.Recipe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <asp:Label ID="lbltitle" runat="server" />
    </div>
    <div>
        <asp:Image ID="img1" runat="server" />
        <asp:Label  ID="txtdes" runat="server" />
    </div>
    <div>
        
    </div>
   
    <div>
        <asp:Label Text="Comment:" ID="lblcomment" runat="server" />
        <asp:TextBox ID="txtcomment"  CssClass="form-control"  runat="server" />
    </div>
      <div>
        <asp:Label Text="Rating:" ID="Label1" runat="server" />
          <asp:DropDownList ID="drprate" runat="server">
              <asp:ListItem Text="1" />
              <asp:ListItem Text="2" />
              <asp:ListItem Text="3" />
              <asp:ListItem Text="4" />
              <asp:ListItem Text="5" />
          </asp:DropDownList>
    </div>
    <br />
    <div>
        <center>
        <button type="button" runat="server" data-toggle="modal" data-target="#myModal">Submit</button>
       </center>
            <%--<asp:Button Text="Submit" ID="btnsubmit" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal"  runat="server" />--%>
    </div>
    <div>
        <br />
        <br />

        <asp:GridView ID="grid" AutoGenerateColumns="False"  Height="100%" Width="100%" DataSourceID="SqlDataSource1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id">
            <Columns>
                <asp:BoundField  DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField  DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="comment" HeaderText="comment" SortExpression="comment" />

                <asp:BoundField  DataField="date" HeaderText="date" SortExpression="date" />

                <asp:BoundField DataField="recipeid" HeaderText="recipeid" SortExpression="recipeid" />
            
                <asp:BoundField DataField="rating" HeaderText="rating" SortExpression="rating" />
            
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Cooking %>" SelectCommand="SELECT * FROM [comment] WHERE ([recipeid] = @recipeid)">
            <SelectParameters>
                <asp:QueryStringParameter Name="recipeid" QueryStringField="id" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
      <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Sign In</h4>
        </div>
        <div class="modal-body">
             <asp:TextBox ID="txtUsername" placeholder="Username"  runat="server" />
     <%-- <input type="text" placeholder="Enter Username" name="uname" required>--%>

   <%--   <label for="psw"><b>Password</b></label>--%>
   
        <asp:TextBox ID="txtPassword" TextMode="Password" placeholder="Password"   runat="server" />
     <asp:Button Text="Login" ID="btnlogin"  OnClick="btnlogin_Click" runat="server" />
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>

</asp:Content>
