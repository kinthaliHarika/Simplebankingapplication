<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%
	String id = request.getParameter("from_account");
	String driver = "com.mysql.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String database = "harika";
	String userid = "root";
	String pass = "Harika@579";
	try {
		Class.forName(driver);
	} catch (ClassNotFoundException e) {
	e.printStackTrace();
	}
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Latest Transactions</title>
<body style= "background-color:powderblue;">
</head>
<body>
<h2>Last 5 Transactions : </h2>
	<table>
	<tr>
	  <td>Transaction ID</td>
      <td>Date of Transaction</td>
      <td>Amount</td>
      <td>Account Number</td>
    </tr>
<%
	try{
	connection = DriverManager.getConnection(connectionUrl+database, userid, pass);
	statement=connection.createStatement();
	String sql ="select * from Transactiondetails order by Transactionid desc limit 5";
	resultSet = statement.executeQuery(sql);
	while(resultSet.next()){
%>
	<tr>
	  <td><%=resultSet.getString("Transactionid") %></td>
      <td><%=resultSet.getString("DateofTransaction") %></td>
      <td><%=resultSet.getString("Amount") %></td>
      <td><%=resultSet.getString("TransferredAccount") %></td>
    </tr>
<%
    }
    connection.close();
    } catch (Exception e) {
      e.printStackTrace();
    }
%>
</table>
</body>
</html>