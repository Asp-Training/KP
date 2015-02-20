<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="KPMA.AddUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert" RenderOuterTable="False">
        <EditItemTemplate>
            Id:
                        <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            Name:
                        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
            Email_id:
                        <asp:TextBox ID="email_idTextBox" runat="server" Text='<%# Bind("email_id") %>' />
            Password:
                        <asp:TextBox ID="passwordTextBox" runat="server" Text='<%# Bind("password") %>' />
            Role:
                        <asp:TextBox ID="roleTextBox" runat="server" Text='<%# Bind("role") %>' />
            Active:
                        <asp:CheckBox ID="activeCheckBox" runat="server" Checked='<%# Bind("active") %>' />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />

        </EditItemTemplate>
        <InsertItemTemplate>
            <h2 class="page-header">Add New Users</h2>
            <table>
                <tr>
                    <td>Name:</td>
                    <td>
                        <asp:TextBox ID="nameTextBox" runat="server" CssClass="form-control" Text='<%# Bind("name") %>' /></td>
                    <td>
                        <asp:RequiredFieldValidator CssClass="text-danger" runat="server" ID="reqName" ControlToValidate="nameTextBox" ErrorMessage="Please enter name!" /></td>
                      <td><asp:RegularExpressionValidator ID="regName" runat="server" 
       ControlToValidate="nameTextBox" Cssclass="text-danger"
       ValidationExpression="^[a-zA-Z'.\s]{1,50}"
       Text="Enter a valid name" /> </td>
                </tr>

                <tr>
                    <td>Email_id:</td>
                    <td>
                        <asp:TextBox ID="email_idTextBox" runat="server" CssClass="form-control" Text='<%# Bind("email_id") %>' /></td>

                    <td>
                        <asp:RequiredFieldValidator CssClass="text-danger" runat="server" ID="RequiredFieldValidator1" ControlToValidate="email_idTextBox" ErrorMessage="Please enter email id!" /></td>
                <td><asp:RegularExpressionValidator  CssClass="text-danger" ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email_idTextBox" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
                </td></tr>

                <tr>
                    <td>Password:</td>
                    <td>
                        <asp:TextBox TextMode="password" CssClass="form-control" ID="passwordTextBox" runat="server" Text='<%# Bind("password") %>' />
                    </td>
                     <td>
                        <asp:RequiredFieldValidator CssClass="text-danger" runat="server" ID="RequiredFieldValidator3" ControlToValidate="roleTextBox" ErrorMessage="Please enter Password!" /></td>
                </tr>
                <tr>
                    <td>Role:</td>
                    <td>
                        <asp:TextBox ID="roleTextBox" runat="server" CssClass="form-control" Text='<%# Bind("role") %>' /></td>

                    <td>
                        <asp:RequiredFieldValidator CssClass="text-danger" runat="server" ID="RequiredFieldValidator2" ControlToValidate="roleTextBox" ErrorMessage="Please enter Role!" /></td>
                </tr>
                <tr>
                    <td>Active:</td>
                    <td>
                        <asp:CheckBox ID="activeCheckBox" runat="server" Checked='<%# Bind("active") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton ID="InsertButton" CssClass="btn btn-primary" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" /></td>
                    <td>
                        <asp:LinkButton ID="InsertCancelButton" CssClass="btn btn-default" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" /></td>
                </tr>

            </table>
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
