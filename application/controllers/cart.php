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
        $_SESSION["cartBook"][] = array(2 ,1);

        $_SESSION["cartBook"][] = array(3 ,1);
        if(empty($_SESSION["cartBook"]))
        {
            header('Location: index.php?c=home');
            exit;
        }

        $listBookID = array();

        for($i = 0; $i < count($_SESSION["cartBook"]); $i++)
        {
            $listBookID[] = $_SESSION["cartBook"][$i][0];
        }

        $this->listCartBook = $this->cartModel->GetBookByMultipleID($listBookID);

        $data = array("listCartBook"=>$this->listCartBook);
        $view = array("Index" => "Index");
        $this->View($view,$data);
    }

    function AddSessionBookID($bookID)
    {
        //............................
    }

    function RemoveSessionBookID()
    {

        for($i = 0; $i < count($_SESSION["cartBook"]); $i++)
        {

            if($_POST["id"] = $_SESSION["cartBook"][$i][0])
            {
                unset($_SESSION['cartBook'][$i]);
            }
        }
    }
}
?>