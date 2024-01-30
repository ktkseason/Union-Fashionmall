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
        $statement = $this->db->prepare("
            SELECT name FROM genders WHERE id = :gender_id;
        ");
        $statement->execute([':gender_id' => $gender_id]);
        $name = $statement->fetch()->name;
        return $name ?? false;
    }
    public function getTopic($topic_id)
    {
        $statement = $this->db->prepare("
            SELECT name FROM topics WHERE id= :topic_id;
        ");
        $statement->execute([':topic_id' => $topic_id]);
        $name = $statement->fetch()->name;
        return $name ?? false;
    }
    public function getCategory($category_id)
    {
        $statement = $this->db->prepare("
            SELECT name FROM categories WHERE id=:category_id;
        ");
        $statement->execute([':category_id' => $category_id]);
        $name = $statement->fetch()->name;
        return $name ?? false;
    }

    public function getCategoryByGenderAndTopic($gender_id, $topic_id)
    {
        $statement = $this->db->prepare("
        SELECT id, name FROM categories WHERE gender_id = :gender_id AND topic_id = :topic_id ;
        ");
        $statement->execute([':gender_id' => $gender_id, ':topic_id' => $topic_id]);
        return $statement->fetchAll();
    }

    public function getCategoryAll()
    {
        $statement = $this->db->query("
            SELECT * FROM categories;
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

    public function getSizeAll($topic_id)
    {
        $statement = $this->db->prepare("
            SELECT id, name FROM sizes WHERE topic_id = :topic_id;
        ");
        $statement->execute([':topic_id' => $topic_id]);
        return $statement->fetchAll();
    }

    public function addProduct($input)
    {
        try {
            $query = " INSERT INTO products (name, gender_id, topic_id, category_id, brand_id, color_id, price, detail, created_at) VALUES (:name, :gender_id, :topic_id, :category_id, :brand_id, :color_id, :price, :detail, NOW())";

            $statement = $this->db->prepare($query);
            $statement->execute($input);

            return $this->db->lastInsertId();
        } catch (PDOException $e) {
            return $e->getMessage()();
        }
    }

    public function addImage($input)
    {
        try {
            $query = " INSERT INTO images (name, product_id, created_at) VALUES (:name, :product_id, NOW())";

            $statement = $this->db->prepare($query);
            $statement->execute($input);

            return $this->db->lastInsertId();
        } catch (PDOException $e) {
            return $e->getMessage()();
        }
    }

    public function addStock($input)
    {
        try {
            $query = " INSERT INTO stocks (product_id, size_id, stock, created_at) VALUES (:product_id, :size_id, :stock, NOW())";

            $statement = $this->db->prepare($query);
            $statement->execute($input);

            return $this->db->lastInsertId();
        } catch (PDOException $e) {
            return $e->getMessage()();
        }
    }

    public function getProductByGenderAndTopic($gender_id, $topic_id)
    {
        // $statement = $this->db->query("
        //     SELECT products.name, categories.name as category, brands.name as brand, colors.name as color, products.price, products.detail, sizes.name as size, stocks.stock, stocks.created_at FROM stocks
        //     LEFT JOIN sizes ON sizes.id = stocks.size_id
        //     LEFT JOIN products ON products.id = stocks.product_id
        //     LEFT JOIN categories ON categories.id = products.category_id
        //     LEFT JOIN brands ON brands.id = products.brand_id
        //     LEFT JOIN colors ON colors.id = products.color_id
        //     WHERE products.gender_id = '$gender_id' AND products.topic_id = '$topic_id'
        // ");

        $statement = $this->db->prepare("
            SELECT products.id, products.name, categories.name as category, brands.name as brand, colors.name as color, products.price, products.detail FROM products
            LEFT JOIN categories ON categories.id = products.category_id
            LEFT JOIN brands ON brands.id = products.brand_id
            LEFT JOIN colors ON colors.id = products.color_id
            WHERE products.gender_id = :gender_id AND products.topic_id = :topic_id        
        ");
        $statement->execute([':gender_id' => $gender_id, ':topic_id' => $topic_id]);
        return $statement->fetchAll();
    }

    public function getSizesAndStocksByProduct($product_id)
    {
        $statement = $this->db->prepare("
            SELECT stocks.id, stocks.size_id, sizes.name as size, stocks.stock FROM stocks 
            LEFT JOIN sizes ON sizes.id = stocks.size_id
            WHERE stocks.product_id = :product_id
        ");
        $statement->execute([':product_id' => $product_id]);
        return $statement->fetchAll();
    }
    public function getImageByProduct($product_id)
    {
        $statement = $this->db->prepare("
            SELECT id as image_id, name as image FROM images
            WHERE product_id = :product_id
        ");
        $statement->execute([':product_id' => $product_id]);
        return $statement->fetchAll();
    }

    public function deleteImage($id)
    {
        $statement = $this->db->prepare("
            DELETE FROM images WHERE id = :id
        ");

        $statement->execute([':id' => $id]);

        return $statement->rowCount();
    }

    public function updateProduct($input)
    {

        $statement = $this->db->prepare("
            UPDATE products SET name = :name, color_id = :color_id, price = :price, detail = :detail, updated_at = NOW() WHERE id = :product_id            
        ");

        $statement->execute($input);
        return $statement->rowCount();
    }

    public function deleteImageByProduct($id)
    {
        $statement = $this->db->prepare("
            DELETE FROM images WHERE product_id = :id
        ");

        $statement->execute([':id' => $id]);

        return $statement->rowCount();
    }

    public function deleteStock($id)
    {
        $statement = $this->db->prepare("
            DELETE FROM stocks WHERE id = :id
        ");

        $statement->execute([':id' => $id]);

        return $statement->rowCount();
    }

    public function deleteStockByProduct($id)
    {
        $statement = $this->db->prepare("
            DELETE FROM stocks WHERE product_id = :id
        ");

        $statement->execute([':id' => $id]);

        return $statement->rowCount();
    }

    public function deleteProduct($id)
    {
        $statement = $this->db->prepare("
            DELETE FROM products WHERE id = :id
        ");

        $statement->execute([':id' => $id]);

        return $statement->rowCount();
    }
}