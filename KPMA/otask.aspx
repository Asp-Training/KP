<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="otask.aspx.cs" Inherits="KPMA.otask" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="task_name" HeaderText="Task Name" SortExpression="task_name" />
            <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
            <asp:TemplateField HeaderText="assigned_to" SortExpression="assigned_to">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="name" SelectedValue='<%# Bind("assigned_to") %>'>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("assigned_to") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="begin_date" HeaderText="Begin Date" SortExpression="begin_date" />
            <asp:BoundField DataField="end_date" HeaderText="End Date" SortExpression="end_date" />
            <asp:TemplateField HeaderText="milestone" SortExpression="milestone">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="milestone_name" DataValueField="milestone_name" SelectedValue='<%# Bind("milestone") %>'>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("milestone") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="project" HeaderText="Project" SortExpression="project" />
            <asp:TemplateField HeaderText="status" SortExpression="status">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource4" DataTextField="status_value" DataValueField="status_value" SelectedValue='<%# Bind("status") %>'>
                    </asp:DropDownList>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("status") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="notes" HeaderText="Notes" SortExpression="notes" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Task] WHERE [Id] = @original_Id AND [task_name] = @original_task_name AND [description] = @original_description AND [assigned_to] = @original_assigned_to AND [begin_date] = @original_begin_date AND [end_date] = @original_end_date AND [milestone] = @original_milestone AND [project] = @original_project AND [status] = @original_status AND [notes] = @original_notes" InsertCommand="INSERT INTO [Task] ([task_name], [description], [assigned_to], [begin_date], [end_date], [milestone], [project], [status], [notes]) VALUES (@task_name, @description, @assigned_to, @begin_date, @end_date, @milestone, @project, @status, @notes)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Task] WHERE ([status] NOT LIKE '%' + @status + '%')" UpdateCommand="UPDATE [Task] SET [task_name] = @task_name, [description] = @description, [assigned_to] = @assigned_to, [begin_date] = @begin_date, [end_date] = @end_date, [milestone] = @milestone, [project] = @project, [status] = @status, [notes] = @notes WHERE [Id] = @original_Id AND [task_name] = @original_task_name AND [description] = @original_description AND [assigned_to] = @original_assigned_to AND [begin_date] = @original_begin_date AND [end_date] = @original_end_date AND [milestone] = @original_milestone AND [project] = @original_project AND [status] = @original_status AND [notes] = @original_notes">
        <DeleteParameters>
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_task_name" Type="String" />
            <asp:Parameter Name="original_description" Type="String" />
            <asp:Parameter Name="original_assigned_to" Type="String" />
            <asp:Parameter DbType="Date" Name="original_begin_date" />
            <asp:Parameter DbType="Date" Name="original_end_date" />
            <asp:Parameter Name="original_milestone" Type="String" />
            <asp:Parameter Name="original_project" Type="String" />
            <asp:Parameter Name="original_status" Type="String" />
            <asp:Parameter Name="original_notes" Type="String" />
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
        <SelectParameters>
            <asp:Parameter DefaultValue="completed" Name="status" Type="String" />
        </SelectParameters>
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
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_task_name" Type="String" />
            <asp:Parameter Name="original_description" Type="String" />
            <asp:Parameter Name="original_assigned_to" Type="String" />
            <asp:Parameter DbType="Date" Name="original_begin_date" />
            <asp:Parameter DbType="Date" Name="original_end_date" />
            <asp:Parameter Name="original_milestone" Type="String" />
            <asp:Parameter Name="original_project" Type="String" />
            <asp:Parameter Name="original_status" Type="String" />
            <asp:Parameter Name="original_notes" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
    <asp:SqlDataSource ID="SqlDataSource5" runat="server"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [status_value] FROM [Status]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [milestone_name] FROM [Milestone]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [name] FROM [UserMgnt]"></asp:SqlDataSource>
    
</asp:Content>
