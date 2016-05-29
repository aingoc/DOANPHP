<?php
    class Categories extends Model
    {
        function SelectBookByCategory($position,$number,$categoryID)
        {
            //Câu Select
            $sql = "SELECT * FROM books WHERE CATEGORY_ID = $categoryID ORDER BY BOOK_ID DESC LIMIT $position,$number ";

            //Thực thi câu lệnh
            $runSql = $this->db->QueryResult($sql);

            //Trả về dữ liệu
            return $runSql->fetchAll(PDO::FETCH_CLASS);
        }

        function GetNameCategoryByID($categoryID)
        {
            //Câu Select
            $sql = "SELECT CATEGORY_NAME FROM categories WHERE CATEGORY_ID = $categoryID";

            //Thực thi câu lệnh
            $runSql = $this->db->QueryResult($sql);

            //Trả về dữ liệu
            return $runSql->fetchAll(PDO::FETCH_CLASS);
        }
    }
?>