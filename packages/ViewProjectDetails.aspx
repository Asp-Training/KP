<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewProjectDetails.aspx.cs" Inherits="ProjectManagementProject.ViewProjectDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>View Project Details</h1>
    
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        
        
        <EditItemTemplate>
            Id:
            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            ProjectName:
            <asp:TextBox ID="ProjectNameTextBox" runat="server" Text='<%# Bind("ProjectName") %>' />
            <br />
            ProjectInitials:
            <asp:TextBox ID="ProjectInitialsTextBox" runat="server" Text='<%# Bind("ProjectInitials") %>' />
            <br />
            ProjectManager:
            <asp:TextBox ID="ProjectManagerTextBox" runat="server" Text='<%# Bind("ProjectManager") %>' />
            <br />
            BeginDate:
            <asp:TextBox ID="BeginDateTextBox" runat="server" Text='<%# Bind("BeginDate") %>' />
            <br />
            EndDate:
            <asp:TextBox ID="EndDateTextBox" runat="server" Text='<%# Bind("EndDate") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <h1> Project Details<h1>
            <table><tr><td>ProjectName:</td>
            <td><asp:TextBox ID="ProjectNameTextBox" runat="server" Text='<%# Bind("ProjectName") %>' CssClass="form-control" /></td>
            </tr>
            <tr><td></td>ProjectInitials:</td>
            <asp:TextBox ID="ProjectInitialsTextBox" runat="server" Text='<%# Bind("ProjectInitials") %>' CssClass="form-control" />
            </tr>
            <tr><td>ProjectManager:</td>
            <asp:TextBox ID="ProjectManagerTextBox" runat="server" Text='<%# Bind("ProjectManager") %>' CssClass="form-control" />
          </tr>
           <tr><td >BeginDate:</td>
            <asp:TextBox ID="BeginDateTextBox" runat="server" Text='<%# Bind("BeginDate") %>' CssClass="form-control" />
            </tr>
            <tr><td>EndDate:</td>
            <asp:TextBox ID="EndDateTextBox" runat="server" Text='<%# Bind("EndDate") %>' CssClass="form-control" />
           </tr>
            <tr><td><asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" /></td>
            &nbsp;<tr><td><asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" /></td></table>
        </InsertItemTemplate>
        <ItemTemplate>
            
            <table><tr><td>Id:</td>
           <td> <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>'  CssClass="form-control"/></td>
           </tr>
           <tr><td> ProjectName:</td>
           <td> <asp:Label ID="ProjectNameLabel" runat="server" Text='<%# Bind("ProjectName") %>'  CssClass="form-control"/></td>
            </tr>
            <tr><td>ProjectInitials:</td>
            <td><asp:Label ID="ProjectInitialsLabel" runat="server" Text='<%# Bind("ProjectInitials") %>'  CssClass="form-control"/></td>
           </tr>
            <tr><td>ProjectManager:</td>
            <td><asp:Label ID="ProjectManagerLabel" runat="server" Text='<%# Bind("ProjectManager") %>'  CssClass="form-control"/></td>
            </tr>
           <tr><td> BeginDate:</td>
            <td><asp:Label ID="BeginDateLabel" runat="server" Text='<%# Bind("BeginDate") %>'  CssClass="form-control"/></td>
           </tr>
            <tr><td>EndDate:</td>
            <td><asp:Label ID="EndDateLabel" runat="server" Text='<%# Bind("EndDate") %>'  CssClass="form-control"/></td></td></tr></table>
           

        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ProjectCreation]"></asp:SqlDataSource>
</asp:Content>
