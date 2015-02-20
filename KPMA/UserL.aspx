<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserL.aspx.cs" Inherits="KPMA.UserL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
    <h2 class="page-header">List of Users</h2>
    <div class="col-md-6">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" CssClass="table">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:TemplateField HeaderText="Name" SortExpression="name">
                <ItemTemplate>
                    <asp:HyperLink ID="Label1" NavigateUrl='<%# "ViewUserDetails.aspx?Id=" + Eval("Id") %>' runat="server" Text='<%# Bind("name") %>'></asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="role" HeaderText="Role" SortExpression="role" />
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
    <div class="col-md-6">
         <div class='btn-toolbar pull-right'>
            <div class='btn-group'>
                <a href="AddUser.aspx" class='btn btn-primary'>Add User</a>
            </div>
         </div>
    </div>
    </div>
</asp:Content>
