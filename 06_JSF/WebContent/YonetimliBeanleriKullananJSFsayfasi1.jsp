<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Managed Bean- Yönetimli Kahve Çekirdeği</title>
</head>
<body>


	<f:view>
		<h3>Managed Bean- Yönetimli Kahve Çekirdeği</h3>
		<h:form>
    Adı : <h:inputText id="isim" value="#{yonetimliBean1.adi}" />
			<br />
    Soyadı <h:inputText id="soyisim" value="#{yonetimliBean1.soyadi}" />
			<br />

			<h:commandButton value="Gönder"
				action="#{yonetimliBean1.yazdirMetodu}" />
			<br />
     ADI SOYADI :<h:outputLabel id="isimSoyisim"
				value="#{yonetimliBean1.adi} #{yonetimliBean1.soyadi} " />

		</h:form>
	</f:view>
</body>
</html>