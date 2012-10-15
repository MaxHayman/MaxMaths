<?php
	// GET CLASSES
	$q = mysql_query("select users.firstname,
		users.lastname,
       classes.name,
	   classes.teacher,
       institutions.name as institution_name
  from institutions
    join users
    on institutions.id = users.institution
  left
  join user_classes
    on users.id = user_classes.userid
  left
  join classes
    on user_classes.classid = classes.id
	order by classes.id");
	
	if (!mysql_num_rows($q))
	{
		$users = 'No users';
	}
	else
	{
		$users = '<table border="1"><tr><td><u>Users:</u></td><td></td></tr>';
		while ($row = mysql_fetch_assoc($q))
		{
			$users .= "<tr><td>".$row['firstname']." ".$row['lastname']."</td><td>".$row['name']." - ".$row['teacher']."</td><td>".$row['institution_name']."</td></tr>";
		}
		$users .= "</table>";
	}

?>
<html>
<title>Edexcel Maths Question Generator - [My Account]</title>
<body>
<center>
<img src="images/banner.jpg" height="111" width="395"><br>
<h1>My Admin</h1>
 <br><?php echo $users; ?>


</center>
</body>
</html>