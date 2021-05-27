<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Quiz20210525.aspx.cs" Inherits="Quiz.Quiz20210525" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="sds_Stu" runat="server" ConnectionString="<%$ ConnectionStrings:SQLDataSourceCom %>" DeleteCommand="DELETE FROM [Stu] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Stu] ([Id], [Name], [Chi], [Math], [Eng]) VALUES (@Id, @Name, @Chi, @Math, @Eng)" SelectCommand="SELECT * FROM [Stu]" UpdateCommand="UPDATE [Stu] SET [Name] = @Name, [Chi] = @Chi, [Math] = @Math, [Eng] = @Eng WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Chi" Type="Int32" />
                    <asp:Parameter Name="Math" Type="Int32" />
                    <asp:Parameter Name="Eng" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Chi" Type="Int32" />
                    <asp:Parameter Name="Math" Type="Int32" />
                    <asp:Parameter Name="Eng" Type="Int32" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="gv_Show" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="sds_Stu" OnRowCommand="gv_Show_RowCommand">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Chi" HeaderText="Chi" SortExpression="Chi" />
                    <asp:BoundField DataField="Math" HeaderText="Math" SortExpression="Math" />
                    <asp:BoundField DataField="Eng" HeaderText="Eng" SortExpression="Eng" />
                    <asp:ButtonField ButtonType="Button" CommandName="Add" Text="運算" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
            <asp:Label ID="lb_Show" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
