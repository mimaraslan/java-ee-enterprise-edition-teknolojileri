<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="uyeBean" class="com.mimaraslan.UyeBilgi" scope="session"/>

<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>ÜYE BİLGİ</h2>
 
  
    <div class="form-group">
      <label for="email">Email:</label>    <%=uyeBean.getEmail() %>  -  <%=request.getParameter("email") %>
    </div>
    
    <div class="form-group">
      <label for="kullaniciAdi">Kullancı Adı:</label> <%=uyeBean.getKullaniciAdi() %> - <%=request.getParameter("kullaniciAdi") %>
    </div>

    <div class="form-group">
      <label for="tecrube">Tecrübe:</label>   <%=uyeBean.getTecrube() %> - <%=request.getParameter("tecrube") %>
      
    </div>
  
</div>

</body> 
</html>
