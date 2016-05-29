<?php
    class Category extends Controller
    {
        function __construct()
        {

        }
        function Index()
        {
            //Khai báo model category
            include("application/models/categories_model.php");

            $categoryID = empty($_GET["ct"])? "1":$_GET["ct"];

            //New
            $categories = new Categories();

            $listCategory = $categories->SelectBookByCategory(0,13,$categoryID);
            $nameCategory = $categories->GetNameCategoryByID($categoryID);

            //Biến dữ liệu dùng để truyền qua View
            $data = array("listCategory"=>$listCategory,"nameCategory"=>$nameCategory);


            $view = array("Index" => "Index");
            $this->View($view,$data);
        }
    }
?>