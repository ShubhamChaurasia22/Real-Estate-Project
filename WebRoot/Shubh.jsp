<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Shubh.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <form action="#" method="post">
    <input type="text" name="no" />
    <input type="submit" value="Submit" name="btn"/>
    </form>
    <%
    if(request.getParameter("btn")!="" || request.getParameter("btn")!=null)
    {
    try{
    String str=request.getParameter("no");
    if(str.equalsIgnoreCase("Google"))
    {
    response.sendRedirect("http://www.google.com");
    }
    else if(str.equalsIgnoreCase("Facebook"))
    {
    response.sendRedirect("http://www.Facebook.com");
    }
    else
    {
    response.sendRedirect("index.jsp");
    }
    }
    catch(Exception e)
    {
    out.println(e);
    }
    }
     %>
  </body>
</html>
