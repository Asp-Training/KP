<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserDetails.aspx.cs" Inherits="KPMA.UserDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <Columns>
           
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="email_id" HeaderText="email_id" SortExpression="email_id" />
            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
            <asp:BoundField DataField="role" HeaderText="role" SortExpression="role" />
            <asp:CheckBoxField DataField="active" HeaderText="active" SortExpression="active" />
             <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [UserMgnt] WHERE [Id] = @Id" InsertCommand="INSERT INTO [UserMgnt] ([name], [email_id], [password], [role], [active]) VALUES (@name, @email_id, @password, @role, @active)" SelectCommand="SELECT * FROM [UserMgnt]" UpdateCommand="UPDATE [UserMgnt] SET [name] = @name, [email_id] = @email_id, [password] = @password, [role] = @role, [active] = @active WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="email_id" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="role" Type="String" />
            <asp:Parameter Name="active" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="email_id" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="role" Type="String" />
            <asp:Parameter Name="active" Type="Boolean" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
