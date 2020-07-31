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
	int amount=1000;
	int toAccount=0;
	int availableBal=0;
	connection = DriverManager.getConnection(connectionUrl+database, userid, pass);
	statement=connection.createStatement();
	PreparedStatement pstatement = null;
	 int updateQuery = 0;
	String  sql = "select * from  Accounts where Accountno= 32178456";
	 resultSet = statement.executeQuery(sql);
     while(resultSet.next()){
	     availableBal = Integer.parseInt(resultSet.getString("Balance")) - amount ; 
	     String queryStringDec = "UPDATE  Accounts set balance='"+availableBal+"' where Accountno=66863413";
	 pstatement = connection.prepareStatement(queryStringDec);
	 updateQuery = pstatement.executeUpdate();
     }
     out.println("<h1 align=center>Current balance :" +availableBal);
     %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Balance</title>

</head>
<body>
</body>
</html>