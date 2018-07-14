<%
id = Request.QueryString("id")
response.write(id)

set conn=Server.CREATEOBJECT("ADODB.CONNECTION") 
DBPath = Server.MapPath("user.mdb") 
conn.Open "driver={Microsoft Access Driver (*.mdb)};dbq=" & DBPath 
sql="select * from admin where users='" & id & "'"

response.write sql

set rs=server.createobject("adodb.recordset") 
rs.open sql,conn,1,1
do while not rs.eof
response.write(rs("pass"))
rs.movenext
loop
conn.close
set rs=nothing
set conn=nothing
%>
