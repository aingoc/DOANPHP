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
            $sql = "SELECT CATEGORY_NAME FROM ".$this->className." WHERE CATEGORY_ID = $categoryID";

            //Thực thi câu lệnh
            $runSql = $this->db->QueryResult($sql);

            //Trả về dữ liệu
            return $runSql->fetchAll(PDO::FETCH_CLASS);
        }

        function TotalOfPage($categoryID)
        {
            //Câu Select
            $sql = "SELECT COUNT(BOOK_ID) AS COUNT FROM books WHERE CATEGORY_ID = $categoryID";
            //Thực thi câu lệnh
            $runSql = $this->db->QueryResult($sql);
            $result = $runSql->fetchAll(PDO::FETCH_CLASS);

            $totalOfPage = ($result[0]->COUNT /8);

            if($totalOfPage<1)
            {
                return 1;
            }
            else
            {
                return round($totalOfPage+0.5,0,PHP_ROUND_HALF_UP);
            }

        }
    }
?>