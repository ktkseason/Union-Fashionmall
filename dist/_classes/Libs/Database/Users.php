<?php

namespace Libs\Database;

use PDOException;

class Users
{
	private $db = null;

	public function __construct(MySQL $db)
	{
		$this->db = $db->connect();
	}

	public function insertUser($data)
	{
		try {
			$query = " INSERT INTO users (name, email, password, created_at) VALUES (:name, :email, :password, NOW())";

			$statement = $this->db->prepare($query);
			$statement->execute($data);

			return $this->db->lastInsertId();
		} catch (PDOException $e) {
			return $e->getMessage()();
		}
	}

	public function loginCheck($email, $password)
	{
		$statement = $this->db->prepare("
			SELECT users.* FROM users 
			WHERE users.email = :email
			AND users.password = :password
		");
		$statement->execute([
			':email' => $email,
			':password' => $password
		]);
		$row = $statement->fetch();
		return $row;
	}
}
