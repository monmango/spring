<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page session="false" %>
<html>
<head>
<title>Home</title>
<script type="text/javascript">
	function show() {
		var value = document.getElementById("btn").innerText;
		alert(value);
	}
</script>
</head>
<body>
	<button id="btn" onclick="show();">Already</button>
</body>
</html>