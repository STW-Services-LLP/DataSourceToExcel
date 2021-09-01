<%@ Page Language="VB" AutoEventWireup="false" CodeFile="mysql.aspx.vb" Inherits="_mysql" EnableEventValidation="false" EnableViewState="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Excel Grid Generator</title>
    <link href="css/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    
    
    <table align="center" border="0">
    <tr>
    <td style="text-align:center;">
    <h1>EXCEL GRID GENERATOR</h1>
    It Works with XML, Access, SQL SERVER and mySQL
    <br /><br />
    
    </td>
    </tr>
    <tr>
    <td valign="top">
    
            <asp:GridView ID="myGrid" runat="server" CellPadding="10" ForeColor="#333333" 
                GridLines="None" BorderColor="Black" BorderStyle="Solid" 
                BorderWidth="1px"
                AutoGenerateColumns="False" ShowFooter="True"
                DataSourceID="myDataSource">
                <RowStyle BackColor="#EFF3FB" />
                <Columns>
                    <asp:BoundField DataField="name"  HeaderText="NAME" HeaderStyle-HorizontalAlign="Left">
<HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="phone" HeaderText="PHONE" HeaderStyle-HorizontalAlign="Left">
<HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="email" HeaderText="E-MAIL" HeaderStyle-HorizontalAlign="Left">
<HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="city"  HeaderText="CITY" HeaderStyle-HorizontalAlign="Left">
<HeaderStyle HorizontalAlign="Left"></HeaderStyle>
                    </asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#006600" Font-Bold="True" ForeColor="White" 
                    Font-Size="10px" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#339933" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
    
    
            <asp:SqlDataSource ID="myDataSource" runat="server" 
                ConnectionString="<%$ ConnectionStrings:mySQL %>" 
                ProviderName="<%$ ConnectionStrings:mySQL.ProviderName %>" 
                SelectCommand="SELECT * FROM client ORDER BY name ASC"></asp:SqlDataSource>
    
  
    </td>
    </tr>
     <tr>
    <td style="text-align:center;">
    <br />
    
        <asp:LinkButton ID="export" runat="server" ForeColor="Green" Font-Bold="True">Export to Excel</asp:LinkButton>
    
    </td>
    </tr>
    </table>
    
    
            
    </form>
</body>
</html>
