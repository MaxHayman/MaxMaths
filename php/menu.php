<?php
class Menu
{
	function Show()
	{
		echo '
		<!--[if lt IE 7]>
			<style type="text/css" media="screen">
			body{behavior:url(csshover.htc);}
			</style>
		<![endif]-->
		<link rel="stylesheet" href="style/css/menuv.css" media="screen">
		';
		echo '	
		<div id="menuv-container">
		<div id="menuv">
			<ul>
				<li><a href="?module=home">Home</a></li>
				<li><a href="?module=login">[Login]</a></li>
				<!--<li><a href="#" class="parent">Questions</a>
				<ul>
					<li><a href="?module=m1&type=collisions">Two particles colliding and then separating </a></li>
					<li><a href="?module=m1&type=dynamicsofparticleinstraightline">Dynamics of a particle moving in a straight line </a></li>
					<li><a href="?module=m1&type=kinematics">Kinematics of a particle moving in a straight line </a></li>
				</ul>
				</li>-->
				<li><a href="stats.php">Website Statistics</a></li>
				<li><a href="stats.php">Add Someone</a></li>
				<li><a href="stats.php">Contact</a></li>
			</ul>
			
		</div> 	<!-- end the menuv-container div -->  
		</div>	<!-- end the menuv div --> ';
	}
	}
?>