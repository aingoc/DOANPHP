<?php
    class Invoices extends Model
    {
        function AddInvoiceHeader($invoiceNo,$user_id,$name,$email,$address,$phone,$paymentMethod,$date,$totalQuality,$totalCost,$totalCostBefore)
        {
            //Câu Select
            $sql = "INSERT INTO `invoice_headers`( `INVOICE_HEADER_NO`,`USER_ID`, `NAME`, `EMAIL`, `ADDRESS`, `PHONE`, `PAYMENT_METHOD`, `DATE`, `TOTAL_QUALITY`, `TOTAL_COST`, `TOTAL_COST_BEFORE`)
                                          VALUES ($invoiceNo,$user_id,'$name','$email','$address',$phone,$paymentMethod,now(),$totalQuality,$totalCost,$totalCostBefore)
                                          ";
            //Thực thi câu lệnh
            $runSql = $this->db->ExeQuery($sql);
            //Trả về dữ liệu
            return $runSql;
        }

        function AddInvoiceLine($headerID,$bookID,$currency,$quality,$cost)
        {
            //Câu Select
            $sql = "INSERT INTO `invoice_lines`( `INVOICE_HEADER_ID`,`BOOK_ID`, `CURRENCY`, `QUALITY`, `COST`)
                                          VALUES ($headerID,$bookID,'$currency',$quality,$cost)
                                          ";
            //Thực thi câu lệnh
            $runSql = $this->db->ExeQuery($sql);

            //Trả về dữ liệu
            return $runSql;
        }

        function GetInvoiceHeaderByNo($userID,$invoiceNo)
        {
            //Câu Select
            $sql = "SELECT * FROM invoice_headers WHERE USER_ID= $userID AND INVOICE_HEADER_NO = $invoiceNo";
            //Thực thi câu lệnh
            $runSql = $this->db->QueryResult($sql);
            //Trả về dữ liệu
            return $runSql->fetchAll(PDO::FETCH_CLASS);
        }

        function GetInvoiceLineByID($invoiceHeaderID)
        {
            //Câu Select
            $sql = "SELECT * FROM invoice_lines,books WHERE invoice_lines.INVOICE_HEADER_ID = $invoiceHeaderID AND books.BOOK_ID = invoice_lines.BOOK_ID";
            //Thực thi câu lệnh
            $runSql = $this->db->QueryResult($sql);
            //Trả về dữ liệu
            return $runSql->fetchAll(PDO::FETCH_CLASS);
        }

        function GetAllInvoiceByUserID($userID)
        {
            //Câu Select
            $sql = "SELECT * FROM invoice_headers WHERE USER_ID = $userID";
            //Thực thi câu lệnh
            $runSql = $this->db->QueryResult($sql);
            //Trả về dữ liệu
            return $runSql->fetchAll(PDO::FETCH_CLASS);
        }
    }
?>