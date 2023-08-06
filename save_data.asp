<%
' Retrieve the posted JSON data
Dim tableDataJSON
tableDataJSON = Request("tableData")

' Convert JSON to an array of arrays
Dim tableData
Set jsonConverter = Server.CreateObject("MSScriptControl.ScriptControl")
jsonConverter.Language = "JScript"
tableData = jsonConverter.Eval("(" + tableDataJSON + ")")

For Each row In tableData
  Dim firstName, lastName, email
  firstName = row(0)
  lastName = row(1)
  email = row(2)
  
  Response.Write(firstName)
  
  Next
%>