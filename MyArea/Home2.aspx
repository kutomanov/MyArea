<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home2.aspx.cs" Inherits="MyArea.Home2" %>

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
            height: 174px;
            width: 1103px;
        }
        .auto-style8 {
            height: 87px;
        }
        .auto-style9 {
            width: 89%;
        }
        .auto-style10 {
            text-align: left;
        }
        .auto-style11 {
            width: 648px;
        }
        .auto-style12 {
            width: 100%;
            height: 76px;
        }
        .auto-style16 {
            width: 204px;
        }
        .auto-style17 {
            width: 92px;
        }
        .auto-style18 {
            width: 107px;
        }
        .auto-style19 {
            width: 78px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style2">
    
        <h4>
            <table class="auto-style9">
                <tr>
                    <td class="auto-style11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Добро пожаловать в личный кабинет user2"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Выход" Width="66px" />
                    </td>
                </tr>
            </table>
        </h4>
    
    </div>
    <div>
    
        <h3 class="auto-style6">
            Детализация расходов</h3>
    
    </div>
        <div class="auto-style7">
            <div class="auto-style2">
                <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource2" Width="731px">
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:test1ConnectionString %>" DeleteCommand="DELETE FROM [us2] WHERE [Id] = @Id" InsertCommand="INSERT INTO [us2] ([Id], [data], [oper], [summ]) VALUES (@Id, @data, @oper, @summ)" SelectCommand="SELECT * FROM [us2]" UpdateCommand="UPDATE [us2] SET [data] = @data, [oper] = @oper, [summ] = @summ WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="data" />
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
                <table class="auto-style12">
                    <tr>
                        <td class="auto-style18">
                <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Height="23px" Width="85px" AutoPostBack="True">
                    <asp:ListItem Value="месяц">месяц</asp:ListItem>
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
                        </td>
                        <td class="auto-style17">
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" Height="33px" Width="87px">
                                <asp:ListItem>доход</asp:ListItem>
                                <asp:ListItem>расход</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td class="auto-style19">
                <asp:Button ID="Button2" runat="server" Text="Итог" Width="66px" OnClick="Button2_Click" Height="25px" />
                        </td>
                        <td class="auto-style16">
                <asp:TextBox ID="TextBox5" runat="server" ReadOnly="True" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
                        </td>
                        <td>&nbsp;<asp:Label ID="Label5" runat="server" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
                &nbsp;<br />
                &nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
        </div>
    </form>
</body>
</html>
