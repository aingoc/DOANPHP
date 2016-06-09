<?php
    class Invoice extends Controller
    {
        private $invoiceModel;
        private $detailModel;
        function __construct(){
            include("application/models/invoices_model.php");
            include("application/models/detail_model.php");
            $this->invoiceModel = new Invoices();
            $this->detailModel = new Details();
        }

        function index()
        {
            $view = array("Index" => "Index");
            $this->View($view);
        }

        function invoiceDetail()
        {

            if(empty($_SESSION["userInfo"]))
            {
                header('Location: index.php?c=login');
                exit;
            }

            if(empty($_GET["invoiceNo"]))
            {
                header('Location: index.php?c=login');
                exit;
            }

            $invoiceHeaderInfo = $this->invoiceModel->GetInvoiceHeaderByNo($_SESSION["userInfo"][0]->USER_ID,$_GET["invoiceNo"]);
            if(empty($invoiceHeaderInfo))
            {
                header('Location: index.php?c=login');
                exit;
            }
            $invoiceLineInfo = $this->invoiceModel->GetInvoiceLineByID($invoiceHeaderInfo[0]->INVOICE_HEADER_ID);
            $data = array("invoiceHeaderInfo"=> $invoiceHeaderInfo,"invoiceLineInfo" => $invoiceLineInfo);
            $view = array("invoice_detail" => "invoice_detail");
            $this->View($view,$data);
        }

        function addInvoice()
        {

            if(empty($_POST["paymentType"]) || empty($_SESSION["cartBook"])) {
                header('Location: index.php?c=cart');
                exit;
            }

            //Insert Invoice Header
            $invoiceNo= $_POST['maxInvoiceID'];
            var_dump($invoiceNo);
            $user_id = (!empty($_SESSION['userInfo']))? $_SESSION['userInfo'][0]->USER_ID:'';
            $name = $_POST['Ten'];
            $email = $_POST['email'];
            $address = $_POST['DiaChi'];
            $phone = $_POST['SDT'];
            $paymentMethod = $_POST['paymentType'];
            $date = $_POST['currentDate'];
            $totalQuality = $_POST['totalQuality'];
            $totalCost= $_POST['total'];
            $totalCostBefore = $_POST['totalBefore'];

            $insertHeader = $this->invoiceModel->AddInvoiceHeader($invoiceNo,$user_id,$name,$email,$address,$phone,$paymentMethod,$date,$totalQuality,$totalCost,$totalCostBefore);

            $count  = count($_SESSION["cartBook"]);
            for($i = 0 ; $i < $count ;$i++) {
                if(empty($_SESSION["cartBook"][$i]))
                {
                    $count++;
                    continue;
                }
                $bookCost = $this->detailModel->GetBookDetailByID($_SESSION["cartBook"][$i][0]);
                $insertLine = $this->invoiceModel->AddInvoiceLine($invoiceNo,$_SESSION["cartBook"][$i][0] , 'VNĐ',$_SESSION["cartBook"][$i][1],$_SESSION["cartBook"][$i][1]*$bookCost[0]->BOOK_COST);

            }
            $data = array("invoiceNo" => $invoiceNo);
            $view = array("invoice_success" => "invoice_success");
            $this->View($view,$data);
            unset($_SESSION["cartInfo"]);
        }
    }
?>