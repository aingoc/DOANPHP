<?php
    class User extends Model
    {
        function CheckUserPass($username,$password)
        {
            //Câu Select
            $sql = "SELECT USER_ID, USER_NAME,USER_NO,USER_BIRTHDAY,USER_SEX,USER_AGE,USER_ADDRESS,USER_PHONE,USER_EMAIL,POSITION FROM users WHERE 1=1 AND USERNAME = '$username'
                                                  AND PASSWORD = '$password' ";
            //Thực thi câu lệnh
            $runSql = $this->db->QueryResult($sql);

            //Trả về dữ liệu
            return $runSql->fetchAll(PDO::FETCH_CLASS);
        }

        function UserRegister($name,$username,$address,$sdt,$email,$password)
        {
            //Câu Select
            $sql = "INSERT INTO users (USER_NAME,USERNAME,USER_ADDRESS,USER_PHONE,USER_EMAIL,PASSWORD) VALUES ('$name','$username','$address',$sdt,'$email','$password') ";
            //Thực thi câu lệnh
            $runSql = $this->db->ExeQuery($sql);

            //Trả về dữ liệu
            return $runSql;
        }
        function UserUpdate($id,$column,$value)
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