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
    
    <title>My JSP 'AdUp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body style="background-color: #09F7CA;">
    <%
    if(request.getParameter("btnins")!=null)
    {
    try {
    int id= Integer.parseInt(request.getParameter("id"));
    String name=request.getParameter("nm");
    String email=request.getParameter("email");
    String pass=request.getParameter("pass");
            //Register Driver
            Class.forName("com.mysql.jdbc.Driver");
            //url
            urls = "jdbc:mysql://localhost:3306/home";
            //username
            unm = "root";
            //password
            pwd = "";
            con = DriverManager.getConnection(urls,unm,pwd);
            stn = con.createStatement();
            sql="Insert into admin values('"+id+"','"+name+"','"+email+"','"+pass+"')";
        
        
        
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
 <div class="container" style="margin-left:500px; margin-top:70px;">
            <div class="col-sm-5">
                <div class="jumbotron">
                    <div class="form-group" style="margin-top:-50px;">
                       <center> <h1>Admin-SignUp</h1></center>
                    </div>
                    <hr>
                    <form action="" method="POST" class="form-horizontal">
                    <div class="form-group">
                                    <label>Id</label>
                                    <input type="text" class="form-control" placeholder="Id" name="id" required>
                                  </div> 
                            <div class="form-group">
                                    <label>Name</label>
                                    <input type="text" class="form-control" placeholder="Name" name="nm" required>
                                  </div>     
                                  <div class="form-group">
                                    <label>Email address</label>
                                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email" placeholder="Enter email" required>
                                    
                                  </div>
                                  <div class="form-group">
                                    <label>Password</label>
                                    <input type="password" class="form-control" id="exampleInputPassword1" name="pass" placeholder="Password" required>
                                  </div>
                                  <div class="form-group">
                                        <label>Re-Password</label>
                                        <input type="password" class="form-control" placeholder="Re-Password" required>
                                      </div>
                                  
                                  <button type="submit" class="btn btn-outline-success" name="btnins">Submit</button>
                            </form>
                        
                </div>
            </div>
        </div>


    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
