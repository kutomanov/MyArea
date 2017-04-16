<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="MyArea.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            font-family: Verdana;
            font-size: large;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style6 {
            text-align: center;
            width: 760px;
        }
        .auto-style7 {
            height: 182px;
            width: 1103px;
        }
        .auto-style8 {
            height: 44px;
        }
        .auto-style9 {
            text-align: center;
            width: 731px;
        }
        .auto-style10 {
            width: 100%;
        }
        .auto-style11 {
            text-align: right;
        }
        .auto-style13 {
            width: 655px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h4 class="auto-style9">
            <table class="auto-style10">
                <tr>
                    <td class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Добро пожаловать в личный кабинет user1"></asp:Label>
                    </td>
                    <td class="auto-style11">
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Выход" Width="76px" />
                    </td>
                </tr>
            </table>
        </h4>
        <h3 class="auto-style6">
            Детализация расходов</h3>
    
    </div>
        <div class="auto-style7">
            <div class="auto-style2">
                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="730px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="№ п/п" ReadOnly="True" SortExpression="Id" Visible="False" />
                        <asp:BoundField DataField="data" HeaderText="Дата" SortExpression="data" DataFormatString="{0:d}" />
                        <asp:BoundField DataField="oper" HeaderText="Операция" SortExpression="oper" />
                        <asp:BoundField DataField="summ" HeaderText="Сумма" SortExpression="summ" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:test1ConnectionString %>" DeleteCommand="DELETE FROM [us1] WHERE [Id] = @Id" InsertCommand="INSERT INTO [us1] ([data], [oper], [summ]) VALUES (@data, @oper, @summ)" SelectCommand="SELECT * FROM [us1]" UpdateCommand="UPDATE [us1] SET [data] = @data, [oper] = @oper, [summ] = @summ WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="data" DbType="Date" />
                    <asp:Parameter Name="oper" Type="String" />
                    <asp:Parameter Name="summ" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter DbType="Date" Name="data" />
                    <asp:Parameter Name="oper" Type="String" />
                    <asp:Parameter Name="summ" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Дата"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox2" runat="server" Width="85px"></asp:TextBox>
&nbsp;<asp:Label ID="Label3" runat="server" Text="Операция"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox3" runat="server" Width="287px"></asp:TextBox>
&nbsp;<asp:Label ID="Label4" runat="server" Text="Сумма"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox4" runat="server" Width="75px"></asp:TextBox>
&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Добавить" Width="78px" OnClick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <div class="auto-style8">
                <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Height="23px" Width="85px" AutoPostBack="True">
                    <asp:ListItem>месяц</asp:ListItem>
                    <asp:ListItem Value="01">январь</asp:ListItem>
                    <asp:ListItem Value="02">февраль</asp:ListItem>
                    <asp:ListItem Value="03">март</asp:ListItem>
                    <asp:ListItem Value="04">апрель</asp:ListItem>
                    <asp:ListItem Value="05">май</asp:ListItem>
                    <asp:ListItem Value="06">июнь</asp:ListItem>
                    <asp:ListItem Value="07">июль</asp:ListItem>
                    <asp:ListItem Value="08">август</asp:ListItem>
                    <asp:ListItem Value="09">сентябрь</asp:ListItem>
                    <asp:ListItem Value="10">октябрь</asp:ListItem>
                    <asp:ListItem Value="11">ноябрь</asp:ListItem>
                    <asp:ListItem Value="12">декабрь</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Height="23px" Width="85px" AutoPostBack="True">
                    <asp:ListItem Value="0">операция</asp:ListItem>
                    <asp:ListItem Value="1">расход</asp:ListItem>
                    <asp:ListItem Value="2">доход</asp:ListItem>
                    <asp:ListItem Value="3">сальдо</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Итог" Width="66px" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox5" runat="server" ReadOnly="True" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" ForeColor="Red"></asp:Label>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </div>
            <br />
        </div>
    </form>
</body>
</html>
