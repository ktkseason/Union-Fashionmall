<?php

namespace Libs\Database;

use PDOException;

class Stocks
{
    private $db = null;

    public function __construct(MySQL $db)
    {
        $this->db = $db->connect();
    }

    public function getGender($gender_id)
    {
        $statement = $this->db->query("
            SELECT name FROM genders WHERE id='$gender_id';
        ");
        $name = $statement->fetch()->name;
        return $name ?? false;
    }
    public function getTopic($topic_id)
    {
        $statement = $this->db->query("
            SELECT name FROM topics WHERE id='$topic_id';
        ");
        $name = $statement->fetch()->name;
        return $name ?? false;
    }

    public function getCategory($category_id)
    {
        $statement = $this->db->query("
            SELECT name FROM categories WHERE id='$category_id';
        ");
        $name = $statement->fetch()->name;
        return $name ?? false;
    }

    public function getCategoryAll()
    {
        $statement = $this->db->query("
            SELECT * FROM categories;
        ");
        return $statement->fetchAll();
    }

    public function getCategoryByGenderAndTopic($gender_id, $topic_id)
    {
        $statement = $this->db->query("
            SELECT id, name FROM categories WHERE gender_id='$gender_id' AND topic_id='$topic_id' ;
        ");
        return $statement->fetchAll();
    }

    public function getBrandAll()
    {
        $statement = $this->db->query("
            SELECT id, name FROM brands;
        ");
        return $statement->fetchAll();
    }

    public function getColorAll()
    {
        $statement = $this->db->query("
            SELECT id, name, value FROM colors;
        ");
        return $statement->fetchAll();
    }

    public function getSizesAll($topic_id)
    {
        $statement = $this->db->query("
            SELECT id, name FROM sizes WHERE topic_id='$topic_id';
        ");
        return $statement->fetchAll();
    }

    // public function getProducts($gender, $topic)
    // {
    //     $statement = $this->db->query("
    //         SELECT stocks.stock FROM stocks 
    //         LEFT JOIN products on stocks.product_id = products.id
    //         LEFT JOIN sizes on stocks.size_id = sizes.id
    //     ");

    //     return $statement->fetchAll();
    // }
}
