<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><title>Enter to database</title></head>
<body>
<table>
<%@ page import="java.util.*" %>
<%@ page import="javax.sql.*;" %>
<% 

java.sql.Connection con;
java.sql.Statement stmt;
java.sql.ResultSet rs;
java.sql.PreparedStatement pst;
;

String connectionUrl = "jdbc:sqlserver://164.52.218.134:1433;databaseName=QDC;user=sa;password=Pione@123";

try{
	  con = java.sql.DriverManager.getConnection(connectionUrl); 
	   stmt = con.createStatement(); 
    String SQL = "select * from in_cds_prod_tmp where prodid = '1000049'";
     rs = stmt.executeQuery(SQL);

    // Iterate through the data in the result set and display it.
    while (rs.next()) {
        System.out.println(rs.getString("prodid") + " " + rs.getString("catid"));
    }
}
// Handle any errors that may have occurred.
catch (Exception e) {
    e.printStackTrace();
}

%>

</body>
</html>