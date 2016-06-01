<?php
require("application/settings/init.php");
require("application/core/Controller.php");
require("application/core/Model.php");

    class Bootstrap
    {
        function __construct()
        {
            //Tạo biến toàn cục
            global $app_path,$controller_path,$model_path,$view_path;

            //Tạo vài đường dẫn cố định
            $this->app_path = $app_path;
            $this->controller_path = $controller_path;
            $this->model_path = $model_path;
            $this->view_path = $model_path;
        }
        function Init()
        {
            //Lấy tên controller từ web gửi nếu không có gán b?ng null
            $controller = empty($_GET["c"])? "home":$_GET["c"];
            if(empty($_GET["search"]) ==false)
            {
                $controller = "search";
            }

            //kiển tra controller gửi từ web xem có dữ liệu không nếu có thì thực hiện ...
            if($controller != "")
            {
                //Kiểm tra sự tồn tại của controller
                if(!file_exists("$this->app_path/$this->controller_path/$controller.php"))
                {
                    //Không Có thì văng ra trang thông báo lỗi
                    require("$this->app_path/$this->controller_path/404.php");
                    return;
                }
                //Nếu không có lỗi nào trong quá trình kiểm tra thì gọi file controller đó lên
                require("$this->app_path/$this->controller_path/$controller.php");

                //Sau khi gọi lên kiểm tra tiếp xem trong file đó có class controller không
                if(!class_exists($controller))
                {
                    //Không Có thì văng ra trang thông báo lỗi
                    require("$this->app_path/$this->controller_path/404.php");
                    return;
                }

                //Sau khi Kiểm tra file và class tồn tại thì new controller ra
                $controller = new $controller();

                //Lấy tên action gửi từ web nếu không có gán bằng index
                $action = empty($_GET["a"])? "index":$_GET["a"];

                //Kiểm tra tên action vừa lấy có tồn tại trong controller không
                if(!method_exists($controller,$action))
                {
                    //Không có thì văng thông baó lỗi
                    require("$this->app_path/$this->controller_path/404.php");
                }

                //Cuối cùng khởi tạo controller với action tương ứng
                $controller->$action();
            }
        }
    }
?>