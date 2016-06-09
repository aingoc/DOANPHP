<?php
    class Invoice extends Controller
    {
        private $invoiceModel;
        function __construct(){
            include("application/models/invoices_model.php");
            $invoiceModel = new Invoices();
        }

        function index()
        {
            $view = array("Index" => "Index");
            $this->View($view);
        }

        function addInvoice()
        {

            if(empty($_POST["paymentType"]) || empty($_SESSION["cartBook"])) {
                header('Location: index.php?c=cart');
                exit;
            }

            //Insert Invoice Header

            var_dump($_POST["paymentType"]);

            $view = array("invoice_success" => "invoice_success");
            $this->View($view);

        }
    }
?>