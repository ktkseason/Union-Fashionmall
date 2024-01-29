<?php

namespace Helpers;

class Auth
{
	static $loginUrl = '/public/index.php';

	static function check()
	{
		session_start();
		if (isset($_SESSION['customer_auth'])) {
			if (isset($_SESSION['customer'])) {
				return $_SESSION['customer'];
			}
		} else {
			HTTP::redirect(static::$loginUrl);
		}
	}

	static function adminCheck()
	{
		session_start();
		if (isset($_SESSION['admin_auth'])) {
			if (isset($_SESSION['admin'])) {
				return $_SESSION['admin'];
			}
		} else {
			HTTP::redirect(static::$loginUrl);
		}
	}

	static function authDestroy()
	{
		session_start();
		unset($_SESSION['customer_auth']);
		unset($_SESSION['customer']);
		HTTP::redirect("/public/index.php");
	}

	static function adminAuthDestroy()
	{
		session_start();
		unset($_SESSION['admin_auth']);
		unset($_SESSION['admin']);
		HTTP::redirect("/public/index.php");
	}
}
