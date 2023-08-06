<%@ Language=VBScript %>
<!DOCTYPE html>
<html>
<head>
    <title>Product Purchase List Search</title>
	 <style>
	 table{
		border:1px solid blue;
		padding:4px;
		text-align:center;
		margin-left:10px;
		border-collapse: collapse;
	}
	
	 th,td{
		border:1px solid blue;
		padding:4px;
		text-align:center;
		margin-left:10px;
		border-collapse: collapse;
	}	
	
</style>
</head>
<body>
    <h1>Product Purchase List Search</h1>
    <form method="GET" action="psearch.asp">
        Start Date: <input type="date" name="start_date">
        End Date: <input type="date" name="end_date">
        <input type="submit" value="Search">
    </form>
	<br>

    <% 
    ' Check if the form has been submitted
    If Request.ServerVariables("REQUEST_METHOD") = "GET" Then
        Dim start_date, end_date
        start_date = Request.QueryString("start_date")
        end_date = Request.QueryString("end_date")

        ' Connect to MySQL database
       ' Connect to MySQL server
		Dim db_connection, conn, rs
		db_connection = "Provider=MSDASQL; DRIVER={SQL Server}; SERVER=ASHRAFUL_MIS; DATABASE=product1; Trusted_Connection=yes;"
		Set conn = Server.CreateObject("ADODB.Connection")
		conn.open(db_connection)

        ' Prepare the SQL query
        Dim sql
        sql = "SELECT * FROM Purchase WHERE Date BETWEEN '" & start_date & "' AND '" & end_date & "';"
	

        ' Execute the query
        Set rs = conn.Execute(sql)

        ' Display the results
        If rs.EOF Then
            Response.Write("<p>No purchases found between the specified dates.</p>")
        Else
            Response.Write("<table>")
            Response.Write("<tr><th>pID</th><th>Product Name</th><th>Product Name</th><th>Product Name</th><th>Purchase Date</th></tr>")
            Do While Not rs.EOF
                Response.Write("<tr>")
                Response.Write("<td>" & rs("PurchaseId") & "</td>")
                Response.Write("<td>" & rs("ProductId") & "</td>")
				Response.Write("<td>" & rs("SupplierId") & "</td>")
				Response.Write("<td>" & rs("Color") & "</td>")
				Response.Write("<td>" & rs("Date") & "</td>")
                Response.Write("</tr>")
                rs.MoveNext
            Loop
            Response.Write("</table>")
        End If

        ' Clean up
        rs.Close
        Set rs = Nothing
        conn.Close
        Set conn = Nothing
    End If
    %>
</body>
</html>