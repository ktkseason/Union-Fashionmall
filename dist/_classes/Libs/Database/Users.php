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

	public function addUser($input)
	{
		try {
			$query = " INSERT INTO users (name, email, password, created_at) VALUES (:name, :email, :password, NOW())";

			$statement = $this->db->prepare($query);
			$statement->execute($input);

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

	public function addFeedback($input)
	{
		try {
			$query = " INSERT INTO feedbacks (name, email, subject, feedback, created_at) VALUES (:name, :email, :subject, :feedback, NOW())";

			$statement = $this->db->prepare($query);
			$statement->execute($input);

			return $this->db->lastInsertId();
		} catch (PDOException $e) {
			return $e->getMessage()();
		}
	}
	public function addWish($input)
	{
		try {
			$query = " INSERT INTO wishlist (product_id, customer_id, created_at) VALUES (:product_id, :customer_id, NOW())";

			$statement = $this->db->prepare($query);
			$statement->execute($input);

			return $this->db->lastInsertId();
		} catch (PDOException $e) {
			return $e->getMessage()();
		}
	}

	public function getWishAll($customer_id)
	{
		$statement = $this->db->prepare("
            SELECT product_id FROM wishlist WHERE customer_id = :customer_id;
        ");
		$statement->execute([':customer_id' => $customer_id]);
		return $statement->fetchAll();
	}

	public function deleteWish($product_id)
	{
		$statement = $this->db->prepare("
            DELETE FROM wishlist WHERE product_id = :product_id
        ");

		$statement->execute([':product_id' => $product_id]);

		return $statement->rowCount();
	}

	public function getFeedbackAll()
	{
		$statement = $this->db->prepare("
            SELECT * FROM feedbacks;
        ");
		$statement->execute();
		return $statement->fetchAll();
	}

	public function addCheckout($input)
	{
		try {
			$query = " INSERT INTO checkouts (user_id, customer_information, card_information, products, created_at) 
			VALUES (:user_id, :customer_information, :card_information, :products, NOW())";

			$statement = $this->db->prepare($query);
			$statement->execute($input);

			return $this->db->lastInsertId();
		} catch (PDOException $e) {
			return $e->getMessage()();
		}
	}
}
