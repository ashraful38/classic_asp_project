<%
'If Request.QueryString("submit") <> "" then
	' Connect to MySQL server
	Dim db_connection, conn, rs
	db_connection = "Provider=MSDASQL; DRIVER={SQL Server}; SERVER=ASHRAFUL_MIS; DATABASE=product1; Trusted_Connection=yes;"
	Set conn = Server.CreateObject("ADODB.Connection")
	conn.open(db_connection)

	' Get search parameters from the form
	Dim startDate, endDate
	startDate = Trim(Request.QueryString("start_date"))
	endDate = Trim(Request.QueryString("end_date"))

	' Validate dates (you can add more advanced validation if needed)
	If startDate = "" Or endDate = "" Then
		Response.Write("Please enter both start and end dates.")
		Response.End
	End If

	'Prepare the SQL query
	Dim strSQL
	strSQL = "SELECT ProductId, SupplierId, Qunatity FROM Purchase WHERE Date BETWEEN ('" & startDate & "') AND ('" & endDate & "');"
	Set rs = Server.CreateObject("ADODB.Recordset")
	'rs.CursorType = 1 ' adOpenStatic
	'rs.LockType = 3   ' adLockOptimistic
	'rs.Open strSQL, conn, 1, 3
	'rs.Open strSQL, conn, 1, 3
    rs=conn.execute(strSQL)
	
	' Set parameters and execute the query
	'rs.Parameters.Append rs.CreateParameter("@startDate", 7, 1, 10, CDate(startDate))
    'rs.Parameters.Append rs.CreateParameter("@endDate", 7, 1, 10, CDate(endDate))

	' Display search results
	If rs.EOF Then
		Response.Write("No records found for the given date range.")
	Else
		Response.Write("<h2>Search Results:</h2>")
		Response.Write("<table border='1'>")
		Response.Write("<tr><th>ProductId</th><th>SupplierId</th><th>Qunatity</th></tr>")
		
		Do While Not rs.EOF
			Response.Write("<tr>")
			Response.Write("<td>" & rs("ProductId") & "</td>")
			Response.Write("<td>" & rs("SupplierId") & "</td>")
			Response.Write("<td>" & rs("Qunatity") & "</td>")
			Response.Write("</tr>")
			rs.MoveNext
		Loop
		
		Response.Write("</table>")
	End If

	' Clean up and close connections
	rs.Close
	Set rs = Nothing
	conn.Close
	Set conn = Nothing
'END IF
%>
