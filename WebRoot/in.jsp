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
  
  
  
  <%
    if(request.getParameter("btnins")!=null)
    {
    try {
    int id= Integer.parseInt(request.getParameter("id"));
    String title=request.getParameter("ti");
    String heading=request.getParameter("he");
    String detail=request.getParameter("de");
     String date=request.getParameter("da");
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
            sql="Insert into reg values('"+title+"','"+heading+"','"+detail+"','"+date+"')";
        
        
        
            int a = stn.executeUpdate(sql);
            
            
            if(a>0)
            {
                response.sendRedirect("Da.jsp");
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
     <div class="container">
     <div class="row">
     <div class="col-sm-5">
  <form action="" method="post" class="form-group">
  
 
  
   
   
   
      <div class="form-group">
      <label>Page Title</label>
      <input type="text" class="form-control" name="ti" placeholder="Page Title">
      </div>
   
     <div class="form-group">
      <label>Page Heading</label>
      <input type="text" class="form-control" name="he" placeholder="Page Heading">
      </div>
   
      <div class="form-group">
      <label>Page Detail</label>
      <input type="text" class="form-control" name="de" placeholder="Page Detail">
      </div>
      
      <div class="form-group">
      <label>Date</label>
      <input type="date" class="form-control" name="da" placeholder="Date">
      </div>
  
  <button type="submit" name="btnins" class="btn btn-primary">Submit</button>
  </form>
  </div></div>
   </div><br/><br/>
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

