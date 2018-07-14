<%
id = Request.QueryString("id")
//response.write(id)

set conn=Server.CREATEOBJECT("ADODB.CONNECTION") 
DBPath = Server.MapPath("id.mdb") 
conn.Open "driver={Microsoft Access Driver (*.mdb)};dbq=" & DBPath 
sql="select * from admin where id=" & id
sql1="select * from admin where id=1 /*1222*/ and 1=1" 

response.write(sql)

set rs=server.createobject("adodb.recordset") 
rs.open sql,conn,1,1
do while not rs.eof
response.write(rs("users"))
rs.movenext
loop
conn.close
set rs=nothing
set conn=nothing
%>
