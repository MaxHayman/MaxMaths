<?php

include('questions/questionmanager.php');

$info = isset($_REQUEST['info']) ? $_REQUEST['info'] : null;
$extrainfo = isset($_REQUEST['extrainfo']) ? $_REQUEST['extrainfo'] : null;
$module = isset($_REQUEST['module']) ? $_REQUEST['module'] : null;
$type = isset($_REQUEST['type']) ? $_REQUEST['type'] : null;

//Connect to database
mysql_connect(localhost,"admin","pass");
mysql_select_db("mathsdb");

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
switch($module)
{
	case "m1":
		$questionmanager = new QuestionManager();
		$questionmanager->init($module,$type);
		$questionmanager->generateQuestion();
	break;

	case "home":
	default:
		include('php/home.php');
	break;
}

mysql_close();
?>
