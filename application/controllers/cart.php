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
        if(!is_array($_SESSION["cartBook"]))
        {
            $_SESSION["cartBook"] = array();
        }

        if(empty($_SESSION["cartBook"])) {

            array_push($_SESSION["cartBook"],array(0=>$bookID,1=>1));
        }
        else
        {

            $count = count($_SESSION["cartBook"]);
            $check = 0;
            for($i=0 ; $i < $count ; $i++)
            {
                if(empty($_SESSION["cartBook"][$i]))
                {

                    $count++;
                    $check ++;
                    continue;
                }

                if($bookID == $_SESSION["cartBook"][$i][0])
                {

                    $_SESSION["cartBook"][$i][1]++;
                    break;
                }
                else
                {

                    $check ++;
                }
                if($check == $count)
                {
                    array_push($_SESSION["cartBook"],array(0=>$bookID,1=>1));
                }

            }
        }

        var_dump($_SESSION["cartBook"]);
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
        var_dump($_SESSION['cartBook']);
    }
}


?>