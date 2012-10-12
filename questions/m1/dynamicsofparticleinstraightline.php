<?php

class Question
{

function htmlTOP()
{
echo '
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>M1 - Dynamics of a particle moving in a straight line</title>
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
$m = rand(10,40)*0.1;//
$f = rand(20,40);//
$ta = rand(1,3);//
$ba = rand(4,5);//
$angle = ($ta/$ba);//

$rea = round($f*sin(atan($angle))+$m*9.8*(cos(atan($angle))),2); // the answer

$acc = round(($f*cos(atan($angle))-$m*9.8*sin(atan($angle)))/$m,2);

mysql_query("insert into `mathsdb`.`questions` ( `module`, `type`, `vars`, `answer`) values ( 'm1', 'dynamicsofparticleinstraightline', 'm=".$m.";f=".$f.";ta=".$ta.";ba=".$ba.";angle=".$angle.";rea=".$rea.";acc=".$acc."', 'lol')");

$id = mysql_insert_id();

echo "<img src='?module=m1&type=dynamicsofparticleinstraightline&info=diagram&extrainfo=".$id."'>";

echo "<h3><u>Answer</u></h3>
<div id='custom'> <a href='#' class='button'>Press Here</a>
  <div class='box'> a) ".$rea." N<br>b) ".$acc." ms2</div>
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
$rImg = ImageCreateFromJPEG("images/dynamicsofparticleinstraightline1.jpg");

//Definir cor
$cor = imagecolorallocate($rImg, 0, 0, 0);

//Escrever nome
imagestring($rImg,5,180,60,urldecode($m." kg"),$cor); //mass of p
imagestring($rImg,5,100,60,urldecode($f." N"),$cor); //u of p
imagestring($rImg,5,330,95,urldecode($ta),$cor); //u of p
imagestring($rImg,5,330,120,urldecode($ba),$cor); //u of p

$text = 'The diagram shows a box of mass '.$m.' kg being pushed up a smooth plane by a horizontal force of magnitude '.$f.' N. The plane is inclined to the horizontal at angle alpha. Find:\n\na) the normal reaction between the box and the plane\n\nb) the acceleration of the box up the plane.';

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