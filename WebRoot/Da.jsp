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
	
	 <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i"
        rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">

    
	
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

  </head>
  
  <body> 
   
          <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>
   <jsp:include page="header.jsp"></jsp:include>
    <!-- Hero Section Begin -->
    <section class="hero-section home-page set-bg" data-setbg="img/bg.jpg">
        <div class="container hero-text text-white">
            <h2>Find your next</h2>
            <h1>dream home.</h1>
        </div>
    </section>
  
  
  <a href="in.jsp" class="btn btn-primary btn-block">ADD NEW USER</a><br/>
  <table class="table table-dark table-bordered table-striped table-hover">
  <tr class="thead thead-light">
  <th>ID</th>
  <th>Page Title</th>
  <th>Page Heading</th>
  <th>Page Detail</th>
  <th>Date</th>
  <th>Action</th>
  </tr>
    
    <%
    
    try {
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
        
        
        
            rs = stn.executeQuery("select * from manage  order by id");
            
            while(rs.next())
            {
            %>
            <tr>
            <td><%= rs.getString("id") %></td>
            <td><%= rs.getString("title") %></td>
            <td><%= rs.getString("heading") %></td>
            <td><%= rs.getString("detail") %></td>
            <td><%= rs.getString("da") %></td>
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
    
    <jsp:include page="footer.jsp"></jsp:include>
    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/main.js"></script>
  </body>
</html>
