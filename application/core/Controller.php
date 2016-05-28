<?php
    class Controller
    {
        function  View($viewName,$data=null,$useLayout=true)
        {
            //Kiểm tra biến $data có dữ liệu không
            if($data != null)
            {
                foreach($data as $key => $value)
                {
                    $$key = $value;
                }
            }
            unset($data);

            //Tạo biến toàn cục
            global $app_path,$controller_path,$view_path;

            //lấy tên class tương ứng với tên control
            $controller_Name = get_class($this);

            if($useLayout)
            {
                //Gọi header nếu layout = true
                require("$app_path/$view_path/shared/header.php");
            }

            require("$app_path/$view_path/shared/banner.php");
            require("$app_path/$view_path/$controller_Name/$viewName.html");
            require("$app_path/$view_path/shared/mp3.php");

            if($useLayout)
            {
                //G?i footer n?u s? d?ng layout = true
                require("$app_path/$view_path/shared/footer.php");
            }
        }
    }
?>