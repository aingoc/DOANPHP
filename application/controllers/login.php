<?php
class Login extends Controller
{
    private $userModel;

    function __construct()
    {
        include("application/models/user_model.php");
        $this->userModel = new User();
    }
    function Index()
    {

        if(!empty($_SESSION["userInfo"]))
        {
            header('Location: index.php?c=login&a=UserDetail');
            exit;
        }
        else
        {
            $view = array("Index" => "Index");
            $this->View($view);
        }
    }

    function LoginValidate()
    {

        if(!empty($_SESSION["userInfo"]))
        {
            header('Location: index.php?c=login&a=UserDetail');
            exit;
        }

        //Kiểm tra nếu user và password không có thì trở lại trang login
        if(empty($_POST["usernameLogin"]) != true || empty($_POST["passwordLogin"]) != true)
        {
            //Lấy dữ liệu từ database bằng username password
            $username = $this->userModel->CheckUserPass($_POST["usernameLogin"],md5($_POST["passwordLogin"]));

            //Nếu $username = null thì show trang lỗi
            if($username != null) {
                $_SESSION["userInfo"] = $username;
                header('Location: index.php');
                exit;
            }
            else
            {
                $view = array("Login_Fail" => "Login_Fail");
                $this->View($view);
            }

        }
        else
        {
            header('Location: index.php?c=home');
            exit;
        }

    }
    function Logout()
    {
        session_destroy();
        header('Location: index.php');
        exit;
    }

    function LoginRegister()
    {
        if (!empty($_SESSION["userInfo"])) {
            header('Location: index.php?c=login&a=UserDetail');
            exit;
        }
        elseif(empty($_POST["checkValidate"]))
        {
            header('Location: index.php?c=home');
            exit;
        }
        else
        {
            $name = $_POST["Ten"];
            $username= $_POST["username1"];
            $address = $_POST["DiaChi"];
            $sdt = $_POST["SDT"];
            $email = $_POST["email"];
            $password = $_POST["password1"];
            $register = $this->userModel->UserRegister($name,$username,$address,$sdt,$email,md5($password));

            if($register = 1)
            {
                //Lấy dữ liệu từ database bằng username password
                $login = $this->userModel->CheckUserPass($username,md5($password));
                //Nếu $username = null thì show trang lỗi
                if($login != null) {
                    $_SESSION["userInfo"] = $login;
                    var_dump($_SESSION["userInfo"]);
                    header('Location: index.php');
                    exit;
                }
            }
            else
            {
                $view = array("Register_Fail" => "Register_Fail");
                $this->View($view);
            }
        }
    }

    function UserDetail()
    {
        if (empty($_SESSION["userInfo"])) {
            header('Location: index.php?c=login');
            exit;
        }
        $view = array("User_Detail" => "User_Detail");
        $this->View($view);
    }

    function UserUpdate()
    {
        if (empty($_SESSION["userInfo"])) {
            header('Location: index.php?c=login');
            exit;
        }
        $this->userModel = new User();
        $password = 0;

        if($_POST["name"] == "password")
        {
            $check = md5($_POST["value"]);
        }
        else
        {
            $check = $_POST["value"];
        }
        echo $check;
        $update = $this->userModel->UserUpdate($_POST["pk"],$_POST["name"],$check);

        if($update = 1)
        {
            $upper = strtoupper($_POST["name"]);
            $_SESSION["userInfo"][0]->$upper = $_POST["value"];
        }

    }
}
?>