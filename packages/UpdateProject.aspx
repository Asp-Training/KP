<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateProject.aspx.cs" Inherits="KPMA.UpdateProject" %>
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
    <h1>Update Or Delete Project</h1>
    <table class="table" width="100%"><tr><td>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="ProjectName" HeaderText="ProjectName" SortExpression="ProjectName" />
            <asp:BoundField DataField="ProjectInitials" HeaderText="ProjectInitials" SortExpression="ProjectInitials" />
            <asp:BoundField DataField="ProjectManager" HeaderText="ProjectManager" SortExpression="ProjectManager" />
            <asp:BoundField DataField="BeginDate" HeaderText="BeginDate" SortExpression="BeginDate" />
            <asp:BoundField DataField="EndDate" HeaderText="EndDate" SortExpression="EndDate" />
        </Columns>
    </asp:GridView>
       </td></tr> </table>
</asp:Content>
