<?php
class Admin extends Controller
{
    private $adminModel;
    function __construct()
    {
        include("application/models/admins_model.php");
        $this->adminModel = new Admins();
    }


    function Index()
    {
        if(empty($_SESSION["userInfo"]))
        {
            header('Location: index.php?c=login');
            exit;
        }

        if($_SESSION["userInfo"][0]->POSITION != "admin")
        {
            header('Location: index.php?c=home');
            exit;
        }


        $view = array("Index" => "Index");
        $this->View($view);
    }

    function AddBook()
    {
        if(empty($_SESSION["userInfo"]))
        {
            header('Location: index.php?c=login');
            exit;
        }

        if($_SESSION["userInfo"][0]->POSITION != "admin")
        {
            header('Location: index.php?c=home');
            exit;
        }

        if(!empty($_POST["addBook"]))
        {
            $bookName = $_POST["bookName"];
            $description = $_POST["description"];
            $status = $_POST["status"];
            $category = $_POST["category"];

            $image =  $_FILES['image']['name'];
            if(!empty($image))
            {
                $this->UploadImage("image");
            }
            $image1 = $_FILES['image1']['name'];
            if(!empty($image1))
            {
                $this->UploadImage("image1");
            }
            $bookCost = $_POST["bookCost"];
            $bookOldCost = $_POST["bookOldCost"];


            $result = $this->adminModel->AddBook($bookName,$description,$status,$category,$image,$image1,$bookCost,$bookOldCost);
        }

        $view = array("add_book" => "add_book");
        $this->View($view);
    }

    function UploadImage($image)
    {

        if(isset($_FILES[$image])){
            $errors= array();
            $file_name = $_FILES[$image]['name'];
            $file_size = $_FILES[$image]['size'];
            $file_tmp = $_FILES[$image]['tmp_name'];
            $file_type = $_FILES[$image]['type'];
            $file_ext=strtolower(end(explode('.',$_FILES[$image]['name'])));

            $expensions= array("jpeg","jpg","png");

            if(in_array($file_ext,$expensions)=== false){
                $errors[]="extension not allowed, please choose a JPEG or PNG file.";
            }

            if($file_size > 2097152) {
                $errors[]='File size must be excately 2 MB';
            }

            if(empty($errors)==true) {
                move_uploaded_file($file_tmp,"public/themes/images/".$file_name);
            }else{
                print_r($errors);
            }
        }
    }
}
?>