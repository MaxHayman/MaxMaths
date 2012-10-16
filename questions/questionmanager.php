<?php
class QuestionManager
{

	private $module = "m1";
	private $type = "collisions";
	private $question;

	function init($module, $type)
	{	
		$this->module = $module;
		$this->type = $type;
		include($module.'/'.$type.'.php');
		$this->question = new Question();
	}

	function generateQuestion()
	{	
		return $this->question->generateQuestion();
	}

	function generateDiagram($id)
	{	
		return $this->question->generateDiagram($id);
	}

	function generateAnswer()
	{	
		return $question->generateAnswer();
	}

	function generateHelp()
	{	
		return $question->generateHelp();
	}
}