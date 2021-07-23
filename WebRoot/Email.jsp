
/*<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.mail.*,java.net.*"%>
<%@ page import="javax.activation.*" %>
<%@page import="javax.mail.internet.InternetAddress" %>
<%@ page import="javax.mail.internet.MimeMessage" %>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>*/
/*<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>*/

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'EmailDemo.jsp' starting page</title>
    
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
   /*<%
   if(request.getParameter("btnSend")!=null)
{
   try
  {
 		String name = request.getParameter("nm");
 		String mobile = request.getParameter("mb");
 		String email = request.getParameter("em");
 		String comment = request.getParameter("comm");
 		//String message = request.getParameter("message");
 		String host = "smtp.gmail.com";
        String to ="shubham221chaurasia@gmail.com";
        String from = "test.jsp2507@gmail.com"; // Set your email id 
        String pass="shivam2507"; //set your password
        String subject =  "Website Query";
        String messageText ="Name : " + name +"\nSubject : "+mobile+ "\nEmail : " + email + "\nMessage : " + comment;
        Properties props = System.getProperties();
        props.put("mail.host", host);
        props.put("mail.transport.protocol", "smtp");
        props.put("mail.smtp.port", "587");

        // If using authentication, otherwise comment out
        props.put("mail.smtp.auth", "true");

        // Gmail requires TLS, your server may not
        props.put("mail.smtp.starttls.enable", "true");

        Session mailSession = Session.getDefaultInstance(props, null);

        Message msg = new MimeMessage(mailSession);
        msg.setFrom(new InternetAddress(from));
        InternetAddress[] address = {new InternetAddress(to)};
        msg.setRecipients(Message.RecipientType.TO, address);
        msg.setSubject(subject);
        msg.setSentDate(new Date());
        msg.setText(messageText);

        Transport transport = mailSession.getTransport("smtp");

        //connect with authentication
      		transport.connect(host,from ,pass);
        //connect without authentication
       // transport.connect();
        transport.sendMessage(msg, address);

        transport.close();

        //response.sendRedirect(request.getHeader("referer"));
  response.sendRedirect("Message.html");
   }
   
   catch(Exception e)
   {
   out.println(e.getMessage());
   }
   }
    %>*/
   <div class="container">
   <form action="" method="post" class="form-group">
   <div class="row" style=background-color:skyblue;
   padding:20px;">
   <div class="col-md-4"></div>
   <div class="col-md-4" style="border-radius:20px">
   <div class="row">
   <div class="col-md-12">
   <label>Enter Name</label>
   <input type="text" name="nm" class="form-control"/>
   </div>
   </div>
   
   
    <div class="row">
   <div class="col-md-12">
   <label>Enter Mobile</label>
   <input type="text" name="mb" class="form-control"/>
   </div>
   </div>
   
    <div class="row">
   <div class="col-md-12">
   <label>Enter Email</label>
   <input type="text" name="em" class="form-control"/>
   </div>
   </div>
   
    <div class="row">
   <div class="col-md-12">
   <label>Enter Comment</label>
   <input type="text" name="comm" class="form-control"/>
   </div>
   </div>
    <div class="row" style="padding:10px 0px">
   <div class="col-md-12">
   
   <input type="submit" name="btnSend" 
   class="btn btn-primary btn-block"/>
   </div>
   </div>
   </div>
   <div class="col-md-4"></div>
   </div>
   </form>
   </div>
   
   
   
  </body>
</html>
