<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Transfer Page</title>
<body style= "background-color:powderblue;">
</head>
<body>
<h1 align="center"><strong>Welcome to online banking</strong></h1><br><br>
     <h2 align="center"><font><strong>Transfer Amount Rs.1000 </strong></font></h2>
     <form method="get" action="Transfer2.jsp">
        <table align="center" cellpadding="5" cellspacing="5" border="1">
        <tr>
          <td><strong>From A/C</strong></td>
          <td><input type="text" readonly value="32178456" name="from_account"/></td>
        </tr>
        <tr>
          <td><strong>To A/C</strong></td>
          <td><input type="text" readonly value="58963413" name="to_account"/></td>
        </tr> 
        <tr>
          <td  colspan="2" align="center"><input type="submit" name="submit" style="width:150px" value="Transfer Now"/></td>
        </tr>

        </table>
     </form>




</body>
</html>