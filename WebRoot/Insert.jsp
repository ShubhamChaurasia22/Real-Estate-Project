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
String sql;
 %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Insert.jsp' starting page</title>
    
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
  
  <%
    if(request.getParameter("btnins")!=null)
    {
    try {
    int id= Integer.parseInt(request.getParameter("id"));
    String name=request.getParameter("nm");
    String mob=request.getParameter("mob");
    String add=request.getParameter("add");
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
            sql="Insert into reg values('"+id+"','"+name+"','"+mob+"','"+add+"')";
        
        
        
            int a = stn.executeUpdate(sql);
            
            
            if(a>0)
            {
                response.sendRedirect("Data.jsp");
            }
            else{
            out.println("Something went wrong");
            }
            
            
        } catch (Exception e) {
            //TODO: handle exception
            out.println(e);
       }
       }
    
     %>
  
  <form action="" method="post" class="form-group">
  
 
  
   
   <div class="form-group">
      <label>Id</label>
      <input type="text" class="form-control" name="id" placeholder="Id">
      </div>
   
      <div class="form-group">
      <label>Name</label>
      <input type="text" class="form-control" name="nm" placeholder="Name">
      </div>
   
     <div class="form-group">
      <label>Mobile</label>
      <input type="text" class="form-control" name="mob" placeholder="Mobile">
      </div>
   
      <div class="form-group">
      <label>Address</label>
      <input type="text" class="form-control" name="add" placeholder="Address">
      </div>
  
  <button type="submit" name="btnins" class="btn btn-primary">Submit</button>
  </form>
  
   
    
  </body>
</html>
