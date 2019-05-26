<html>
<head>
<meta name="google-signin-client_id"
	content="941522555947-3ej3srtd6g8rapqepmrth164ria1il5u.apps.googleusercontent.com">
</head>
<body>
	<div id="my-signin2"></div>
	<script>
    function onSuccess(googleUser) {
    	var profile = googleUser.getBasicProfile();
		var name = profile.getName();
		window.location.href='Login?name='+profile.getName()+'&action=google'
    }

    function renderButton() {
         gapi.signin2.render('my-signin2', {
    	'scope': 'https://www.googleapis.com/auth/plus.login',
        'width': 200,
        'height': 30,
        'longtitle': true,
        'theme': 'dark',
        'onsuccess': onSuccess,
        
      
        
      });
    }
  </script>
	<script
		src="https://apis.google.com/js/platform.js?onload=renderButton" async
		defer></script>
</body>
</html>
