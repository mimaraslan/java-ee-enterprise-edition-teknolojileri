<%@ page import="java.util.Date"%>
<%@ page import="org.bilisimsohbetleri.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<%-- 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>

 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Anasayfa</title>
</head>
<body>
Anasayfa Merkez

<c:forEach var="sayac" begin="1" end="8" step="2">
	<c:out value="${sayac}"/><hr>
</c:forEach>

<c:set var="adi" value="Mustafa"/>



<%

int sayi = 10;

out.println("IP : " + request.getRemoteAddr());

Konuk konuk = new Konuk();
konuk.getAdi();


if(sayi < 5){
	
%>
	<h1>SAYI BÜYÜKTÜR</h1>

<%	
}else{
	%>
	<h1>SAYI küçüktür</h1>

<%	
	
}

%>
<table>
<% 
for (int i = 0; i < 3; i++) {
	%>
	 <tr>
	 	<td><%=i %></td>
	 </tr>
	<% 
}
%>
</table>



<table>
<% 
int i = 0;
while ( i < 2) {
	%>
	 <tr>
	 	<td><%=i+10 %></td>
	 </tr>
	<% 
	i++;
}
%>
</table>


<%! int sayi2 = 20; %>
<hr>
<%= new Date().toLocaleString() %>

</body>
</html>