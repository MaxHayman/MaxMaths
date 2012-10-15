<?php
if(Session::get('loggedin'))
{
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
WHERE
classes.instution = ".Session::get('institution')."
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

		$q = mysql_query("select classes.name from classes WHERE classes.instution = ".Session::get('institution')."
		order by classes.id");
	if (!mysql_num_rows($q))
	{
		$classes = 'No classes';
	}
	else
{
	$classes = "";
		while ($row = mysql_fetch_assoc($q))
		{
			$classes .= "<option>".$row['name']."</option>";
		}
	}	
?>
<html>
<title>Edexcel Maths Question Generator - [Staff]</title>
<body>
<center>
<img src="images/banner.jpg" height="111" width="395"><br>
<h1>Staff Control Panel</h1>
 <br><?php echo $users; ?>

 <br>
 <table>
 <form><tr><td>Create New Class</td><td>Name: <input type="text" name="newclassname"></td><td></td></tr>
 <tr><td></td><td>Teacher: <input type="text" name="newclassname"></td><td><input type="submit" value="Submit"></td></tr></form>
 <tr><td>Set Homework for class</td><td><select><?php echo $classes; ?></select></td><td><input type="submit" value="Submit"></td>
</center>
</body>
</html>
<?php 
}?>