<?php
/* ======================================================
   == Max Maths Website System                         ==
   ======================================================
   == Copyright (C) Max Hayman 2012                    ==
   == Author: Max Hayman <maxhayman@maxhayman.co.uk>   ==
   ======================================================
*/
class Main
{
	public static function getRoot()
	{
		return Config::$config['website']['root_file'];
	}
	
	public static function getRootHTTP()
	{
		return Config::$config['website']['root_http'];
	}
	
	public static function redirect($href,$time="1")
	{
		echo 'You will be automatically redirected in '.$time.' second(s). <a href="'.$href.'">(Click here if you do not wish to wait.)</a>';
		echo '<meta http-equiv="refresh" content="'.$time.';url='.$href.'">';
		return true;
	}
	
	public static function Build()
	{
		include("config.php");
		
		require_once(Main::getRoot()."/php/functions/mysql.php");
		require_once(Main::getRoot()."/php/functions/session.php");
		Session::Load();
		
		include('questions/questionmanager.php');

		$info = isset($_REQUEST['info']) ? $_REQUEST['info'] : null;
		$extrainfo = isset($_REQUEST['extrainfo']) ? $_REQUEST['extrainfo'] : null;
		$module = isset($_REQUEST['module']) ? $_REQUEST['module'] : null;
		$type = isset($_REQUEST['type']) ? $_REQUEST['type'] : null;

		if($info)
		{
			switch($info)
			{
				case "diagram":
					$questionmanager = new QuestionManager();
					$questionmanager->init($module,$type);
					$questionmanager->generateDiagram($extrainfo);
				break;
			}
		}
		else
		{
			//side menu bar
			include("php/menu.php");
			Menu::show();
			
			switch($module)
			{
				case "m1":
					$questionmanager = new QuestionManager();
					$questionmanager->init($module,$type);
					$questionmanager->generateQuestion();
				break;

				case "login":
					include('php/login.php');
				break;
				
				case "logout":
					include('php/logout.php');
				break;	
				
				case "account":
					include('php/account.php');
				break;
				
				case "admin":
					include('php/admin.php');
				break;	
				
				case "staff":
					include('php/staff.php');
				break;	
				
				case "home":
				default:
					include('php/home.php');
				break;
			}
		}
		Session::Save();
		MySQL::Close();
	
	}
}
Main::Build();
?>
