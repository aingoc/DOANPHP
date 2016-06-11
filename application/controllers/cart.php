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
        if(empty($_SESSION["cartBook"]))
        {
            header('Location: index.php?c=home');
            exit;
        }

        $listBookID = array();
        $listBookQuality = array();
        $count = count($_SESSION["cartBook"]);
        for($i = 0; $i < $count; $i++)
        {
            if(empty($_SESSION["cartBook"][$i]))
            {
                $count++;
                continue;
            }
            $listBookID[] = $_SESSION["cartBook"][$i][0];
            $listBookQuality[] = $_SESSION["cartBook"][$i][1];
        }

        $this->listCartBook = $this->cartModel->GetBookByMultipleID($listBookID);

        $data = array("listCartBook"=>$this->listCartBook,"listBookQuality" => $listBookQuality);
        $view = array("Index" => "Index");
        $this->View($view,$data);
    }

    function AddSessionBookID()
    {
        $bookID = $_POST["id"];
        $count= 0;
        if(empty($_SESSION["cartBook"]))
        {
            $_SESSION["cartBook"] = array();
        }

        if(empty($_SESSION["cartBook"])) {

            array_push($_SESSION["cartBook"],array(0=>$bookID,1=>1));
            echo count($_SESSION["cartBook"]);
        }
        else
        {
            $count = count($_SESSION["cartBook"]);
            for($i=0 ; $i < $count ; $i++)
            {
                if(empty($_SESSION["cartBook"][$i]))
                {

                    $count++;
                    continue;
                }

                if($bookID == $_SESSION["cartBook"][$i][0])
                {
                    $_SESSION["cartBook"][$i][1]++;
                    break;
                }

                if($i + 1 == $count)
                {
                    array_push($_SESSION["cartBook"],array(0=>$bookID,1=>1));
                    echo count($_SESSION["cartBook"]);
                }

            }
        }

    }

    function RemoveSessionBookID()
    {
        $count = count($_SESSION["cartBook"]);
        for($i = 0; $i < $count; $i++)
        {
            if(empty($_SESSION["cartBook"][$i]))
            {
                $count++;
                continue;
            }
            if($_POST["id"] == $_SESSION["cartBook"][$i][0])
            {
                unset($_SESSION['cartBook'][$i]);
                echo count($_SESSION["cartBook"]);
            }
        }

    }

    function UpdateSessionBookID()
    {
        $count = count($_SESSION["cartBook"]);
        for($i = 0; $i < $count; $i++)
        {
            if(empty($_SESSION["cartBook"][$i]))
            {
                $count++;
                continue;
            }

            if($_POST["id"] == $_SESSION["cartBook"][$i][0])
            {
                $_SESSION['cartBook'][$i][1] = $_POST['quality'];
                var_dump($_SESSION['cartBook'][$i][1]);
            }

        }
        echo count($_SESSION["cartBook"]);
    }

    function CartTotal()
    {
        $count = count($_SESSION["cartBook"]);
        echo count($_SESSION["cartBook"]);
    }
}


?>