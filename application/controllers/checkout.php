<?php
class Checkout extends Controller
{
    private $data;
    private $checkoutType;
    function Index()
    {

        if(empty($_GET["checkoutType"])) {
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
        $data = array("checkoutType" => $checkoutType);
        $view = array("Index" => "Index");
        $this->View($view,$data);
    }
}
?>