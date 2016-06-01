<?php
    class Searchs extends Model
    {
        function GetBookByName($position,$number,$bookName)
        {
            //Câu Select
            $sql = "SELECT * FROM books WHERE BOOK_NAME LIKE '%" . $bookName . "%' ORDER BY BOOK_ID DESC LIMIT $position,$number ";

            //Thực thi câu lệnh
            $runSql = $this->db->QueryResult($sql);

            return $result = $runSql->fetchAll(PDO::FETCH_CLASS);

        }

        function TotalOfPage($bookName)
        {
            //Câu Select
            $sql = "SELECT COUNT(BOOK_ID) AS COUNT FROM books WHERE BOOK_NAME LIKE '%" . $bookName . "%'";
            //Thực thi câu lệnh
            $runSql = $this->db->QueryResult($sql);
            $result = $runSql->fetchAll(PDO::FETCH_CLASS);

            $totalOfPage = ($result[0]->COUNT /8);

            if($totalOfPage <= 1)
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