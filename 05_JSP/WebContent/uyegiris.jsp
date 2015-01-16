<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8" errorPage="HataSayfasi.jsp"%>

<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  
  <style type="text/css">
	#uyarimesaji
		{
		color: red;
		}
  </style>
  
  
  <script type="text/javascript">
  $(document).ready(function () {
	  $("#tecrube").keypress(function (e) {
	     if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
	        $("#uyarimesaji").html("Sadece sayı giriniz!").show().fadeOut("slow");
	               return false;
	    }
	   });
	});
  
  </script>
  
</head>

<body>

<div class="container">
  <h2>ÜYE BİLGİ</h2>
  <form role="form" action="BilgiyiAl.jsp" method="post">
  
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" name="email" placeholder="Lüttfen emailinizi giriniz.">
    </div>
    
    <div class="form-group">
      <label for="kullaniciAdi">Kullancı Adı:</label>
      <input type="text" class="form-control" id="kullaniciAdi" name="kullaniciAdi"  placeholder="Lütfen adınızı giriniz.">
    </div>

    <div class="form-group">
      <label for="tecrube">Tecrübe:</label>
      <input type="text" class="form-control" id="tecrube" name="tecrube"  placeholder="Kaç yıllık tecrübelisiniz?">
   
   <span id="uyarimesaji"></span>
   
    </div>
       
       
    <div class="form-group">
      <label for="tecrube">Dersler:</label>
      <input type="checkbox" id="ders1" name="ders1" checked="checked">ders 1
      <input type="checkbox" id="ders2" name="ders2" checked="">ders 2
      <input type="checkbox" id="ders3" name="ders3" >ders 3
    </div>
   
   
   
    
    <button type="submit" class="btn btn-default">Gönder</button>
    
  </form>
</div>

</body> 
</html>
