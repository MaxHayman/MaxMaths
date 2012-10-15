<?php
/* ======================================================
   == Max Maths Website System                         ==
   ======================================================
   == Copyright (C) Max Hayman 2012                    ==
   == Author: Max Hayman <maxhayman@maxhayman.co.uk>   ==
   ======================================================
*/
class Menu
{
	function Show()
	{
		if(Session::get('loggedin'))
			$account = '<li><a href="?module=account">My Account</a></li>
						<li><a href="?module=logout">[Logout]</a></li>';
		else
			$account = '<li><a href="?module=register">[Register]</a></li>
						<li><a href="?module=login">[Login]</a></li>';
	
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
				'.$account.'
				<!--<li><a href="#" class="parent">Questions</a>
				<ul>
					<li><a href="?module=m1&type=collisions">Two particles colliding and then separating </a></li>
					<li><a href="?module=m1&type=dynamicsofparticleinstraightline">Dynamics of a particle moving in a straight line </a></li>
					<li><a href="?module=m1&type=kinematics">Kinematics of a particle moving in a straight line </a></li>
				</ul>
				</li>-->
			</ul>
			
		</div> 	<!-- end the menuv-container div -->  
		</div>	<!-- end the menuv div --> ';
	}
	}
?>