<?php
class Cart extends Controller
{
    private $cartModel;
    private $listCartBook;
    function __construct()
    {
        include("application/models/carts_model.php");
        $this->cartModel = new Carts();
    }

    function Index()
    {
        $_SESSION["cartBook"] = array();
        $_SESSION["cartBook"][] = "2";
        $_SESSION["cartBook"][] = "3";
        if(empty($_SESSION["cartBook"]))
        {
            header('Location: index.php?c=home');
            exit;
        }

        $this->listCartBook = $this->cartModel->GetBookByMultipleID($_SESSION["cartBook"]);

        $data = array("listCartBook"=>$this->listCartBook);
        $view = array("Index" => "Index");
        $this->View($view,$data);
    }

    function AddSessionBookID($bookID)
    {
        //............................
    }
}
?>