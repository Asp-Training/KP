<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddProject.aspx.cs" Inherits="ProjectManagementProject.AddProject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [ProjectCreation] WHERE [Id] = @Id" InsertCommand="INSERT INTO [ProjectCreation] ([ProjectName], [ProjectInitials], [ProjectManager], [BeginDate], [EndDate]) VALUES (@ProjectName, @ProjectInitials, @ProjectManager, @BeginDate, @EndDate)" SelectCommand="SELECT * FROM [ProjectCreation]" UpdateCommand="UPDATE [ProjectCreation] SET [ProjectName] = @ProjectName, [ProjectInitials] = @ProjectInitials, [ProjectManager] = @ProjectManager, [BeginDate] = @BeginDate, [EndDate] = @EndDate WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProjectName" Type="String" />
            <asp:Parameter Name="ProjectInitials" Type="String" />
            <asp:Parameter Name="ProjectManager" Type="String" />
            <asp:Parameter DbType="Date" Name="BeginDate" />
            <asp:Parameter DbType="Date" Name="EndDate" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ProjectName" Type="String" />
            <asp:Parameter Name="ProjectInitials" Type="String" />
            <asp:Parameter Name="ProjectManager" Type="String" />
            <asp:Parameter DbType="Date" Name="BeginDate" />
            <asp:Parameter DbType="Date" Name="EndDate" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <table><tr><td> &nbsp;</td></tr></table>
   
    
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert">
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
            <h1> Create Project</h1>
            <table><tr><td>ProjectName:</td>
            <td><asp:TextBox ID="ProjectNameTextBox" runat="server" Text='<%# Bind("ProjectName") %>' CssClass="form-control"  /><td>
                <td>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="ProjectNameTextBox" CssClass="text-danger" ErrorMessage="Project Name is required." ForeColor="Red" /></td>
                </tr>
            <tr><td>
            ProjectInitials:</td>
          <td>  <asp:TextBox ID="ProjectInitialsTextBox" runat="server" Text='<%# Bind("ProjectInitials") %>' CssClass="form-control"/></td>
                <td>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="ProjectInitialsTextBox" CssClass="text-danger" ErrorMessage="Project Initials is required." ForeColor="Red" /></td>
            
            </tr>
            <tr><td>ProjectManager:</td>
            <td><asp:TextBox ID="ProjectManagerTextBox" runat="server" Text='<%# Bind("ProjectManager") %>' CssClass="form-control" /></td>
                <td>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="ProjectManagerTextBox" CssClass="text-danger" ErrorMessage="Project Manager is required." ForeColor="Red" /></td>
                </tr>
            <tr><td>BeginDate:</td>
           <td> <asp:TextBox ID="BeginDateTextBox" runat="server" Text='<%# Bind("BeginDate") %>' CssClass="form-control"/></td>       
            </tr>
            <tr><td>EndDate:</td>
            <td><asp:TextBox ID="EndDateTextBox" runat="server" Text='<%# Bind("EndDate") %>' CssClass="form-control"/></td>
                 
            </tr>
                <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js" type="text/javascript"></script>
                <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>
                <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="Stylesheet" type="text/css" />
                <script type="text/javascript">
                    $(function () {
                        $("[id$=BeginDateTextBox]").datepicker({

                            showOn: 'button',
                            buttonImageOnly: true,
                            buttonImage: 'calendar.gif',
                            dateFormat:"yy/mm/dd"
                        });
                        $("[id$=EndDateTextBox]").datepicker({

                            showOn: 'button',
                            buttonImageOnly: true,
                            buttonImage: 'calendar.gif',
                            dateFormat:"yy/mm/dd"
                        });
                    });
                </script>
           <td><asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="btn btn-primary" OnClientClick="script()"/></td>
            &nbsp;<td><asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-primary"/></td></tr></table>
            <script>
                function script() {
                    return confirm('Successfully Added');
                }
            </script>
       </InsertItemTemplate>
        <ItemTemplate>
            Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            ProjectName:
            <asp:Label ID="ProjectNameLabel" runat="server" Text='<%# Bind("ProjectName") %>' />
            <br />
            ProjectInitials:
            <asp:Label ID="ProjectInitialsLabel" runat="server" Text='<%# Bind("ProjectInitials") %>' />
            <br />
            ProjectManager:
            <asp:Label ID="ProjectManagerLabel" runat="server" Text='<%# Bind("ProjectManager") %>' />
            <br />
            BeginDate:
            <asp:Label ID="BeginDateLabel" runat="server" Text='<%# Bind("BeginDate") %>' />
            <br />
            EndDate:
            <asp:Label ID="EndDateLabel" runat="server" Text='<%# Bind("EndDate") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
     <asp:Label ID="MessageLabel" runat="server"></asp:Label>
    </asp:Content>
