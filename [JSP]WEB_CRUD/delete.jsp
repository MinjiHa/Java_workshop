<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%

String id = request.getParameter("ID");

Class.forName("oracle.jdbc.driver.OracleDriver");
String url = "jdbc:oracle:thin:@localhost:1521:orcl";
Connection conn = 
	DriverManager.getConnection(url,"tami","1234");

String str = "DELETE FROM EMPLOYEE WHERE ID=?";

PreparedStatement pstmt = conn.prepareStatement(str);
pstmt.setInt(1, Integer.parseInt(id));
pstmt.executeUpdate();

pstmt.close();
conn.close();
response.sendRedirect("list.jsp");

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>