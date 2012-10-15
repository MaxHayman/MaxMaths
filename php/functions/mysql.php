<?php
/* ======================================================
   == Max Maths Website System                         ==
   ======================================================
   == Copyright (C) Max Hayman 2012                    ==
   == Author: Max Hayman <maxhayman@maxhayman.co.uk>   ==
   ======================================================
*/
class MySQL
{
	protected static $thread_id;
	
	public static function Open($conn="W")
	{
		if($conn == self::$thread_id)
		{
			return true;
		}
	
		switch($conn)
		{
			case 'W': // Website
					$c = Config::$config['database']['W'];
				break;
				
			default:
					return false;
				break;
		}
		
		self::Close();
		
		$db = mysql_connect($c[0],$c[1],$c[2]) or die(mysql_error());
		mysql_select_db($c[3],$db) or die(mysql_error());
		
		self::$thread_id = $conn;
		return true;
	}
	
	public static function Close()
	{
		if(self::$thread_id != 0)
		{
			self::$thread_id = 0;
			mysql_close();
			return true;
		}
	}
}
?>