<%@ Page Language="C#" Debug="true" %>
<%@ Import Namespace="System.Data" %>
<%@ Import namespace="System.Data.SqlClient"  %>
<!DOCTYPE html>
<script runat="server">
     private DataSet resSet=new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        String strconn = "server=.;database=guest;uid=sa;pwd=sa";
        string id = Request.Params["id"];
        string sql = string.Format("select * from [user] where id ={0}", id);
        SqlConnection connection=new SqlConnection(strconn);
        connection.Open();
        SqlDataAdapter dataAdapter = new SqlDataAdapter(sql, connection);
        dataAdapter.Fill(resSet);
        DgData.DataSource = resSet.Tables[0];
        DgData.DataBind();
        Response.Write("执行语句:<br>"+sql);
        Response.Write("<br>结果为:");
    }

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DataGrid ID="DgData" runat="server" BackColor="White" BorderColor="#3366CC" 
            BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                HeaderStyle-CssClass="head" Width="203px">
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <SelectedItemStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" 
                Mode="NumericPages" />
            <ItemStyle BackColor="White" ForeColor="#003399" />
<HeaderStyle CssClass="head" BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF"></HeaderStyle>
        </asp:DataGrid>
    
    </div>
    </form>
</body>
</html>