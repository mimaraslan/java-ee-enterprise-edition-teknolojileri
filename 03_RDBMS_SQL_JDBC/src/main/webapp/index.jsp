<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Veritabanı</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container">

		<div class="alert alert-success">
			<strong>Anasayfa</strong>
		</div>

		<div class="alert alert-info">
			<strong>Hakkında</strong>
		</div>

		<div class="alert alert-warning">
			<strong> <% out.println("Mustafa Şen");%>
			</strong>
		</div>

		<div class="alert alert-danger">
			<strong>
				<% out.println("Ahmet Burak Demirkoparan"); %>
			</strong>
		</div>

	</div>


	<table>
		<%@ page import="java.util.*"%>
		<%@ page import="java.sql.*"%>

		<%

Connection baglanti = null;
Statement bildirim = null;
ResultSet sonuc = null;

String driver = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/firmaveritabani";
String kullaniciAdi= "root";
String parola = "root";

try {
	
	Class.forName(driver);
	baglanti = DriverManager.getConnection(url, kullaniciAdi, parola);
	
}catch (ClassNotFoundException e){
	e.printStackTrace();
}

String sqlSorgusu = "SELECT * FROM firmaveritabani.personel";


try {
	bildirim = baglanti.createStatement();
	sonuc = bildirim.executeQuery(sqlSorgusu);

	int i = 0;
	String renk = "#F2F5A9";
	
	while (sonuc.next()){
		
		i = i % 2;
		
		if(i==0){
			renk = "#F2F5A9";
		}else{
			renk = "#FBEFF5";
		}
	%>
		<tr bgcolor="<%out.print(renk);%>">
			<td><%= sonuc.getInt("id") %></td>
			<td><%= sonuc.getString("adi") %></td>
			<td><%= sonuc.getString("soyadi") %></td>
			<td><%= sonuc.getInt("tecrube") %></td>
		</tr>

	<% 	
	i=i+1;	
	}
	
}catch (Exception e){
	e.printStackTrace();
}finally{
	
	if(sonuc!=null) {
		sonuc.close();
	}
	
	if(bildirim!=null) {
		bildirim.close();
	}
	
	if(baglanti!=null){ 
		baglanti.close();
	}
	
}

%>
	</table>























</body>
</html>