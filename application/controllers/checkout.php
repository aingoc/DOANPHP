<?php
class Checkout extends Controller
{
    private $data;
    private $checkoutType;
    private $listCartBook;
    private $cartModel;

    function __construct()
    {
        include("application/models/carts_model.php");
        $this->cartModel = new Carts();
    }

    function Index()
    {

        if(empty($_GET["checkoutType"]) || empty($_SESSION["cartBook"])) {
            header('Location: index.php?c=cart');
            exit;
        }

        $checkoutType = $_GET["checkoutType"];

        if(intval($_GET["checkoutType"]) == 2)
        {
            if(empty($_SESSION["userInfo"]))
            {
                header('Location: index.php?c=login');
                exit;
            }
            else
            {

            }
        }

        $listBookID = array();

        for($i = 0; $i < count($_SESSION["cartBook"]); $i++)
        {
            $listBookID[] = $_SESSION["cartBook"][$i][0];
        }

        $this->listCartBook = $this->cartModel->GetBookByMultipleID($listBookID);

        $data = array("checkoutType" => $checkoutType,"listCartBook" =>$this->listCartBook);
        $view = array("Index" => "Index");
        $this->View($view,$data);
    }
}
?>