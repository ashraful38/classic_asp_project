<%
  Dim  productsData, productName, productPrice



  Set productsData = Request.Form("products")

  For Each product In productsData
    productName = product("name")
    productPrice = product("price")
	Response.Write(productName)
    ' Add SQL insert query here to insert the product into the database
    ' Example: cmd.Execute "INSERT INTO Products (ProductName, Price) VALUES ('" & productName & "', " & productPrice & ")"
  Next

  conn.Close
  Set conn = Nothing
%>