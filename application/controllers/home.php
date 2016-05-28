<?php
    class Home extends  Controller
    {
        function __construct()
        {

        }
        function Index()
        {
            include("application/models/article_model.php");

            $article = new Article();
            $rs = $article->SelectAll();

            //Biến dữ liệu dùng để truyền qua View
            $data = array("rs"=>$rs);

            //Biến chứa danh sách component + view
            $view = array("componentBanner" => "banner","Index" => "Index","componentMp3"=>"mp3");

            //Khởi động view với các biến truyền vào
            $this->View($view,$data);
        }

    }
?>