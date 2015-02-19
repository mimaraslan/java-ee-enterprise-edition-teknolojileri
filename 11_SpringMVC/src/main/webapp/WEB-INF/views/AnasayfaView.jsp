<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  
	<title>Anasayfa</title>
</head>
<body>
<h1>SPRING MVC EGITIMI</h1>




<div class="container">
		<div class="alert alert-info">
			<strong>  ${p_adi}  ${p_soyadi} </strong>
		</div>
		
		<div class="alert alert-danger">
			<strong>  ${anahtarKelime} </strong>
		</div>
</div>	


</body>
</html>
