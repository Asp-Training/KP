<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="KPMA.AddUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert">
        <EditItemTemplate>
            Id:
            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            name:
            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
            <br />
            email_id:
            <asp:TextBox ID="email_idTextBox" runat="server" Text='<%# Bind("email_id") %>' />
            <br />
            password:
            <asp:TextBox ID="passwordTextBox" runat="server" Text='<%# Bind("password") %>' />
            <br />
            role:
            <asp:TextBox ID="roleTextBox" runat="server" Text='<%# Bind("role") %>' />
            <br />
            active:
            <asp:CheckBox ID="activeCheckBox" runat="server" Checked='<%# Bind("active") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <h2>Add new Users</h2>
            Name:
            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
            <br />
            Email_id:
            <asp:TextBox ID="email_idTextBox" runat="server" Text='<%# Bind("email_id") %>' />
            <br />
            Password:
            <asp:TextBox ID="passwordTextBox" runat="server" Text='<%# Bind("password") %>' />
            <br />
            Role:
            <asp:TextBox ID="roleTextBox" runat="server" Text='<%# Bind("role") %>' />
            <br />
            Active:
            <asp:CheckBox ID="activeCheckBox" runat="server" Checked='<%# Bind("active") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            
            Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            name:
            <asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' />
            <br />
            email_id:
            <asp:Label ID="email_idLabel" runat="server" Text='<%# Bind("email_id") %>' />
            <br />
            password:
            <asp:Label ID="passwordLabel" runat="server" Text='<%# Bind("password") %>' />
            <br />
            role:
            <asp:Label ID="roleLabel" runat="server" Text='<%# Bind("role") %>' />
            <br />
            active:
            <asp:CheckBox ID="activeCheckBox" runat="server" Checked='<%# Bind("active") %>' Enabled="false" />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
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
