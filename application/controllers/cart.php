<?php
class Cart extends Controller
{
    private $cartModel;
    function __construct()
    {
        include("application/models/carts_model.php");
        $this->cartModel = new Carts();
    }

    function Index()
    {
        if(empty($_SESSION["cartBook"]))
        {
            header('Location: index.php?c=home');
            exit;
        }

        
        $view = array("Index" => "Index");
        $this->View($view);
    }

    function AddSessionBookID($bookID)
    {
        //............................
    }
}
?>