<?php
    class Invoices extends Model
    {
        function AddInvoiceHeader($id,$column,$value)
        {
            //Câu Select
            $sql = "Update users SET  $column = '$value' WHERE USER_ID = $id ";

            //Thực thi câu lệnh
            $runSql = $this->db->ExeQuery($sql);
            echo $runSql;
            //Trả về dữ liệu
            return $runSql;
        }
    }
?>