<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserL.aspx.cs" Inherits="KPMA.UserL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="row">
        <div class='col-md-12'>
          <div class='btn-toolbar pull-right'>
            <div class='btn-group'>
              <button type='button' class='btn btn-default'><a runat="server" href="AddUser.aspx" >Add User</a></button>
            </div>
          </div>
          <h2>List of Users</h2>
        </div>
        <div class="col-md-6">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
       
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="role" HeaderText="role" SortExpression="role" />
           <asp:HyperLinkField DataTextField="name" DataNavigateUrlFields="Id" DataNavigateUrlFormatString="UserDetails.aspx?Id={0}" HeaderText="Details"  DataTextFormatString ="View {0}"  />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [UserMgnt] WHERE [Id] = @Id" InsertCommand="INSERT INTO [UserMgnt] ([name], [role]) VALUES (@name, @role)" SelectCommand="SELECT [Id], [name], [role] FROM [UserMgnt]" UpdateCommand="UPDATE [UserMgnt] SET [name] = @name, [role] = @role WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="role" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="role" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </div>
    </div>
</asp:Content>
