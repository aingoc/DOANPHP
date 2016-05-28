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
            $data = array("rs"=>$rs);
            $this->View("Index",$data);
        }

    }
?>