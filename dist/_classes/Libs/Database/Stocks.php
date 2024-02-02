<?php

namespace Libs\Database;

use PDOException;
use PDO;

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
    public function getBrand($brand_id)
    {
        $statement = $this->db->prepare("
            SELECT name FROM brands WHERE id=:brand_id;
        ");
        $statement->execute([':brand_id' => $brand_id]);
        $name = $statement->fetch()->name;
        return $name ?? false;
    }
    public function getColor($color_id)
    {
        $statement = $this->db->prepare("
            SELECT name FROM colors WHERE id=:color_id;
        ");
        $statement->execute([':color_id' => $color_id]);
        $name = $statement->fetch()->name;
        return $name ?? false;
    }
    public function getStock($stock_id)
    {
        $statement = $this->db->prepare("
            SELECT stocks.id, stocks.product_id, stocks.size_id, stocks.stock, sizes.name as size FROM stocks
            LEFT JOIN sizes ON sizes.id = stocks.size_id
            WHERE stocks.id=:stock_id;
        ");
        $statement->execute([':stock_id' => $stock_id]);
        return $statement->fetch() ?? false;
    }

    public function getCategoryByGenderAndTopic($gender_id, $topic_id)
    {
        $statement = $this->db->prepare("
        SELECT id, name FROM categories WHERE gender_id = :gender_id AND topic_id = :topic_id ORDER BY name;
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
            SELECT id, name, image FROM brands ORDER BY name;
        ");
        return $statement->fetchAll();
    }

    public function getColorAll()
    {
        $statement = $this->db->query("
            SELECT id, name, value FROM colors ORDER BY name;
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
    public function getProductByGenderAndTopicLatest($gender_id, $topic_id)
    {
        $statement = $this->db->prepare("
            SELECT products.id, products.name, categories.name as category, brands.name as brand, colors.name as color, products.price, products.detail FROM products
            LEFT JOIN categories ON categories.id = products.category_id
            LEFT JOIN brands ON brands.id = products.brand_id
            LEFT JOIN colors ON colors.id = products.color_id
            WHERE products.gender_id = :gender_id AND products.topic_id = :topic_id ORDER BY products.created_at DESC   
        ");
        $statement->execute([':gender_id' => $gender_id, ':topic_id' => $topic_id]);
        return $statement->fetchAll();
    }
    public function getProductByGenderAndTopicHighFirst($gender_id, $topic_id)
    {
        $statement = $this->db->prepare("
            SELECT products.id, products.name, categories.name as category, brands.name as brand, colors.name as color, products.price, products.detail FROM products
            LEFT JOIN categories ON categories.id = products.category_id
            LEFT JOIN brands ON brands.id = products.brand_id
            LEFT JOIN colors ON colors.id = products.color_id
            WHERE products.gender_id = :gender_id AND products.topic_id = :topic_id ORDER BY products.price DESC   
        ");
        $statement->execute([':gender_id' => $gender_id, ':topic_id' => $topic_id]);
        return $statement->fetchAll();
    }
    public function getProductByGenderAndTopicLowFirst($gender_id, $topic_id)
    {
        $statement = $this->db->prepare("
            SELECT products.id, products.name, categories.name as category, brands.name as brand, colors.name as color, products.price, products.detail FROM products
            LEFT JOIN categories ON categories.id = products.category_id
            LEFT JOIN brands ON brands.id = products.brand_id
            LEFT JOIN colors ON colors.id = products.color_id
            WHERE products.gender_id = :gender_id AND products.topic_id = :topic_id ORDER BY products.price   
        ");
        $statement->execute([':gender_id' => $gender_id, ':topic_id' => $topic_id]);
        return $statement->fetchAll();
    }
    public function getProductLatest($limit)
    {
        $statement = $this->db->prepare("
            SELECT products.id, products.name, categories.name as category, brands.name as brand, colors.name as color, products.price, products.detail FROM products
            LEFT JOIN categories ON categories.id = products.category_id
            LEFT JOIN brands ON brands.id = products.brand_id
            LEFT JOIN colors ON colors.id = products.color_id ORDER BY products.created_at DESC LIMIT :limit
        ");
        $statement->bindParam(':limit', $limit, PDO::PARAM_INT);
        $statement->execute();
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

    public function updateStock($input)
    {

        $statement = $this->db->prepare("
            UPDATE stocks SET stock = :stock, updated_at = NOW() WHERE id = :stock_id            
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

    public function getProduct($id)
    {
        $statement = $this->db->prepare("
            SELECT products.id, products.name, genders.name as gender, products.gender_id, products.topic_id, topics.name as topic, products.category_id, categories.name as category, products.brand_id, brands.name as brand, colors.name as color, products.price, products.detail FROM products
            LEFT JOIN categories ON categories.id = products.category_id
            LEFT JOIN brands ON brands.id = products.brand_id
            LEFT JOIN colors ON colors.id = products.color_id
            LEFT JOIN genders ON genders.id = products.gender_id
            LEFT JOIN topics ON topics.id = products.topic_id
            WHERE products.id=:id;
        ");
        $statement->execute([':id' => $id]);
        $name = $statement->fetch();
        return $name ?? false;
    }

    public function getProductByGenderTopicAndCategory($gender_id, $topic_id, $category_id)
    {
        $statement = $this->db->prepare("
            SELECT products.id, products.name, categories.name as category, brands.name as brand, colors.name as color, products.price, products.detail FROM products
            LEFT JOIN categories ON categories.id = products.category_id
            LEFT JOIN brands ON brands.id = products.brand_id
            LEFT JOIN colors ON colors.id = products.color_id
            WHERE products.gender_id = :gender_id AND products.topic_id = :topic_id AND products.category_id = :category_id       
        ");
        $statement->execute([':gender_id' => $gender_id, ':topic_id' => $topic_id, ':category_id' => $category_id]);
        return $statement->fetchAll();
    }
    public function getProductByGenderTopicAndCategoryLatest($gender_id, $topic_id, $category_id)
    {
        $statement = $this->db->prepare("
            SELECT products.id, products.name, categories.name as category, brands.name as brand, colors.name as color, products.price, products.detail FROM products
            LEFT JOIN categories ON categories.id = products.category_id
            LEFT JOIN brands ON brands.id = products.brand_id
            LEFT JOIN colors ON colors.id = products.color_id
            WHERE products.gender_id = :gender_id AND products.topic_id = :topic_id AND products.category_id = :category_id ORDER BY products.created_at DESC 
        ");
        $statement->execute([':gender_id' => $gender_id, ':topic_id' => $topic_id, ':category_id' => $category_id]);
        return $statement->fetchAll();
    }
    public function getProductByGenderTopicAndCategoryHighFirst($gender_id, $topic_id, $category_id)
    {
        $statement = $this->db->prepare("
            SELECT products.id, products.name, categories.name as category, brands.name as brand, colors.name as color, products.price, products.detail FROM products
            LEFT JOIN categories ON categories.id = products.category_id
            LEFT JOIN brands ON brands.id = products.brand_id
            LEFT JOIN colors ON colors.id = products.color_id
            WHERE products.gender_id = :gender_id AND products.topic_id = :topic_id AND products.category_id = :category_id ORDER BY products.price DESC 
        ");
        $statement->execute([':gender_id' => $gender_id, ':topic_id' => $topic_id, ':category_id' => $category_id]);
        return $statement->fetchAll();
    }
    public function getProductByGenderTopicAndCategoryLowFirst($gender_id, $topic_id, $category_id)
    {
        $statement = $this->db->prepare("
            SELECT products.id, products.name, categories.name as category, brands.name as brand, colors.name as color, products.price, products.detail FROM products
            LEFT JOIN categories ON categories.id = products.category_id
            LEFT JOIN brands ON brands.id = products.brand_id
            LEFT JOIN colors ON colors.id = products.color_id
            WHERE products.gender_id = :gender_id AND products.topic_id = :topic_id AND products.category_id = :category_id ORDER BY products.price 
        ");
        $statement->execute([':gender_id' => $gender_id, ':topic_id' => $topic_id, ':category_id' => $category_id]);
        return $statement->fetchAll();
    }
    public function getProductByGenderTopicAndBrand($gender_id, $topic_id, $brand_id)
    {
        $statement = $this->db->prepare("
            SELECT products.id, products.name, categories.name as category, brands.name as brand, colors.name as color, products.price, products.detail FROM products
            LEFT JOIN categories ON categories.id = products.category_id
            LEFT JOIN brands ON brands.id = products.brand_id
            LEFT JOIN colors ON colors.id = products.color_id
            WHERE products.gender_id = :gender_id AND products.topic_id = :topic_id AND products.brand_id = :brand_id       
        ");
        $statement->execute([':gender_id' => $gender_id, ':topic_id' => $topic_id, ':brand_id' => $brand_id]);
        return $statement->fetchAll();
    }
    public function getProductByGenderTopicAndBrandLatest($gender_id, $topic_id, $brand_id)
    {
        $statement = $this->db->prepare("
            SELECT products.id, products.name, categories.name as category, brands.name as brand, colors.name as color, products.price, products.detail FROM products
            LEFT JOIN categories ON categories.id = products.category_id
            LEFT JOIN brands ON brands.id = products.brand_id
            LEFT JOIN colors ON colors.id = products.color_id
            WHERE products.gender_id = :gender_id AND products.topic_id = :topic_id AND products.brand_id = :brand_id ORDER BY products.created_at DESC    
        ");
        $statement->execute([':gender_id' => $gender_id, ':topic_id' => $topic_id, ':brand_id' => $brand_id]);
        return $statement->fetchAll();
    }
    public function getProductByGenderTopicAndBrandHighFirst($gender_id, $topic_id, $brand_id)
    {
        $statement = $this->db->prepare("
            SELECT products.id, products.name, categories.name as category, brands.name as brand, colors.name as color, products.price, products.detail FROM products
            LEFT JOIN categories ON categories.id = products.category_id
            LEFT JOIN brands ON brands.id = products.brand_id
            LEFT JOIN colors ON colors.id = products.color_id
            WHERE products.gender_id = :gender_id AND products.topic_id = :topic_id AND products.brand_id = :brand_id ORDER BY products.price DESC    
        ");
        $statement->execute([':gender_id' => $gender_id, ':topic_id' => $topic_id, ':brand_id' => $brand_id]);
        return $statement->fetchAll();
    }
    public function getProductByGenderTopicAndBrandLowFirst($gender_id, $topic_id, $brand_id)
    {
        $statement = $this->db->prepare("
            SELECT products.id, products.name, categories.name as category, brands.name as brand, colors.name as color, products.price, products.detail FROM products
            LEFT JOIN categories ON categories.id = products.category_id
            LEFT JOIN brands ON brands.id = products.brand_id
            LEFT JOIN colors ON colors.id = products.color_id
            WHERE products.gender_id = :gender_id AND products.topic_id = :topic_id AND products.brand_id = :brand_id ORDER BY products.price     
        ");
        $statement->execute([':gender_id' => $gender_id, ':topic_id' => $topic_id, ':brand_id' => $brand_id]);
        return $statement->fetchAll();
    }
    public function getProductByGenderTopicAndColor($gender_id, $topic_id, $color_id)
    {
        $statement = $this->db->prepare("
            SELECT products.id, products.name, categories.name as category, brands.name as brand, colors.name as color, products.price, products.detail FROM products
            LEFT JOIN categories ON categories.id = products.category_id
            LEFT JOIN brands ON brands.id = products.brand_id
            LEFT JOIN colors ON colors.id = products.color_id
            WHERE products.gender_id = :gender_id AND products.topic_id = :topic_id AND products.color_id = :color_id       
        ");
        $statement->execute([':gender_id' => $gender_id, ':topic_id' => $topic_id, ':color_id' => $color_id]);
        return $statement->fetchAll();
    }
    public function getProductByGenderTopicAndColorLatest($gender_id, $topic_id, $color_id)
    {
        $statement = $this->db->prepare("
            SELECT products.id, products.name, categories.name as category, brands.name as brand, colors.name as color, products.price, products.detail FROM products
            LEFT JOIN categories ON categories.id = products.category_id
            LEFT JOIN brands ON brands.id = products.brand_id
            LEFT JOIN colors ON colors.id = products.color_id
            WHERE products.gender_id = :gender_id AND products.topic_id = :topic_id AND products.color_id = :color_id ORDER BY products.created_at DESC    
        ");
        $statement->execute([':gender_id' => $gender_id, ':topic_id' => $topic_id, ':color_id' => $color_id]);
        return $statement->fetchAll();
    }
    public function getProductByGenderTopicAndColorHighFirst($gender_id, $topic_id, $color_id)
    {
        $statement = $this->db->prepare("
            SELECT products.id, products.name, categories.name as category, brands.name as brand, colors.name as color, products.price, products.detail FROM products
            LEFT JOIN categories ON categories.id = products.category_id
            LEFT JOIN brands ON brands.id = products.brand_id
            LEFT JOIN colors ON colors.id = products.color_id
            WHERE products.gender_id = :gender_id AND products.topic_id = :topic_id AND products.color_id = :color_id ORDER BY products.price DESC    
        ");
        $statement->execute([':gender_id' => $gender_id, ':topic_id' => $topic_id, ':color_id' => $color_id]);
        return $statement->fetchAll();
    }
    public function getProductByGenderTopicAndColorLowFirst($gender_id, $topic_id, $color_id)
    {
        $statement = $this->db->prepare("
            SELECT products.id, products.name, categories.name as category, brands.name as brand, colors.name as color, products.price, products.detail FROM products
            LEFT JOIN categories ON categories.id = products.category_id
            LEFT JOIN brands ON brands.id = products.brand_id
            LEFT JOIN colors ON colors.id = products.color_id
            WHERE products.gender_id = :gender_id AND products.topic_id = :topic_id AND products.color_id = :color_id ORDER BY products.price   
        ");
        $statement->execute([':gender_id' => $gender_id, ':topic_id' => $topic_id, ':color_id' => $color_id]);
        return $statement->fetchAll();
    }

    public function getSimilarProduct($gender_id, $topic_id, $category_id, $product_id)
    {
        $statement = $this->db->prepare("
            SELECT products.id, products.name, categories.name as category, brands.name as brand, colors.name as color, products.price, products.detail FROM products
            LEFT JOIN categories ON categories.id = products.category_id
            LEFT JOIN brands ON brands.id = products.brand_id
            LEFT JOIN colors ON colors.id = products.color_id
            WHERE products.gender_id = :gender_id AND products.topic_id = :topic_id AND products.category_id = :category_id AND products.id != :product_id LIMIT 4   
        ");
        $statement->execute([':gender_id' => $gender_id, ':topic_id' => $topic_id, ':category_id' => $category_id, ':product_id' => $product_id]);
        return $statement->fetchAll();
    }
}
