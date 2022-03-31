<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
name = <%= request.getParameter("name") %> <p>
address = <%= request.getParameter("address") %> <p>

<%
	String[] values =request.getParameterValues("pet");
	if(values != null) {
		for(int i = 0; i < values.length; i++){
%>
		<%= values[i] %>
<% 
		}
	}
%>
<p>
<b>request.getParameterNames()</b>
<%
	Enumeration paramEnum = request.getParameterNames();
	while(paramEnum.hasMoreElements()){
		String name = (String)paramEnum.nextElement();
%>
	<%= name %>
<%
	}
%>
<p>
<b>request.getParameterMap</b>
<%
	Map parameterMap = request.getParameterMap();
	String [] nameParam = (String[])parameterMap.get("name");
	if(nameParam != null){
%>
name = <%= nameParam[0] %>		
<% 	
	}
%>
</body>
</html>