<?php
    class Carts extends Model
    {
        function GetBookByMultipleID($listBookID)
        {

            $in = join(",",$listBookID);

            //Câu Select
            $sql = "SELECT * FROM books WHERE BOOK_ID IN($in) ";

            //Thực thi câu lệnh
            $runSql = $this->db->QueryResult($sql);

            //Trả về dữ liệu
            return $runSql->fetchAll(PDO::FETCH_CLASS);
        }


        function GetMaxID()
        {

            //Câu Select
            $sql = "SELECT MAX(INVOICE_HEADER_ID) AS INVOICE_HEADER_ID FROM invoice_headers ";

            //Thực thi câu lệnh
            $runSql = $this->db->QueryResult($sql);

            //Trả về dữ liệu
            return $runSql->fetchAll(PDO::FETCH_CLASS);
        }
    }
?>