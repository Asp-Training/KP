<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewProjectsaspx.aspx.cs" Inherits="ProjectManagementProject.ViewProjectsaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Projects </h1>
    <div>
       
        <table class="table" width="100%">
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ProjectCreation]" ></asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound" DataKeyNames="Id" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" InsertVisible="False" ReadOnly="True" />
                           
                            <asp:BoundField DataField="ProjectInitials" HeaderText="ProjectInitials" SortExpression="ProjectInitials" />
                          <asp:BoundField DataField="ProjectName" HeaderText="ProjectName" SortExpression="ProjectName" />
                            <asp:HyperLinkField DataTextField="ProjectInitials" DataNavigateUrlFields="Id" DataNavigateUrlFormatString="ViewProjectDetails.aspx?Id={0}" HeaderText="Details"  DataTextFormatString ="View {0}"  />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                   
                   <div class="btn-toolbar pull-right"><div class="btn-group"> <asp:Button ID="Button1" runat="server" Text="ADD" OnClientClick="window.open('AddProject.aspx', 'Add Project');" CssClass="btn btn-primary" /></div></div>
                         <div class="btn-toolbar pull-right"><div class="btn-group">  <asp:Button ID="Button2" runat="server" Text="UPDATE/DELETE" OnClientClick="window.open('UpdateProject.aspx', 'Update Project');" CssClass="btn btn-primary" />
                        </div></div></td>
            </tr>
        </table>
    </div>


</asp:Content>
