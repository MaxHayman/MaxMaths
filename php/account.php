<?php
	// GET CLASSES
	$q = mysql_query("select classes.name,
							classes.teacher
								from classes
							join user_classes
								on classes.id = user_classes.classid
							where user_classes.userid = ".Session::get('id'));
	if (!mysql_num_rows($q))
	{
		$classes = 'Your not in any classes';
	}
	else
	{
		$classes = '<table><tr><td><u>Classes:</u></td><td></td></tr>';
		while ($row = mysql_fetch_assoc($q))
		{
			$classes .= "<tr><td>".$row['name']."</td><td>".$row['teacher']."</td></tr>";
		}
		$classes .= "</table>";
	}
	// GET YOUR INFO
	$q = mysql_query("select users.firstname,
				   users.lastname,
				institutions.name
			  from institutions
			  join users
				on institutions.id = users.institution
				where users.id = ".Session::get('id'));
	if (!mysql_num_rows($q))
	{
		$classes = 'Your info isnt here :S';
	}
	else
	{
		$data = mysql_fetch_array($q,MYSQL_ASSOC);
		
		$name = $data['firstname']." ".$data['lastname'];
		$school = $data['name'];
	}
?>
<html>
<title>Edexcel Maths Question Generator - [My Account]</title>
<body>
<center>
<img src="images/banner.jpg" height="111" width="395"><br>
<h1>My Account</h1>
 <br>Name: <?php echo $name; ?>
 <br>School: <?php echo $school; ?>
 <br>Year: 13
 <br><?php echo $classes; ?>
 <br>
 <br><u>MaxMaths Statistics</u>
 <br>Current Working at grade: A
 <br>Correct answers: 98%
 <br>
 <br><u>Homework</u>
 <br>Due - 15/10/2012
 <br>2 - Kinematics Questions (1 completed)
 <br>4 - Collision Questions (0 completed)

</center>
</body>
</html>