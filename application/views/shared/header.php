<?php ?>
<!DOCTYPE html>
<html>
<head>
    <title>Books Store</title>
    <link href="public/themes/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="public/themes/js/jquery.min.js"></script>
    <!-- Link bootstrap new-->
    <link rel="stylesheet" href="public/bootstrap/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script src="public/bootstrap/js/bootstrap.min.js"></script>
    <!-- Custom Theme files -->
    <!--theme-style-->
    <link href="public/themes/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!--//theme-style-->
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!--fonts-->
    <link href='http://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>

    <!-- Slideshow javascript-->
    <script type="text/javascript" src="public/themes/js/otherHome.js"></script>
    <script type="text/javascript" src="public/themes/js/jquery.etalage.min.js"></script>

    <!--slider-script-->
    <script src="public/themes/js/responsiveslides.min.js"></script>
    <script type="text/javascript" src="public/themes/js/jquery.flexisel.js"></script>

    <!--Validate-->
    <link rel="stylesheet" href="public/themes/dist/css/bootstrapValidator.css"/>
    <script type="text/javascript" src="public/themes/dist/js/bootstrapValidator.js"></script>

    <!--Validate-->
    <link href="//cdnjs.cloudflare.com/ajax/libs/x-editable/1.5.0/bootstrap3-editable/css/bootstrap-editable.css" rel="stylesheet"/>
    <script src="//cdnjs.cloudflare.com/ajax/libs/x-editable/1.5.0/bootstrap3-editable/js/bootstrap-editable.min.js"></script>
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/flickity/1.1.0/flickity.pkgd.min.js"></script>

</head>
<body>
<!--header-->
<div class="header">
    <div class="header-top">
        <div class="container">
            <div class="header-top-in">
                <div class="logo">
                    <div class = "bookstore">BOOK STORE</div>
                </div>
                <div class="header-in">
                    <ul class="icon1 sub-icon1 ">
                        <li>
                            <?php
                                if(!empty($_SESSION["userInfo"]))
                                {
                                    echo '<a id="userHeader" href="index.php?c=login&a=UserDetail">'.$_SESSION["userInfo"][0]->USER_NAME.'</a>';
                                    echo '
                                        <ul class="drop">
                                            <li><a href="index.php?c=login&a=UserDetail">Thông tin cá nhân</a></li>
                                            <li><a href="index.php?c=login&a=logout">Đăng xuất</a></li>
                                        </ul>
                                        ';
                                }
                                else
                                {
                                    echo '<a href="index.php?c=login">ĐĂNG NHẬP</a>';
                                }
                            ?>
                        </li>
                        <li>
                            <div class="cart">
                                <a href="index.php?c=cart" class="cart-in glyphicon glyphicon-shopping-cart shopping-cart"> </a>
                                <span class="cartTotal"></span>
                                <script>
                                        $.ajax({
                                            url: 'index.php?c=cart&a=CartTotal',
                                            success: function(response) {
                                                $(".cartTotal").text(response);

                                            }
                                        });
                                </script>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
    <div class="header-bottom">
        <div class="container">
            <div class="h_menu4">
                <a class="toggleMenu" href="#">Menu</a>
                <ul class="nav">
                    <li class="active"><a href="index.php"><i> </i>Trang Chủ</a></li>
                    <li>
                        <a>  SÁCH THIẾU NHI</a>
                        <ul class="drop">
                            <li><a href="index.php?c=category&ct=1">Truyện tranh</a></li>
                            <li><a href="index.php?c=category&ct=2">Cổ tích - Thần thoại</a></li>
                        </ul>
                    </li>
                    <li>
						<a>  VĂN HỌC - NGHỆ THUẬT</a>
						<ul class="drop">
							<li><a href="index.php?c=category&ct=3">Văn học Việt Nam</a></li>
							<li><a href="index.php?c=category&ct=17">Thơ ca Dân gian</a></li>
							<li><a href="index.php?c=category&ct=18">Truyện tiểu thuyết</a></li>
							<li><a href="index.php?c=category&ct=19">Truyện Kinh dị</a></li>
							<li><a href="index.php?c=category&ct=20">Trinh thám - Vụ án</a></li>
                        </ul>
					</li>
					
                    <li>
                        <a>  KINH TẾ</a>
                        <ul class="drop">
                            <li><a href="index.php?c=category&ct=4">Kế Toán</a></li>
                            <li><a href="index.php?c=category&ct=16">Quản Trị Kinh Doanh</a></li>
                            <li><a href="index.php?c=category&ct=6">Marketing</a></li>
                            <li><a href="index.php?c=category&ct=7">Ngoại Thương</a></li>
                        </ul>
                    </li>
                    <li>
                        <a>  Y HỌC</a>
                        <ul class="drop">
                            <li><a href="index.php?c=category&ct=8">Y Học Thường Thức</a></li>
                            <li><a href="index.php?c=category&ct=9">Y Học Cổ Truyền</a></li>
                        </ul>
                    </li>
                    <li>
                        <a>  NGOẠI NGỮ</a>
                        <ul class="drop">
                            <li><a href="index.php?c=category&ct=10">Tiếng Anh</a></li>
                            <li><a href="index.php?c=category&ct=11">Tiếng Nhật</a></li>
                            <li><a href="index.php?c=category&ct=12">Tiếng Hàn</a></li>
                        </ul>
                    </li>
                    <li><a href="index.php?c=category&ct=13" >Nấu Ăn</a></li>
                    <li><a href="index.php?c=category&ct=14" >Âm nhạc</a></li>
                    <li><a href="index.php?c=category&ct=15" >Du lịch</a></li>
                </ul>
                <script type="text/javascript" src="public/themes/js/nav.js"></script>
            </div>
        </div>
    </div>
    <div class="header-bottom-in">
        <div class="container">
            <div class="header-bottom-on">
                <p class="wel"><a href="index.php?c=login">Chào mừng đến với thế giới của Book Store!   Bạn có thể đăng nhập để mua hàng !!!</a></p>
                <div class="header-can">
                    <ul class="social-in">
                        <li><a href="https://www.facebook.com/"><i class="facebook"> </i></a></li>
                        <li><a href="https://twitter.com/"><i class="twitter"> </i></a></li>
                        <li><a href="https://www.skype.com"><i class="skype"> </i></a></li>
                    </ul>
                    <div class="search">
                        <form method="GET" action="index.php" enctype="multipart/form-data">
                            <input type="text" name="search" value="Tìm sách...!" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" >
                            <input type="hidden" name="c" value="search">
                            <input type="submit" value="">
                        </form>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>
<!---->
<div class="container">

