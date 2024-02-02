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
	public function passwordCheck($password)
	{
		$statement = $this->db->prepare("
			SELECT users.* FROM users 
			WHERE users.password = :password
		");
		$statement->execute(['password' => $password]);
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

	public function getCheckoutByUser($user_id)
	{
		$statement = $this->db->prepare("
            SELECT * FROM checkouts WHERE user_id = :user_id ORDER BY created_at DESC;
        ");
		$statement->execute([':user_id' => $user_id]);
		return $statement->fetchAll();
	}
	public function getCheckoutByStatus()
	{
		$statement = $this->db->prepare("
            SELECT * FROM checkouts WHERE  status= :status ORDER BY created_at DESC;
        ");
		$statement->execute([':status' => 0]);
		return $statement->fetchAll();
	}
	public function getCheckoutAll()
	{
		$statement = $this->db->prepare("
            SELECT * FROM checkouts ORDER BY created_at DESC;
        ");
		$statement->execute();
		return $statement->fetchAll();
	}

	public function updateCheckout($checkout_id)
	{

		$statement = $this->db->prepare("
            UPDATE checkouts SET status = :status, updated_at = NOW() WHERE id = :checkout_id            
        ");

		$statement->execute([':status' => 1, ':checkout_id' => $checkout_id]);
		return $statement->rowCount();
	}
	public function updateUserInfo($name, $email, $id)
	{

		$statement = $this->db->prepare("
            UPDATE users SET name = :name, email = :email, updated_at = NOW() WHERE id = :id            
        ");

		$statement->execute([':name' => $name, ':email' => $email, ':id' => $id]);

		$statement = $this->db->prepare("
			SELECT users.* FROM users 
			WHERE users.id = :id
		");
		$statement->execute(['id' => $id]);
		$row = $statement->fetch();
		return $row;
	}
	public function updatePassword($password, $id)
	{

		$statement = $this->db->prepare("
            UPDATE users SET password = :password, updated_at = NOW() WHERE id = :id            
        ");

		$statement->execute([':password' => $password, ':id' => $id]);

		$statement = $this->db->prepare("
			SELECT users.* FROM users 
			WHERE users.id = :id
		");
		$statement->execute(['id' => $id]);
		$row = $statement->fetch();
		return $row;
	}
}
