<%@ page language="java" contentType="text/html; charset=UTF-8"

 pageEncoding="UTF-8" errorPage="HataSayfasi.jsp"%>



<jsp:useBean id="uyeBean" class="com.mimaraslan.UyeBilgi" scope="session"/>
<jsp:setProperty name="uyeBean" property="*"/>

<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>

  <h2>BİLGİYİ AL</h2>
  
  <%-- 
  <% 
  
  int sayi1 = 1453, sayi2 = 0, sonuc;
  sonuc = sayi1/sayi2;
  out.println(sonuc);
  
  %>
   --%>
  
  
  <div class="container">
		<div class="alert alert-info">
			<strong> <a href="HedefSayfasi.jsp">HEDEF SAYFASI</a></strong>
		</div>
</div>	





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
  
      <div class="form-group">
     Ders1: <%=request.getParameter("ders1") %>
    </div>
          
     <div class="form-group">
      Ders2:  <%=request.getParameter("ders2") %>
    </div>
    
      <div class="form-group">
      Ders3:   <%=request.getParameter("ders3") %>
    </div>
    
    
</div>


</body> 
</html>
