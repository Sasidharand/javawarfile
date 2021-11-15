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

java.sql.Connection conn;
java.sql.Statement stmt;
java.sql.ResultSet result;
java.sql.PreparedStatement pst;


conn = null;
String dbName = "QDC";
String serverip="164.52.218.134";
String serverport="1433";
String url = "jdbc:sqlserver://"+serverip+"\\SQLEXPRESS:"+serverport+";databaseName="+dbName+"";
stmt = null;
result = null;
String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
String databaseUserName = "sa";
String databasePassword = "Pione@123";
try {
    Class.forName(driver).newInstance();
    conn = java.sql.DriverManager.getConnection(url, databaseUserName, databasePassword);
    stmt = conn.createStatement();
    result = null;
    String pa,us;
    result = stmt.executeQuery("select prodid,catid,mfid from in_cds_prod_tmp where prodid = '1000049'");

    while (result.next()) {
        us=result.getString("prodid");
        pa = result.getString("catid");              
        System.out.println(us+"  "+pa);
    }

    conn.close();
} catch (Exception e) {
    e.printStackTrace();
}

%>

</body>
</html>