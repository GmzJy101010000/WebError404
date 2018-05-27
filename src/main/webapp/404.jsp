<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
var a=window.location.href;
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div  id="fd"></div>
 <form  method="post" action="/error_404/404error" id ="passForm"> 
     <input id = "test2" type = "hidden" name="test2"> 
     </form>  

</body>
</html>
<script type="text/javascript">


document.getElementById("test2").value=a;

var formObj = document.getElementById("passForm");
formObj.submit();
</script>