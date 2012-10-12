<?php

class Question
{

function htmlTOP()
{
echo '
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>M1 - Kinematics of a particle moving in a straight line</title>
<script type="text/javascript" src="style/js/jquery.min.js"></script>
<script type="text/javascript">

$(document).ready(function(){
 $("div#toggle a.button").click(function () {
    $("div#toggle div.box").toggle("slow");
 }); 
 
 hidden = true;
 
 $("div#custom a.button").click(function () {
	if(hidden == false) {
 		$("div#custom div.box").slideUp("slow");
		hidden = true;
	} else {
		$("div#custom div.box").slideDown("slow");	
		hidden = false;
	}
 });
});

</script>
<style>
body {
	background:white;
	color:#333;
	padding:3px;
}

.box {
	width:200px;
	height:60px;
	border:1px solid #999;
	background-color:#FFC;
	display:none;
	margin:5px;
}
</style>
</head>
<body><center><img src="images/banner.jpg" height="111" width="395"><br>';
}

function htmlBOT()
{
echo '
</center>
</body>
</html>';
}

function generateQuestion()
{
$this->htmlTOP();

$vo = rand(10,30);
$t = rand(10,30);
$vp = $vo+rand(5,30);
$t2 = $t+rand(2,10);

$vq = round($vp + (($vp-$vo)/$t)*($t2-$t),2);
$s = round((($vp+$vq)/2)*($t2-$t),2);

mysql_query("insert into `mathsdb`.`questions` ( `module`, `type`, `vars`, `answer`) values ( 'm1', 'kinematics',
 'vo=".$vo.";t=".$t.";vp=".$vp.";t2=".$t2.";vq=".$vq.";s=".$s."', 'lol')");

$id = mysql_insert_id();

echo "<img src='?module=m1&type=kinematics&info=diagram&extrainfo=".$id."'>";
if ($pv < 0)
{
	$pv = $pv*-1;
	$direction = "opposite";
}
else
	$direction = "same";
echo "<h3><u>Answer</u></h3>
<div id='custom'> <a href='#' class='button'>Press Here</a>
  <div class='box'> a) ".$vq." ms <br>b) ".$s." m</div>
</div>";

$result2 = mysql_query("SELECT * FROM `tips` ORDER BY RAND() LIMIT 1") or die(mysql_error());

while($row = mysql_fetch_array($result2))
	echo '<br><br>Random Tip: '.$row['tip'];

$this->htmlBOT();
}

function generateDiagram($id)
{
$result = mysql_query("SELECT * FROM `questions` WHERE id='".$id."'") or die(mysql_error());

while($row = mysql_fetch_array($result))
  {
	$vars = explode(";", $row['vars']);
	foreach ($vars as $var)
	{
		$pieces = explode("=", $var, 2);
		global ${ $pieces[0] };

		${ $pieces[0] } = $pieces[1];
	}


  }

//Carregar imagem
$rImg = ImageCreateFromJPEG("images/blank.jpg");

//Definir cor
$cor = imagecolorallocate($rImg, 0, 0, 0);

//Escrever nome
$text = 'A train is travelling with a constant acceleration along a straight track. At time t = 0s, the train passes point O travelling with speed '.$vo.'ms. At time t = '.$t.'s, the train passes a point P travelling with speed '.$vp.'ms. At time t = '.$t2.'s, the train passes a point Q.\nFind:\n\na) the speed of the train at Q\n\nb) the distance from P to Q';

$text = wordwrap($text, 45, '\n');

$lines=explode('\n',$text);

for($i=0; $i< count($lines); $i++)
{	
	imagestring($rImg,5,1,20+(15*$i),urldecode($lines[$i]),$cor);
}

//Header e output
header('Content-type: image/jpeg');
imagejpeg($rImg,NULL,100);
}
}
?>