<html>
<header>
<script type="text/javascript" src="/error_404/libs/jquery.js"></script>
<script type="text/javascript">
$.ajax({
	  url: "http://localhost:443/mail/",
	  success: function( result ) {
	   //alert(result);
	  },
	  error:function( result ) {
	   //alert("error");
	  }
	});
	

$(document).ready(function(){
	$("form").submit(function(e){
		var formData=$("form").serializeArray();
		var postData={};
		postData["formData"]=JSON.stringify(formData);
	
		$.ajax({
			  url: "http://localhost:8080//error_404/404error",
			  data:postData,
			  success: function( result ) {
				  alert(result);
			  },
			  error:function( result ) {
			   alert(123+" error");
			  }
			});
		
		});
	});
function change(){
	
	var a=$("#xuan").attr("value");
	alert(a);
	if(a==="on"){
		
		$("#xuan").attr("value","off");
	}
	else{
		$("#xuan").attr("value","on");
	}

}
</script>
</header>
<body>
<h2>Hello World!</h2>
<form class="df" action="" method="get">
<input name="name" type="text"></input>
<input name="email" type="text"></input>
<input id="xuan" name="r" value="on" type="checkbox" onclick="change()" checked="checked"></input>
<button id="contact" type="submit">submit</button>

</form>
</body>
</html>
