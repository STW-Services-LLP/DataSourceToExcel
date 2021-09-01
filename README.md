# DataSourceToExcel

# Version: ASP.NET 3.5


How to change the columns in aspx file:

<Columns>
<asp:BoundField DataField="your_column_field" HeaderText="your_column_name"></asp:BoundField>
</Columns>


-------------------------------------------------------------------------------------------------------------------------------------

## How to configure the database type in aspx file:

<asp:SqlDataSource ID="myDataSource" runat="server" 
                ConnectionString="<%$ ConnectionStrings:your_database %>" 
                SelectCommand="SELECT * FROM table_name ORDER BY name ASC"></asp:SqlDataSource>

-------------------------------------------------------------------------------------------------------------------------------------

## How to configure the connection string in web.config file:

mySQL
Driver={MySQL ODBC 3.51 Driver};Server=your_server_name;Database=your_database_name;User=your_user_name;Password=your_pwd;Option=3;

MS SQL SERVER
Data Source=your_server_name;Initial Catalog=your_database_name;User Id=your_user_name;Password=your_pwd;

Access
Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\your_bd.mdb


-------------------------------------------------------------------------------------------------------------------------------------
