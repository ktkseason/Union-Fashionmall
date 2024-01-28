<?php

namespace Libs\Database;

use PDOException;

class Functions
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

	public function getAll()
	{
		$statement = $this->db->query("
            SELECT users.*, roles.name AS role, roles.value
            FROM users LEFT JOIN roles
            ON users.role_id = roles.id
        ");

		return $statement->fetchAll();
	}

	public function updatePhoto($id, $name)
	{
		$statement = $this->db->prepare(
			"
            UPDATE users SET photo=:name WHERE id = :id"
		);
		$statement->execute([':name' => $name, ':id' => $id]);

		return $statement->rowCount();
	}

	public function delete($id)
	{
		$statement = $this->db->prepare("
            DELETE FROM users WHERE id = :id
        ");

		$statement->execute([':id' => $id]);

		return $statement->rowCount();
	}
}
