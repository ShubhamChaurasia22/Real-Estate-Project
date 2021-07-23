<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%!
Connection con;
Statement stn;
ResultSet rs;
String urls;
String unm;
String pwd;
 %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Data.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	

    
	
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

  </head>
  
  <body> 
   
         <br/><br/><br/>
  
  
  <a href="AdUp.jsp" class="btn btn-primary btn-block">ADD NEW USER</a><br/>
  <table class="table table-dark table-bordered table-striped table-hover">
  <tr class="thead thead-light">
  <th>ID</th>
  <th>Name</th>
  <th>Mobile</th>
  <th>Address</th>
  <th>Action</th>
  </tr>
    
    <%
    
    try {
            //Register Driver
            Class.forName("com.mysql.jdbc.Driver");
            //url
            urls = "jdbc:mysql://localhost:3306/shubham";
            //username
            unm = "root";
            //password
            pwd = "";
            con = DriverManager.getConnection(urls,unm,pwd);
            stn = con.createStatement();
        
        
        
            rs = stn.executeQuery("select * from reg  order by id");
            
            while(rs.next())
            {
            %>
            <tr>
            <td><%= rs.getString("id") %></td>
            <td><%= rs.getString("name") %></td>
            <td><%= rs.getString("mob") %></td>
            <td><%= rs.getString("addr") %></td>
            <td><a href="#" class="btn btn-success">Edit</a>
            <a href="Delete.jsp?id=<%=rs.getInt("id") %>" class="btn btn-danger" onclick="alert('Do You Want To Delete?')">Delete</a>
            <a href="#" class="btn btn-warning">View</a>
            </td>
            </tr>
            <%
            }
            /*if(rs>0)
            {
                out.println("Sucessful");
            }*/
            
            con.close();
        } catch (Exception e) {
            //TODO: handle exception
            out.println(e);
        }
    
     %>
    </table>
    
    
  </body>
</html>
