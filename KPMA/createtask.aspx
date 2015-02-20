<%@ Page Title="CreateTask" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="createtask.aspx.cs" Inherits="KatalytiPMA.createtask" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Task] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Task] ([task_name], [description], [assigned_to], [begin_date], [end_date], [milestone], [project], [status], [notes]) VALUES (@task_name, @description, @assigned_to, @begin_date, @end_date, @milestone, @project, @status, @notes)" SelectCommand="SELECT * FROM [Task]" UpdateCommand="UPDATE [Task] SET [task_name] = @task_name, [description] = @description, [assigned_to] = @assigned_to, [begin_date] = @begin_date, [end_date] = @end_date, [milestone] = @milestone, [project] = @project, [status] = @status, [notes] = @notes WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="task_name" Type="String" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="assigned_to" Type="String" />
            <asp:Parameter DbType="Date" Name="begin_date" />
            <asp:Parameter DbType="Date" Name="end_date" />
            <asp:Parameter Name="milestone" Type="String" />
            <asp:Parameter Name="project" Type="String" />
            <asp:Parameter Name="status" Type="String" />
            <asp:Parameter Name="notes" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="task_name" Type="String" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="assigned_to" Type="String" />
            <asp:Parameter DbType="Date" Name="begin_date" />
            <asp:Parameter DbType="Date" Name="end_date" />
            <asp:Parameter Name="milestone" Type="String" />
            <asp:Parameter Name="project" Type="String" />
            <asp:Parameter Name="status" Type="String" />
            <asp:Parameter Name="notes" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ProjectCreation]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Milestone] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Milestone] ([milestone_name]) VALUES (@milestone_name)" SelectCommand="SELECT * FROM [Milestone]" UpdateCommand="UPDATE [Milestone] SET [milestone_name] = @milestone_name WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="milestone_name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="milestone_name" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [UserMgnt]"></asp:SqlDataSource>
    

    
    

    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Status] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Status] ([status_value]) VALUES (@status_value)" SelectCommand="SELECT * FROM [Status]" UpdateCommand="UPDATE [Status] SET [status_value] = @status_value WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="status_value" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="status_value" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    

    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert">
        <EditItemTemplate>
            Id:
            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            task_name:
            <asp:TextBox ID="task_nameTextBox" runat="server" Text='<%# Bind("task_name") %>' />
            <br />
            description:
            <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
            <br />
            assigned_to:
            <asp:TextBox ID="assigned_toTextBox" runat="server" Text='<%# Bind("assigned_to") %>' />
            <br />
            begin_date:
            <asp:TextBox ID="begin_dateTextBox" runat="server" Text='<%# Bind("begin_date") %>' />
            <br />
            end_date:
            <asp:TextBox ID="end_dateTextBox" runat="server" Text='<%# Bind("end_date") %>' />
            <br />
            milestone:
            <asp:TextBox ID="milestoneTextBox" runat="server" Text='<%# Bind("milestone") %>' />
            <br />
            project:
            <asp:TextBox ID="projectTextBox" runat="server" Text='<%# Bind("project") %>' />
            <br />
            status:
            <asp:TextBox ID="statusTextBox" runat="server" Text='<%# Bind("status") %>' />
            <br />
            notes:
            <asp:TextBox ID="notesTextBox" runat="server" Text='<%# Bind("notes") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <h1>Create Task</h1>
            <table>
                <tr>
                    <td>Task Name:</td>
                    <td>
                        <asp:TextBox ID="task_nameTextBox" runat="server" Text='<%# Bind("task_name") %>' CssClass="form-control" />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="task_nameTextBox" CssClass="text-danger" ErrorMessage="Task Name is required." ForeColor="Red" /></td>
                </tr>
                <tr>
                    <td>Description:</td>
                    <td>
                        <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' CssClass="form-control" />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="descriptionTextBox" CssClass="text-danger" ErrorMessage="Description is required." ForeColor="Red" /></td>
                </tr>
                <tr>
                    <td>Assigned to:</td>
                    <td>
                       <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource5" Text='<%# Bind("milestone") %>' DataTextField="name" DataValueField="name" CssClass="form-control">
    </asp:DropDownList>
                    </td>
                            </tr>
                <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js" type="text/javascript"></script>
                <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>
                <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="Stylesheet" type="text/css" />
                <script type="text/javascript">
                    $(function () {
                        $("[id$=begin_dateTextBox]").datepicker({
                            showOn: 'button',
                            buttonImageOnly: true,
                            buttonImage: 'calendar.gif'
                        });
                        $("[id$=end_dateTextBox]").datepicker({
                            showOn: 'button',
                            buttonImageOnly: true,
                            buttonImage: 'calendar.gif'
                        });
                    });
                </script>
                <tr>
                    <td>Begin Date:</td>
                    <td>
                        <asp:TextBox ID="begin_dateTextBox" runat="server" Text='<%# Bind("begin_date") %>' CssClass="form-control" />
                    </td>
                </tr>
                <tr>
                    <td>End Date:</td>
                    <td>
                        <asp:TextBox ID="end_dateTextBox" runat="server" Text='<%# Bind("end_date") %>' CssClass="form-control" />
                    </td>
                </tr>
                <tr>
                    <td>Milestone:</td>
                    <td>
                       <asp:DropDownList ID="DropDownList1" runat="server"  DataSourceID="SqlDataSource2" Text='<%# Bind("milestone") %>' DataTextField="milestone_name" DataValueField="milestone_name" CssClass="form-control">
    </asp:DropDownList> 
                    </td>
                </tr>
                <tr>
                    <td>Project:</td>
                    <td>
                       <asp:DropDownList ID="DropDownList3" runat="server"  DataSourceID="SqlDataSource4" Text='<%# Bind("project") %>' DataTextField="ProjectName" DataValueField="ProjectName" CssClass="form-control">
    </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Status:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" Text='<%# Bind("status") %>' DataTextField="status_value" DataValueField="status_value" CssClass="form-control">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Notes:</td>
                    <td>
                        <asp:TextBox ID="notesTextBox" runat="server" Text='<%# Bind("notes") %>' CssClass="form-control" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="btn btn-primary" /></td>
                    &nbsp;<td>
                        <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-primary" /></td>
                </tr>
            </table>
        </InsertItemTemplate>
        <ItemTemplate>
            Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            task_name:
            <asp:Label ID="task_nameLabel" runat="server" Text='<%# Bind("task_name") %>' />
            <br />
            description:
            <asp:Label ID="descriptionLabel" runat="server" Text='<%# Bind("description") %>' />
            <br />
            assigned_to:
            <asp:Label ID="assigned_toLabel" runat="server" Text='<%# Bind("assigned_to") %>' />
            <br />
            begin_date:
            <asp:Label ID="begin_dateLabel" runat="server" Text='<%# Bind("begin_date") %>' />
            <br />
            end_date:
            <asp:Label ID="end_dateLabel" runat="server" Text='<%# Bind("end_date") %>' />
            <br />
            milestone:
            <asp:Label ID="milestoneLabel" runat="server" Text='<%# Bind("milestone") %>' />
            <br />
            project:
            <asp:Label ID="projectLabel" runat="server" Text='<%# Bind("project") %>' />
            <br />
            status:
            <asp:Label ID="statusLabel" runat="server" Text='<%# Bind("status") %>' />
            <br />
            notes:
            <asp:Label ID="notesLabel" runat="server" Text='<%# Bind("notes") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
</asp:Content>
