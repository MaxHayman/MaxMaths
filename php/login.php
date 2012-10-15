<?php

if(Session::get('loggedin'))
	return;
	
 if ($_SERVER['REQUEST_METHOD'] == 'POST') { 
	$email = $_POST['email'];
	$password = $_POST['password'];
	$email = htmlspecialchars($email);
	$password = htmlspecialchars($password);
 
	MySQL::Open('L');
	
	$q = mysql_query("SELECT * FROM users WHERE email = '$email' AND password = '$password'");
	if (!mysql_num_rows($q))
	{
		$error = 'Invalid username/password';
	}
	else
	{
		$data = mysql_fetch_array($q,MYSQL_ASSOC);
		Session::set('id',$data['id']);
		Session::set('email',$data['email']);
		Session::set('joindate',$data['joindate']);
		Session::set('institution',$data['institution']);
		Session::set('loggedin',true);
		echo '<meta http-equiv="refresh" content="1;url=?">';
	}
}
?>
<html>
<title>Edexcel Maths Question Generator - [Login]</title>
<body>
<center>
<img src="images/banner.jpg" height="111" width="395"><br>
<h1>Login</h1>
<? if(isset($error)) { echo $error."<br><br>"; } ?> 
<form method="POST" action="?module=login">
  Email:<br><input type="text" name="email" size="30" /><br />
  Password:<br><input type="password" name="password" size="30" /><br />
  <div align="center">
    <p><input type="submit" value="Login" /></p>
  </div>
</form>

</center>
</body>
</html>