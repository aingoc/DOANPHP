<?php
class Cart extends Controller
{
    //Biến chứa carts_model
    private $cartModel;

    //Biến chứa danh sách thông tin book được lưu trong giỏ hàng
    private $listCartBook;

    function __construct()
    {
        //Khai báo model và khởi tạo model
        include("application/models/carts_model.php");
        $this->cartModel = new Carts();
    }

    function Index()
    {
        //Kiểm tra khi vào giỏ hàng nếu giỏ hàng trống quay lại trang home
        if(empty($_SESSION["cartBook"]))
        {
            header('Location: index.php?c=home');
            exit;
        }
        //----------------------------------------------------------------

        //Nếu giỏ hàng không trống thì tạo ra 2 biến 1 biến chứa danh sách book ID
        // và một biến chứa danh sách số lượng sách tương ứng với từng book id trong giỏ hàng
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
        //----------------------------------------------------------------------------------

        //Sau khi có danh sách book ID thì truyền vào model và model sẽ trả về để thông tin đầy đủ của từng cuốn sách
        $this->listCartBook = $this->cartModel->GetBookByMultipleID($listBookID);
        //----------------------------------------------------------------------------------------------------------

        //Truyền các sách và số lượng vào biến data
        $data = array("listCartBook"=>$this->listCartBook,"listBookQuality" => $listBookQuality);
        //-----------------------------------------


        //Khởi tạo các view sẽ được chạy
        $view = array("Index" => "Index");

        //-------------------------------

        //Khởi động view và truyền data vào view đó
        $this->View($view,$data);
        //--------------------------------
    }

    function AddSessionBookID()
    {
        $bookID = $_POST["id"];


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
        if(empty($_SESSION["cartBook"]))
        {
            echo 0;
        }
        else {
            $count = count($_SESSION["cartBook"]);
            echo count($_SESSION["cartBook"]);
        }
    }
}


?>