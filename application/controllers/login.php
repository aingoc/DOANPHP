<?php
class Login extends Controller
{
    function __construct()
    {

    }
    function Index()
    {
        $view = array("Index" => "Index");
        $this->View($view);
    }
}
?>