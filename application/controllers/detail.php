<?php
    class Detail extends Controller
    {
        private $details;
        private $bookID;
        private $bookDetail;


        function __construct()
        {
            //Khai báo model category
            include("application/models/detail_model.php");

            $this->details = new Details();
            $this->bookID = empty($_GET["id"])? "1":$_GET["id"];
        }

        function Index()
        {
            $this->bookDetail = $this->details->GetBookDetailByID($this->bookID);
            $data = array("bookDetail"=>$this->bookDetail);

            $view = array("Index" => "Index");
            $this->View($view,$data);
        }
    }
?>