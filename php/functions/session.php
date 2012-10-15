<?php
class Session
{
	protected static $vars = array();
	protected static $sessid = '000000';

	public static function Load()
	{
		// Check for IP Bans
		/*if(file_exists(Main::getRoot().'/data/cache/ipbans/'.str_replace('.','_',$_SERVER['REMOTE_ADDR']).'.php'))
		{
			die('<meta http-equiv="refresh" content="0;url=http://www.smouch.net/lol/?You_are_banned.">');
		}*/
		
		// Load Session
		self::Retrieve();
		
		// Data Modifications
		$styleid = isset($_REQUEST['styleid']) ? $_REQUEST['styleid'] : null;
		if(is_numeric($styleid)) { self::setStyle(); }
		$realmid = isset($_REQUEST['instituteid']) ? $_REQUEST['instituteid'] : null;
		if(is_numeric($realmid) && !isset($_GET['activescript'])) { self::setInstitute(); }
		
		// Update Privelages
		self::set('last_action',time());
		self::set('last_url',self::getURL());
		
		self::UpdatePrivelages();
	}
	public static function get($x)
	{
		$x = strtolower($x);
		
		if(empty(self::$vars[$x]))
		{
			return;
		}
		
		return self::$vars[$x];
	}
	public static function set($x,$y)
	{
		$x = strtolower($x);
		self::$vars[$x] = $y;
	}
	public static function setStyle()
	{
		self::$vars['styleid'] = 1;
	}
	public static function setInstitute()
	{
		//if(is_numeric($_GET['realmid']) && !empty(Config::$config['realms'][$_GET['realmid']][0]))
	//	{
			self::$vars['instituteid'] = $_GET['instituteid'];
	//	}
	}
	public static function UpdatePrivelages()
	{
		if(self::get('loggedin'))
		{
			// Check for Multiple Instances
			/*$lock = Main::getRoot()."/data/cache/locks/lock_".self::get('acct').".php";
			if(file_exists($lock))
			{
				require_once($lock);
				if($account_lock != $_SERVER['REMOTE_ADDR']) { 
					self::Reset();
					return; 
				}
			}
			else
			{
				self::Reset();
				return;
			}*/
			
			// Check for Session Expiry
			if((time() - self::get('last_action')) > 1000)
			{
				self::Reset();
				return;
			}
			
			// Update GM Permissions
			$flags = self::get('gm_flags_realm_'.self::get('realmid'));
			
			if($flags == '4') {
				self::set('admin',true);
				self::set('staff',true);
			}
			elseif($flags == '3')
			{
				self::set('admin',false);
				self::set('staff',true);
			}
			else
			{
				self::set('admin',false);
				self::set('staff',false);
			}
		}
		else
		{
			self::set('loggedin',false);
			self::set('admin',false);
			self::set('staff',false);
		}
	}
	public static function isRootAdmin()
	{
		$loggedin = isset(self::$vars['loggedin']) ? self::$vars['loggedin'] : null;
		if(!$loggedin) {
			return false;
		}
		
		if(in_array(strtoupper(self::get('login')),Config::$config['users']['rootadmin'])) {
			return true;
		}
		
		return false;
	}
	public static function isSuperAdmin()
	{
		if(!self::$vars['loggedin']) {
			return false;
		}
		
		if(in_array(strtoupper(self::$vars['login']),Config::$config['users']['rootadmin'])) {
			return true;
		}
		
		if(in_array(strtoupper(self::$vars['login']),Config::$config['users']['superadmin'])) {
			return true;
		}
		
		return false;
	}
	public static function isAdmin()
	{
		if(self::$vars['admin'])
		{
			return true;
		}
		return false;
	}
	public static function isStaff()
	{
		if(self::$vars['staff'])
		{
			return true;
		}
		return false;
	}
	public static function isLoggedIn()
	{
		if(self::get('loggedin')) {
			return true;
		}
		
		return false;
	}
	public static function Reset()
	{
		self::set('loggedin',false);
		self::set('staff',false);
		self::set('admin',false);
		self::set('institution','0');
	}
	public static function Save()
	{
		MySQL::Open('W');
		$q = mysql_query("REPLACE INTO `sessions` (`ip_address`,`session_id`,`serial`,`lastaction`) VALUES ('".mysql_real_escape_string($_SERVER['REMOTE_ADDR'])."','".mysql_real_escape_string(self::$sessid)."','".mysql_real_escape_string(serialize(self::$vars))."','".mysql_real_escape_string(time())."');") or die(mysql_error());
	}
	public static function Retrieve()
	{
		MySQL::Open('W');
		$q = mysql_query("SELECT * FROM `sessions` WHERE `ip_address` = '".mysql_real_escape_string($_SERVER['REMOTE_ADDR'])."' AND `session_id` = '".mysql_real_escape_string(self::$sessid)."' LIMIT 1;") or die(mysql_error());
		if(mysql_num_rows($q) > 0)
		{
			while ($row = mysql_fetch_array($q,MYSQL_ASSOC))
			{
				self::$vars = unserialize($row['serial']);
			}
		}
		else
		{
			self::$vars['create_date'] = time();
			self::$vars['create_addr'] = $_SERVER['REMOTE_ADDR'];
			self::$vars['instituteid'] = 0;
			self::$vars['styleid'] = 1;
		}
		return true;
	}
	public static function MakeLogDump()
	{
		$x = '';
		foreach(self::$vars as $key => $value)
		{
			$x .= 'session->'.$key.'|=|'.$value.'
';
			if(is_array($value))
			{
				foreach($value as $key2 => $value2)
				{
					$x .= 'session->'.$key.'->'.$key2.'|=|'.$value2.'
';
				}
			}
		}
		return($x);
	}
	protected static function getURL()
	{
		$s = empty($_SERVER["HTTPS"]) ? '' : ($_SERVER["HTTPS"] == "on") ? "s" : "";
		$protocol = substr(strtolower($_SERVER["SERVER_PROTOCOL"]), 0, strpos(strtolower($_SERVER["SERVER_PROTOCOL"]), "/")) . $s;
		$port = ($_SERVER["SERVER_PORT"] == "80") ? "" : (":".$_SERVER["SERVER_PORT"]);
		return $protocol . "://" . $_SERVER['SERVER_NAME'] . $port . $_SERVER['REQUEST_URI'];
	}
}
?>