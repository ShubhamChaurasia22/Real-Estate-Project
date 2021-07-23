<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.mail.*,java.net.*" %>
<%@ page import="javax.activation.*" %>
<%@ page import="javax.mail.internet.InternetAddress" %>
<%@ page import="javax.mail.internet.MimeMessage" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'mail.jsp' starting page</title>
    
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
    <% 
    if(request.getParameter("btnSend")!=null) 
    { 
    try 
    { 
    String name=request.getParameter("nm"); 
  String mobile=request.getParameter("mb"); 
    String email=request.getParameter("em"); 
    String comment=request.getParameter("comm"); 
    String host="smtp.gmail.com"; 
    String to="shubh221chaurasia@gmail.com";
    String from="shubham221chaurasia@gmail.com"; 
    String pass="fdfdf"; 
    String subject="Website Query"; 
    String messagerText=";Name : "+name+"\nMobile : "+mobile+"\nEmail : "+email+"\nComment : "+comment ; 
    Properties props=System.getProperties(); 
    props.put("mail.host",host); 
    props.put("mail.transport.protocol","smtp"); 
    props.put("mail.smtp.port","587"); 
    props.put("mail.smtp.auth","true"); 
    props.put("mail.smpt.starttls.enable","true"); 
    Session mailSession=Session.getDefaultInstance(props,null); 
     
    Message msg=new MimeMessage(mailSession); 
    msg.setFrom(new InternetAddress(from)); 
    InternetAddress[] address={new InternetAddress(to)}; 
    msg.setRecipients(Message.RecipientType.TO, address); 
    msg.setSubject(subject); 
    msg.setSentDate(new Date()); 
    msg.setText("messageText"); 
    Transport transport=mailSession.getTransport("smtp"); 
    transport.connect(host,from,pass); 
    transport.sendMessage(msg,address); 
    transport.close(); 
    response.sendRedirect("https://www.google.com"); 
    } 
    catch(Exception e) 
    { 
    out.println(e); 
    } 
    } 
     %>
     <div class="container">
     <form action="" method="post" class="form-group">
     <div class="row" style="background-color:skyblue;padding:20px">
     <div class="col-md-4"></div>
     <div class="col-md-4" style="border-radius:20px">
     <div class="row">
     <div class="col-ms-12">
     <label>Enter Name</label>
     <input type="text" name="nm" class="form-control" />
     </div>
     </div>
     
      <div class="row">
     <div class="col-ms-12">
     <label>Enter Phone</label>
     <input type="text" name="mb" class="form-control" />
     </div>
     </div>
     
      <div class="row">
     <div class="col-ms-12">
     <label>Enter Mail</label>
     <input type="email" name="em" class="form-control" />
     </div>
     </div>
     
      <div class="row">
     <div class="col-ms-12">
     <label>Enter Comment</label>
     <input type="text" name="comm" class="form-control" />
     </div>
     </div>
     
     <div class="row" style="padding:10px opx">
     <div class="col-md-12">
     <input type="submit" name="btnSend" class="btn btn-success btn-block"/>
     </div>
     </div>
     
     </div>
     <div class="col-md-4"></div>
     </div>
     </form>
     </div>
  </body>
</html>
