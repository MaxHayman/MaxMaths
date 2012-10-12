<?php

class Question
{

function htmlTOP()
{
echo '
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>M1 - Collisions</title>
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
$qu = 0;//
$qv = rand(50,100)*0.1;//
$qm = rand(1,10);//
$pu = rand(10,100)*0.1;//
$pm = rand(5,10);//
$pv = round(((($pu*$pm)+($qu*$qm)-($qm*$qv))/($pm)), 2); // the answer
$imp = (($pm*(-1*$pv))-($pm*(-1*$pu)));

mysql_query("insert into `mathsdb`.`questions` ( `module`, `type`, `vars`, `answer`) values ( 'm1', 'collisions', 'imp=".$imp.";qu=".$qu.";qv=".$qv.";qm=".$qm.";pu=".$pu.";pv=".$pv.";pm=".$pm."', 'lol')");

$id = mysql_insert_id();

echo "<img src='?module=m1&type=collisions&info=diagram&extrainfo=".$id."'>";
if ($pv < 0)
{
	$pv = $pv*-1;
	$direction = "opposite";
}
else
	$direction = "same";
echo "<h3><u>Answer</u></h3>
<div id='custom'> <a href='#' class='button'>Press Here</a>
  <div class='box'> a) ".$pv." ms ".$direction." direction <br>b) ".$imp." Ns</div>
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
$rImg = ImageCreateFromJPEG("images/collision1.jpg");

//Definir cor
$cor = imagecolorallocate($rImg, 0, 0, 0);

//Escrever nome
imagestring($rImg,5,105,90,urldecode($pm." kg"),$cor); //mass of p
imagestring($rImg,5,105,25,urldecode($pu." ms"),$cor); //u of p
imagestring($rImg,5,105,155,urldecode(/*$pv.*/"v ms"),$cor); //v of p

imagestring($rImg,5,275,90,urldecode($qm." kg"),$cor); //mass of q
imagestring($rImg,5,275,25,urldecode($qu." ms"),$cor); //u of q
imagestring($rImg,5,275,155,urldecode($qv." ms"),$cor); //v of q
$text = 'A particle P of mass '.$pm.' kg is moving with speed '.$pu.' ms on a smooth horizontal plane. Particle Q of mass '.$qm.' kg is at rest on the plane. Particle P collides with particle Q and after the collision Q moves off with speed '.$qv.' ms. Find:\n\na) the speed and direction of the motion of P after the collision\n\nb) the magnitude of the impulse received by P in the collision.';

$text = wordwrap($text, 45, '\n');

$lines=explode('\n',$text);

for($i=0; $i< count($lines); $i++)
{	
	imagestring($rImg,5,1,200+(15*$i),urldecode($lines[$i]),$cor);
}

//Header e output
header('Content-type: image/jpeg');
imagejpeg($rImg,NULL,100);
}
}
?>