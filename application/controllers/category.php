<?php
    class Category extends Controller
    {

        private $categoryID;
        private $categoryModel;
        private $currentPage = 1;
        private $totalOfPage;
        private $listBook;
        private $nameCategory;
        private $position = 0;
        function __construct()
        {
            //Khai báo model category
            include("application/models/categories_model.php");

            $this->categoryModel = new Categories();
            $this->categoryID = empty($_GET["ct"])? "1":$_GET["ct"];
            $this->currentPage = empty($_GET["p"])? "1":$_GET["p"];
        }
        function Index()
        {
            if($this->currentPage > 1)
            {
                $this->position = $this->currentPage * 8 - 8;
            }

            $this->listBook = $this->categoryModel->SelectBookByCategory($this->position,8,$this->categoryID);
			
            $this->nameCategory = $this->categoryModel->GetNameCategoryByID($this->categoryID);
            $this->totalOfPage = $this->categoryModel->TotalOfPage($this->categoryID);

            //Biến dữ liệu dùng để truyền qua View

            $data = array("listCategory"=>$this->listBook,"nameCategory"=>$this->nameCategory, "totalOfPage" =>$this->totalOfPage, "currentPage" => $this->currentPage, "categoryID"=>$this->categoryID);
            $view = array("Index" => "Index","componentPagination"=>"pagination");

            $this->View($view,$data);
        }
    }
?>