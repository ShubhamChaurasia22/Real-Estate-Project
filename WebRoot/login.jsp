<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"  %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%!
Statement stm;
Connection con;
String sql;
//Database URL
String urls;
//Database username
String unm;
//Database Password
String pwd;
ResultSet rs;
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Home|SignIn</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.fa {
  padding: 20px;
  font-size: 20px;
  width: 60px;
  text-align: center;
  text-decoration: none;
  margin: 5px 2px;
  border-radius:100%;
}

.fa:hover {
    background-color:transparent;
    border:0.5px solid #9B59B6;
    color:#9B59B6;
}

.fa-facebook {
  background: #3B5998;
  color: white;
}

.fa-twitter {
  background: #55ACEE;
  color: white;
}

.fa-google {
  background: #dd4b39;
  color: white;
}
}
</style>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

  </head>
  
  <body style="background-color: #2874A6; background-image: linear-gradient(to left bottom,#2874A6, #BB8FCE);">
  
 <%
   if(request.getParameter("btnlog")!=null)
   {
    try {  
    //Register Driver
    Class.forName("com.mysql.jdbc.Driver");

    //URL
    urls = "jdbc:mysql://localhost:3306/home";
    //username
    unm ="root";
    //Password
    pwd="";
   
    con = DriverManager.getConnection(urls,unm,pwd); 
    stm = con.createStatement();
   
   //Login
   String unm=request.getParameter("user");
   String pwd=request.getParameter("pass");
   rs = stm.executeQuery
   ("select email,pass from reg");
 
   
   if(rs!=null)
   {
    while(rs.next())
      {
    String nunm= rs.getString("username");
    String nun= rs.getString("password");
    if(nunm.equals("select * from reg where username='"+unm+"' and password='"+pwd+"'"))
    {
    session.setAttribute("us",nunm);
    response.sendRedirect("index.jsp");
    }
    
      }
         
   }
   else
   {
      response.sendRedirect("http://www.google.com");
   }
   con.close();
        }
     catch (Exception e) {
        //TODO: handle exception
        out.println(e);
    }
   }
    %>
        <center>
        <div class="container" style="margin-top:30px;">
            
            <div class="col-sm-5">
                <div class="jumbotron"><br/>
                    <div class="form-group form-group-lg" style="margin-top:-50px;">
                       <center> <h1>SignIn</h1></center>
                    </div>
                    <hr>
                    <form action="index.jsp" method="POST" class="form-horizontal">
                            <div class="form-group">
                                    <label for="exampleInputEmail1" style="float:left">Email address</label>
                                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" name="user" required>
                                    
                                  </div>
                                  <div class="form-group">
                                    <label for="exampleInputPassword1" style="float:left">Password</label>
                                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="pass" required>
                                  </div>
                                  <div class="form-group form-check">
                                    <input type="checkbox" class="form-check-input" >
                                    <label class="form-check-label" >Check me out</label>
                                  </div>
                                  <button type="submit" name="btnlog" class="btn btn-outline-success">Submit</button>
                               
                                <div class="form-group">
                                        <a href="Forget.jsp"  style="text-decoration:none">Forget Password</a>
                                </div>
                                <hr>
                                <center><h6>Also LogIn With</h6>
                                <a href="#" class="fa fa-facebook" style="text-decoration: none;"></a>
                                <a href="#" class="fa fa-twitter" style="text-decoration: none;"></a>
                                <a href="#" class="fa fa-google" style="text-decoration: none;"></a>
                                <h6>Create New Account <a href="signup.jsp" style="text-decoration:none">SignUp</a></h6></center>
                            </form>
                        
                         
                </div>
            </div>
        </div>
</center>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
