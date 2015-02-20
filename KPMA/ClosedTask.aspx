<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClosedTask.aspx.cs" Inherits="KPMA.ClosedTask" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Task] WHERE ([status] = @status)">
    <SelectParameters>
        <asp:Parameter DefaultValue="completed" Name="status" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
    <h2><u>Closed Tasks</u></h2><br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="task_name" HeaderText="Task name" SortExpression="task_name" />
            <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
            <asp:BoundField DataField="assigned_to" HeaderText="Assigned to" SortExpression="assigned_to" />
            <asp:BoundField DataField="begin_date" HeaderText="Begin date" SortExpression="begin_date" />
            <asp:BoundField DataField="end_date" HeaderText="End date" SortExpression="end_date" />
            <asp:BoundField DataField="milestone" HeaderText="Milestone" SortExpression="milestone" />
            <asp:BoundField DataField="project" HeaderText="Project" SortExpression="project" />
            <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
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
</asp:Content>
