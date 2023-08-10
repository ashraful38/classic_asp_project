<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="css/style.css">
  <style>
    .display{
	 text-align:center;
	 margin-left:500px;

	}
	.display table{
		border:1px solid blue;
		padding:4px;
		text-align:center;
	    
		border-collapse: collapse;
	}
	
	.display1{
	    border:1px solid blue;
		padding:4px;
		text-align:center;
		
		border-collapse: collapse;
		background:aqua;
		color:white;
	}
	
	.display td,th{
		border:1px solid blue;
		padding:4px;
		text-align:center;
		
		border-collapse: collapse;
	}

    tr:nth-child(2) {
      counter-reset: rowNumber;
	}
	table tr {
	  counter-increment: rowNumber;
	}
	table tr td:first-child::before {
	  content: counter(rowNumber);
	  
	}	
	
</style>
</head>
<body>
 <nav class="header">
    <h1 class="logo">Inventory Management</h1>
    <div>
	   	<ul class="ul-item">
			<li><a class="active" href="Home.asp">Home</a></li>
			<li><a href="ProductText1.asp">Product</a></li>
			<li><a href="Supplier.asp">Supplier</a></li>
			<li><a href="purchase1.asp">Purchase1</a></li>
	    </ul>
	</div>
	<div>
	   	<ul class="ul-right-item">
			<li><a href="#contact">login</a></li>
			<li><a href="Registration.asp">Registration</a></li>
	    </ul>
	</div>
 </nav>
 
<h3 style="color:blue;text-align:center;">Our Product</h3>
  
 <div class="display">
 
     <form  action="Supplier.asp">
	    
		 <table style="text-align:center;">
			 <tr class=display1>
			    <th>no</th>
				<th>ProductId</th>
		
				<th>ProductName</th>
			
				<th>Catagory</th>
			</tr>
			<% dim db_connection
				db_connection = "Provider=MSDASQL; DRIVER={SQL Server}; SERVER=ASHRAFUL_MIS; DATABASE=product1; Trusted_Connection=yes;"

				set conn = Server.CreateObject("ADODB.Connection")
				conn.open(db_connection)
				
				 ' Execute the stored procedure and retrieve the data as XML
					Set cmd = Server.CreateObject("ADODB.Command")
					cmd.ActiveConnection = conn
					cmd.CommandText = "viewproductlistXml3"
					cmd.CommandType = 4 ' adCmdStoredProc
					
					Set rs = cmd.Execute
				
				'set rs=conn.execute("viewproductlist1")
                ' dim x
				' do until rs.EOF
					' Response.Write("<tr>")
					  ' for each X in rs.Fields
						 ' Response.Write("<td>" & x.value & "</td>")
					  ' Next
					  
					' Response.write("</tr>")
					' rs.movenext
				' loop
				
				    ' Loop through the XML data and display it in the table
        While Not rs.EOF
            Set xmlDoc = Server.CreateObject("MSXML2.DOMDocument")
            xmlDoc.loadXML(rs.Fields(0).Value)
			
            
            Set nodes = xmlDoc.SelectNodes("//row")
            For Each node In nodes
                Response.Write "<tr>"
				

				Response.Write "<td>  </td>"
                Response.Write "<td>" & node.selectSingleNode("ProductId").Text & "</td>"
				
                Response.Write "<td>" & node.selectSingleNode("ProductName").Text & "</td>"
				
                Response.Write "<td>" & node.selectSingleNode("CatagoryName").Text & "</td>"
                Response.Write "</tr>"
            Next
            
            rs.MoveNext
        Wend
		
		  ' Clean up
        rs.Close
        Set rs = Nothing
        Set cmd = Nothing
        conn.Close
        Set conn = Nothing

		%>

		</table>
	</form>
 </div>

 
 
 <script text="text/javascript">
	function post() {
	  var pId = document.getElementById("pId").innerHTML;

	  alert(pId);
	}
</script>
</body>
</html>