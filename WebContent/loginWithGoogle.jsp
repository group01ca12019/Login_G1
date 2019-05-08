<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login with goole</title>

<script src="https://apis.google.com/js/platform.js" async defer></script>
<meta name="google-signin-client_id"
	content="941522555947-3ej3srtd6g8rapqepmrth164ria1il5u.apps.googleusercontent.com">
</head>

<body>


	<div class="g-signin2" data-onsuccess="onSignIn" id="myP"></div>
	<img id="myImg">
	<br>
	<p id="name"></p>
	<div id="status"></div>
	<script type="text/javascript">
		function onSignIn(googleUser) {
			var profile = googleUser.getBasicProfile();
			var imagurl = profile.getImageUrl();
			var name = profile.getName();

			 // window.location.href='Login?name='+profile.getName()+'&action=google'

		}
	</script>





	<button onclick="myFunction()">Sign Out</button>

	<script>
		function myFunction() {
			gapi.auth2.getAuthInstance().disconnect();
			location.reload();
			  
		}
	</script>
</body>


</html>