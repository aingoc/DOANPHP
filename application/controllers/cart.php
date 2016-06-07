<?php
class Cart extends Controller
{
    function __construct()
    {

    }

    function Index()
    {
        $view = array("Index" => "Index");
        $this->View($view);
    }

    function AddSessionBookID($bookID)
    {
        //............................
    }
}
?>