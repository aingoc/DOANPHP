<?php
class Checkout extends Controller
{
    function Index()
    {
        $view = array("Index" => "Index");
        $this->View($view);
    }
}
?>