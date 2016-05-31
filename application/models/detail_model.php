<?php
    class Details extends Model
    {
        function GetBookDetailByID($bookID)
        {
            //Câu Select
            $sql = "SELECT * FROM books WHERE BOOK_ID = $bookID ";

            //Thực thi câu lệnh
            $runSql = $this->db->QueryResult($sql);

            //Trả về dữ liệu
            return $runSql->fetchAll(PDO::FETCH_CLASS);
        }
    }
?>