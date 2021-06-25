
<!DOCTYPE html>
<html>

<head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
    <meta charset="UTF-8" />
    <title>SeaFood Store</title>
    <meta name="description" />
    <meta name="keywords" />
    <link href="/Uploads/shop2005/images/favicon.png" rel="shortcut icon" type="image/x-icon" />

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta property="fb:app_id" content="227481454296289" />

    <meta content="vi_VN" property="og:locale" />
    <meta content="website" property="og:type" />
    <meta content="SeaFood Store" property="og:title" />
    <meta property="og:description" />
    <meta content="http://ohnhingi.runtime.vn/Uploads/shop2005/images/logo.png" property="og:image" />
    <meta content="http://ohnhingi.runtime.vn/" property="og:url" />
    <meta property="og:site_name" />

    <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1' /><![endif]-->
    <!--[if lt IE 9]>
    <script src="/assets/100004/js/html5shiv.js"></script>
    <![endif]-->

    <style>
        .loader_overlay {
            position: fixed;
            z-index: 9999;
            width: 100%;
            height: 100%;
            left: 0;
            top: 0;
            background-color: #fff;
            -webkit-transition: all .1s ease;
            -o-transition: all .1s ease;
            transition: all .1s ease;
            opacity: 1;
            visibility: visible;
        }

        .loader_overlay.loaded {
            opacity: 0;
            visibility: hidden;
            z-index: -2;
        }
    </style>
    <!--CSS-->
    <link rel="stylesheet" href="/assets/100004/js/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/assets/100004/fonts/font-awesome/css/font-awesome.min.css">

    <link rel="stylesheet" type="text/css" href="/assets/100004/fonts/fonts-master/roboto.css">
    <!--JS-->
    <script src="/assets/100004/js/plugin.js?v=582"></script>
    <script src="/assets/100004/js/option_selection.js"></script>
    <script src="/assets/100004/js/api.jquery.js"></script>
    <!-- Đặt thẻ này vào phần đầu hoặc ngay trước thẻ đóng phần nội dung của bạn. -->
    <script src="https://apis.google.com/js/platform.js" async="" defer=""></script>
    <script async="" defer="defer" data-target=".product-resize" data-parent=".products-resize" data-img-box=".image-resize" src="/assets/100004/js/fixheightproductv2.js?v=582"></script>
    <script src="/assets/100004/js/scripts.js?v=582"></script>
    <script src="/Scripts/common/mycard.js" type="text/javascript"></script>
    <script src="/Scripts/lazyLoad/jquery.lazyload.min.js" type="text/javascript"></script>

    <script src="/Scripts/angularJS/angular.min.js"></script>
    <script src="/Scripts/angularJS/angular-sanitize.min.js"></script>
    <script type="text/javascript" src="/Scripts/angular-loading-spinner/spin.min.js"></script>
    <script type="text/javascript" src="/Scripts/angular-loading-spinner/angular-spinner.min.js"></script>
    <script type="text/javascript" src="/Scripts/angular-loading-spinner/angular-loading-spinner.js"></script>
    <script src="/app/appMain.js"></script>
    <script src="/app/directives/directive.js"></script>
    <script src="/app/directives/angular-summernote.js"></script>
    <script src="/app/directives/paging.js"></script>
    <script src="/app/services/ajaxServices.js"></script>
    <script src="/app/services/alertsServices.js"></script>
    <link href="http://static.runtime.vn/App_Themes/RUN004/style.css" rel="stylesheet" type="text/css" />
    <link href="http://static.runtime.vn/App_Themes/RUN004/responsive.css" rel="stylesheet" type="text/css" />




</head>
<body ng-app="appMain" style="" cz-shortcut-listen="true">
<div class="loader_overlay"></div>
<div id="opacity" class=""></div>
<div id="fb-root"></div>
<script>
    (function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.6&appId=227481454296289";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
</script>


<div class="wrapper">

    <div class="header">

        <script src="/Scripts/common/login.js" type="text/javascript"></script>
        <section class="top-link clearfix">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <ul class="nav navbar-nav topmenu-contact pull-left">
                            <li><i class="fa fa-phone"></i> <span>Hotline:0333924120</span></li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right topmenu  hidden-xs hidden-sm">
                            <li class="order-check"><a href="/kiem-tra-don-hang.html"><i class="fa fa-pencil-square-o"></i> Kiểm tra đơn hàng</a></li>
                            <li class="order-cart"><a href="/gio-hang.html"><i class="fa fa-shopping-cart"></i> Giỏ hàng</a></li>
                            <li class="account-login"><a href="/dang-nhap.html"><i class="fa fa-sign-in"></i> Đăng nhập </a></li>
                            <li class="account-register"><a href="/dang-ky.html"><i class="fa fa-key"></i> Đăng ký </a></li>
                        </ul>
                        <div class="show-mobile hidden-lg hidden-md">
                            <div class="quick-user">
                                <div class="quickaccess-toggle">
                                    <i class="fa fa-user"></i>
                                </div>
                                <div class="inner-toggle">
                                    <ul class="login links">
                                        <li>
                                            <a href="/dang-ky.html"><i class="fa fa-sign-in"></i> Đăng ký</a>
                                        </li>
                                        <li>
                                            <a href="/dang-nhap.html"><i class="fa fa-key"></i> Đăng nhập</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="quick-access">
                                <div class="quickaccess-toggle">
                                    <i class="fa fa-list"></i>
                                </div>
                                <div class="inner-toggle">
                                    <ul class="links">
                                        <li><a id="mobile-wishlist-total" href="/kiem-tra-don-hang.html" class="wishlist"><i class="fa fa-pencil-square-o"></i> Kiểm tra đơn hàng</a></li>
                                        <li><a href="/gio-hang.html" class="shoppingcart"><i class="fa fa-shopping-cart"></i> Giỏ hàng</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--Template--
        <section class="top-link clearfix" ng-controller="moduleController" ng-init="initTopLinkController('Shop','AccountLogin')">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <ul class="nav navbar-nav topmenu-contact pull-left">
                            <li><i class="fa fa-phone"></i> <span>Hotline:{{shop.Hotline}}</span></li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right topmenu  hidden-xs hidden-sm" ng-if="accountLogin==null">
                            <li class="order-check"><a href="/kiem-tra-don-hang.html"><i class="fa fa-pencil-square-o"></i> Kiểm tra đơn hàng</a></li>
                            <li class="order-cart"><a href="/gio-hang.html"><i class="fa fa-shopping-cart"></i> Giỏ hàng</a></li>
                            <li class="account-login"><a href="/dang-nhap.html"><i class="fa fa-sign-in"></i> Đăng nhập </a></li>
                            <li class="account-register"><a href="/dang-ky.html"><i class="fa fa-key"></i> Đăng ký </a></li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right topmenu hidden-xs hidden-sm" ng-if="accountLogin!=null">
                            <li class="order-check"><a href="/kiem-tra-don-hang.html"><i class="fa fa-pencil-square-o"></i> Kiểm tra đơn hàng</a></li>
                            <li class="order-cart"><a href="/gio-hang.html"><i class="fa fa-shopping-cart"></i> Giỏ hàng</a></li>
                            <li class="webmaster"><a href="/admin"><i class="fa fa-gears"></i> Quản trị website</a></li>
                            <li class="account-info">
                                <a href="/thong-tin-tai-khoan.html">{{accountLogin.Email}}</a>
                                <a class="account-logout" id="btnLogOff" href="javascript:void(0)" title="">[Thoát] </a>
                            </li>
                        </ul>
                        <div class="show-mobile hidden-lg hidden-md">
                            <div class="quick-user">
                                <div class="quickaccess-toggle">
                                    <i class="fa fa-user"></i>
                                </div>
                                <div class="inner-toggle">
                                    <ul class="login links" ng-if="accountLogin==null">
                                        <li>
                                            <a href="/dang-ky.html"><i class="fa fa-sign-in"></i> Đăng ký</a>
                                        </li>
                                        <li>
                                            <a href="/dang-nhap.html"><i class="fa fa-key"></i>Đăng nhập</a>
                                        </li>
                                    </ul>
                                    <ul class="login links" ng-if="accountLogin!=null">
                                        <li ng-if="accountLogin.AccountTypeId==1">
                                            <a href="/admin"><i class="fa fa-gears"></i> Quản trị website</a>
                                        </li>
                                        <li>
                                            <a href="/thong-tin-tai-khoan.html">{{accountLogin.Email}}</a>
                                        </li>
                                        <li>
                                            <a id="btnLogOff2" href="javascript:void(0)"><i class="fa fa-sign-out"></i> [Thoát] </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="quick-access">
                                <div class="quickaccess-toggle">
                                    <i class="fa fa-list"></i>
                                </div>
                                <div class="inner-toggle">
                                    <ul class="links">
                                        <li><a id="mobile-wishlist-total" href="/kiem-tra-don-hang.html" class="wishlist"><i class="fa fa-pencil-square-o"></i> Kiểm tra đơn hàng</a></li>
                                        <li><a href="/gio-hang.html" class="shoppingcart"><i class="fa fa-shopping-cart"></i> Giỏ hàng</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </section>
        --End-->

        <!-- Header -->
        <header id="header">
            <div id="header_main">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-4 col-xs-8">
                            <!--logo-->

                            <h1 class="pull-left">
                                <a href="/" class="logo" title="long">
                                    <img src="/Uploads/shop2005/images/logo.png" alt="long" title="long">
                                </a>
                            </h1>

                            <!-- end logo -->
                        </div>
                        <div class="col-lg-6 col-md-5 col-sm-4 hidden-xs">
                            <!-- Search -->
                            <div class="search_box">
                                <div class="search_wrapper">
                                    <input type="text" name="search" class="index_input_search" id="txtsearch" onblur="if(this.value=='')this.value='Nhập từ khóa tìm kiếm...'"
                                           onfocus="if(this.value=='Nhập từ khóa tìm kiếm...')this.value=''" value="Nhập từ kh&#243;a t&#236;m kiếm..." />
                                    <button class="btn_search_submit btn " type="button" id="btnsearch"><span>Tìm ngay</span></button>
                                </div>
                            </div>
                            <!-- End Search -->
                        </div>
                        <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                            <!-- Cart -->
                            <div class="cart_header">
                                <a href="/gio-hang.html" title="Giỏ hàng">
                                    <span class="cart_header_icon"></span>
                                    <span class="box_text">
                                        <strong class="cart_header_count">Giỏ hàng <span>(0)</span></strong>
                                        <span class="cart_price">0₫</span>
                                    </span>
                                </a>
                                <div class="cart_clone_box">
                                    <div class="cart_box_wrap hidden">
                                        <div class="cart_item original clearfix">
                                            <div class="cart_item_image"></div>
                                            <div class="cart_item_info">
                                                <p class="cart_item_title"><a href="" title=""></a></p>
                                                <span class="cart_item_quantity"></span>
                                                <span class="cart_item_price"></span>
                                                <span class="remove"></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="cart_header_top_box">
                                    <div class="cart_empty">Giỏ hàng của bạn vẫn chưa có sản phẩm nào.</div>
                                </div>
                            </div>
                            <!-- End Cart -->
                            <!-- Account -->
                            <div class="user_login">
                                <div class="user_login_icon"></div>
                                <div class="box_text">
                                    <strong>Tài khoản</strong>
                                    <!--<span class="cart_price">Đăng nhập, đăng ký</span>-->
                                </div>
                                <div class="user_box">
                                    <ul>
                                        <li><a href="/dang-nhap.html">Đăng nhập</a></li>
                                        <li><a href="/dang-ky.html">Đăng ký</a></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- End account -->
                        </div>
                    </div>
                </div>
            </div>
            <div id="header_mobile">
                <div class="container">
                    <div class="row">
                        <!-- Menu mobile -->
                        <button type="button" class="navbar-toggle collapsed" id="trigger_click_mobile">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <div id="mobile_wrap_menu" class="visible-xs visible-sm">
                            <div class="user_mobile">
                                <div class="icon_user_mobile">
                                    <img src="/assets/100004/images/user_mobile.png" alt="account">
                                </div>
                                <div class="login_mobile">

                                    <a href="/dang-nhap.html" class="login-btn">Đăng nhập </a><a href="/dang-ky.html" class="login-btn"> / Đăng ký</a>
                                </div>
                                <div class="close_menu"></div>
                            </div>
                            <div class="content_menu">
                                <ul><li class="level0"><a class='' href='/trang-chu.html'><span>Trang chủ</span></a></li>
                                    <li class="level0"><a class='' href='/gioi-thieu.html'><span>Giới thiệu</span></a></li>
                                    <li class="level0"><a class='' href='/san-pham.html'><span>Sản phẩm</span></a></li>
                                    <li class="level0"><a class='' href='/tin-tuc.html'><span>Tin tức</span></a></li>
                                    <li class="level0"><a class='' href='/lien-he.html'><span>Liên hệ</span></a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- End menu mobile -->
                        <div class="pull-right mobile-menu-icon-wrapper">
                            <!-- Logo mobile -->
                            <div class="logo logo-mobile">
                                <a href="/" title="long">
                                    <img src="/Uploads/shop2005/images/logo.png" alt="long">
                                </a>
                            </div>
                            <!-- End Logo mobile -->
                            <!-- Cart mobile -->
                            <div class="cart_header" id="cart-target">
                                <a href="/gio-hang.html" title="Giỏ hàng">
                                    <div class="cart_header_icon"></div>
                                    <div class="box_text">
                                        <strong class="cart_header_count"><span>0</span></strong>
                                    </div>
                                </a>
                            </div>
                            <!-- End Cart mobile -->
                        </div>
                        <div class="clearfix"></div>
                        <!-- Search mobile -->
                        <div class="search_mobile col-md-12">
                            <div class="search_box">
                                <div class="search_wrapper">
                                    <input type="text" name="search" class="index_input_search" id="txtsearch2" onblur="if(this.value=='')this.value='Nhập từ khóa tìm kiếm...'"
                                           onfocus="if(this.value=='Nhập từ khóa tìm kiếm...')this.value=''" value="Nhập từ kh&#243;a t&#236;m kiếm..." />
                                    <button class="btn_search_submit btn " type="button" id="btnsearch2"><span><i class="fa fa-search"></i></span></button>
                                </div>
                            </div>
                        </div>
                        <!-- End search mobile -->
                    </div>
                </div>
            </div>
        </header>
        <!-- End header -->
        <script type="text/javascript">
            $("#btnsearch").click(function () {
                SearchProduct();
            });
            $("#btnsearch2").click(function () {
                SearchProduct2();
            });
            $("#txtsearch").keydown(function (event) {
                if (event.keyCode == 13) {
                    SearchProduct();
                }
            });
            $("#txtsearch2").keydown(function (event) {
                if (event.keyCode == 13) {
                    SearchProduct2();
                }
            });
            function SearchProduct() {
                var key = $('#txtsearch').val();
                if (key == '' || key == 'Tìm kiếm...') {
                    $('#txtsearch').focus();
                    return;
                }
                window.location = '/tim-kiem.html?key=' + key;
            }
            function SearchProduct2() {
                var key = $('#txtsearch2').val();
                if (key == '' || key == 'Tìm kiếm...') {
                    $('#txtsearch2').focus();
                    return;
                }
                window.location = '/tim-kiem.html?key=' + key;
            }
        </script>
        <!--Template--
        --End-->

        <!-- Main menu -->
        <nav class="navbar-main">
            <div id="mb_mainnav">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3 col-sm-12 col-xs-12 vertical_menu">
                            <div id="mb_verticle_menu" class="menu-quick-select">
                                <div class="title_block">
                                    <span>Danh mục sản phẩm</span>
                                </div>
                                <div id="menuverti" class="block_content navbar_menuvertical">
                                    <ul class='nav_verticalmenu'><li class="has-child level0"><a class='' href='/san-pham/nghao-so-oc-33804'><img class='icon-menu' src='/Uploads/shop2005/images/icon/s1.png' alt='Nghao - Sò - Ốc'> <span>Nghao - Sò - Ốc</span></a><ul class='level1'><li class="level1"><a class='' href='/san-pham/ngao-33820'><span>Ngao</span></a></li>
                                        <li class="level1"><a class='' href='/san-pham/so-33821'><span>Sò</span></a></li>
                                        <li class="level1"><a class='' href='/san-pham/oc-33822'><span>Ốc</span></a></li>
                                        <li class="level1"><a class='' href='/san-pham/hau-33823'><span>Hàu</span></a></li>
                                    </ul class='level1'></li>
                                        <li class="level0"><a class='' href='/san-pham/bao-ngu-33805'><img class='icon-menu' src='/Uploads/shop2005/images/icon/s2.png' alt='Bào ngư'> <span>Bào ngư</span></a></li>
                                        <li class="level0"><a class='' href='/san-pham/tom-33806'><img class='icon-menu' src='/Uploads/shop2005/images/icon/s3.png' alt='Tôm'> <span>Tôm</span></a></li>
                                        <li class="level0"><a class='' href='/san-pham/muc-33807'><img class='icon-menu' src='/Uploads/shop2005/images/icon/s4.png' alt='Mực'> <span>Mực</span></a></li>
                                        <li class="has-child level0"><a class='' href='/san-pham/ca-33808'><img class='icon-menu' src='/Uploads/shop2005/images/icon/s5.png' alt='Cá'> <span>Cá</span></a><ul class='level1'><li class="level1"><a class='' href='/san-pham/ca-ngu-dai-duong-33824'><span>Cá ngừ đại dương</span></a></li>
                                            <li class="level1"><a class='' href='/san-pham/ca-hoi-33825'><span>Cá hồi</span></a></li>
                                        </ul class='level1'></li>
                                        <li class="has-child level0"><a class='' href='/san-pham/cua-nghe-33809'><img class='icon-menu' src='/Uploads/shop2005/images/icon/s6.png' alt='Cua nghẹ'> <span>Cua nghẹ</span></a><ul class='level1'><li class="level1"><a class='' href='/san-pham/cua-33826'><span>Cua</span></a></li>
                                            <li class="level1"><a class='' href='/san-pham/nghe-33827'><span>Nghẹ</span></a></li>
                                        </ul class='level1'></li>
                                        <li class="level0"><a class='' href='/san-pham/sua-33810'><img class='icon-menu' src='/Uploads/shop2005/images/icon/s7.png' alt='Sứa'> <span>Sứa</span></a></li>
                                        <li class="level0"><a class='' href='/san-pham/hai-san-dong-hop-che-bien-33811'><img class='icon-menu' src='/Uploads/shop2005/images/icon/s8.png' alt='Hải sản đóng hộp - chế biến'> <span>Hải sản đóng hộp - chế biến</span></a></li>
                                        <li class="has-child level0"><a class='' href='/san-pham/hai-san-kho-33812'><img class='icon-menu' src='/Uploads/shop2005/images/icon/s9.png' alt='Hải sản khô'> <span>Hải sản khô</span></a><ul class='level1'><li class="level1"><a class='' href='/san-pham/hai-san-kho-33828'><span>Hải sản khô</span></a></li>
                                        </ul class='level1'></li>
                                        <li class="level0"><a class='' href='/san-pham/san-pham-khac-33813'><img class='icon-menu' src='/Uploads/shop2005/images/icon/s9.png' alt='Sản phẩm khác'> <span>Sản phẩm khác</span></a></li>
                                    </ul class='nav_verticalmenu'>
                                </div>
                            </div>
                        </div>
                        <nav class="col-md-9 col-sm-12 col-xs-12 p-l-0">
                            <ul class='menu nav navbar-nav menu_hori'><li class="level0"><a class='' href='/trang-chu.html'><span>Trang chủ</span></a></li>
                                <li class="level0"><a class='' href='/gioi-thieu.html'><span>Giới thiệu</span></a></li>
                                <li class="level0"><a class='' href='/san-pham.html'><span>Sản phẩm</span></a></li>
                                <li class="level0"><a class='' href='/tin-tuc.html'><span>Tin tức</span></a></li>
                                <li class="level0"><a class='' href='/lien-he.html'><span>Liên hệ</span></a></li>
                            </ul class='menu nav navbar-nav menu_hori'>
                        </nav>
                    </div>
                </div>
            </div>
        </nav>
        <!-- End main menu -->
        <script type="text/javascript">
            $(document).ready(function () {
                var str = location.href.toLowerCase();
                $("ul.menu li a").each(function () {
                    if (str.indexOf(this.href.toLowerCase()) >= 0) {
                        $("ul.menu li").removeClass("active");
                        $(this).parent().addClass("active");
                    }
                });
            });
        </script>
        <!--Template--

        --End-->
    </div>



    <div class="slideshow">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                </div>
                <div class="col-md-9 ">

                    <div class="homeslider">
                        <div id="owl-slider" class="owl-carousel owl-carousel-banner">
                            <div class="item">
                                <a href="#"><img src="/Uploads/shop2005/images/slide/slider_1.jpg" alt="1"></a>
                            </div>
                            <div class="item">
                                <a href="#"><img src="/Uploads/shop2005/images/slide/slider_2.jpg" alt="2"></a>
                            </div>
                            <div class="item">
                                <a href="#"><img src="/Uploads/shop2005/images/slide/slider_3.jpg" alt="3"></a>
                            </div>
                        </div>
                    </div>
                    <!--Template--
                    --End-->
                </div>
            </div>
        </div>
    </div>


    <div class="adv">

        <section id="service">
            <div class="container m-b-30">
                <div class="row">
                    <div id="service_home" class="clearfix">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-6 col-xxs-12 text-center m-b-xs-10">
                            <div class="service_item">
                                <div class="icon icon_product">
                                    <img src="/assets/100004/images/icon_1.png?v=582" alt="">
                                </div>
                                <div class="description_icon">
                            <span class="large-text">
                                Miễn phí giao hàng
                            </span>
                                    <span class="small-text">
                                Cho hóa đơn từ 450,000đ
                            </span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-6 col-xxs-12 text-center m-b-xs-10">
                            <div class="service_item">
                                <div class="icon icon_product">
                                    <img src="/assets/100004/images/icon_2.png?v=582" alt="">
                                </div>
                                <div class="description_icon">
                            <span class="large-text">
                                Giao hàng trong ngày
                            </span>
                                    <span class="small-text">
                                Với tất cả đơn hàng
                            </span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 text-center m-b-xs-10">
                            <div class="service_item">
                                <div class="icon icon_product">
                                    <img src="/assets/100004/images/icon_3.png?v=582" alt="">
                                </div>
                                <div class="description_icon">
                            <span class="large-text">
                                Sản phẩm an toàn
                            </span>
                                    <span class="small-text">
                                Cam kết chất lượng
                            </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--Begin-->
        <!--End-->
    </div>


    <div class="main">
        <div class="container">
            <div class="row">
                <div class="col-md-3">

                    <script src="/app/services/moduleServices.js"></script>
                    <script src="/app/controllers/moduleController.js"></script>
                    <!--Begin-->
                    <div class="box-adv" ng-controller="moduleController" ng-init="initAdvMenuController('AdvMenus')">
                        <div class="sidebar_banner" ng-repeat="item in AdvMenus">
                            <div class="img_banner">
                                <a href="{{item.Link}}">
                                    <img ng-src="{{item.Image}}" data-original="{{item.Image}}" alt="{{item.Name}}" class="img-responsive lazy"><div class="figcaption"></div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <!--End-->
                    <script type="text/javascript">
                        window.AdvMenus = [{"Id":67487,"ShopId":54640,"AdvType":1,"AdvTypeName":"Menu 2 bên","Name":"1","Image":"/Uploads/shop2005/images/adv/banner_sidebar_img_1.jpg","ImageThumbnai":"/Uploads/shop2005/images/adv/banner_sidebar_img_1.jpg","Link":"#","IsVideo":false,"Index":1,"Inactive":false,"Timestamp":"AAAAAABaEeI="},{"Id":67488,"ShopId":54640,"AdvType":1,"AdvTypeName":"Menu 2 bên","Name":"2","Image":"/Uploads/shop2005/images/adv/banner_sidebar_img_2.jpg","ImageThumbnai":"/Uploads/shop2005/images/adv/banner_sidebar_img_2.jpg","Link":"#","IsVideo":false,"Index":2,"Inactive":false,"Timestamp":"AAAAAABaEeM="}];
                    </script>
                    <!-- Blog sidebar -->
                    <div class="sidebar_blogs">
                        <h3 title="bài viết mới" class="sidebar_title">
                            Bài viết nổi bật
                        </h3>
                        <div class="blog_content">
                            <div class="article_item">
                                <div class="article_img">
                                    <a href="/tin-tuc/canh-rong-bien-thit-bo-9165.html">
                                        <img src="/Uploads/shop2005/images/news/canh-rong-bien-thit-bo.jpg" alt="Canh Rong Biển Thịt B&#242;" title="Canh Rong Biển Thịt B&#242;">
                                    </a>
                                </div>
                                <div class="article_content clearfix">
                                    <div class="title">
                                        <h4><a href="/tin-tuc/canh-rong-bien-thit-bo-9165.html" title="Canh Rong Biển Thịt B&#242;">Canh Rong Biển Thịt B&#242;</a></h4>
                                    </div>
                                    <div class="article_meta">
                                        <div class="article_comment">
                                            <i class="fa fa-comments-o" aria-hidden="true"></i> 0 bình luận
                                        </div>
                                        <div class="article_created">
                                            <i class="fa fa-calendar" aria-hidden="true"></i> <time datetime="16/06/2017">16/06/2017</time>
                                        </div>
                                    </div>
                                    <div class="des">
                                        <p> Bước 1: Cho tất cả rong biển vào ngâm trong nước. Sau khoảng 15 phút, vớt ra...                        </p>

                                    </div>
                                    <a class="readmore" href="/tin-tuc/canh-rong-bien-thit-bo-9165.html">Đọc tiếp <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
                                </div>
                            </div>
                            <div class="article_item">
                                <div class="article_img">
                                    <a href="/tin-tuc/ca-hoi-nuong-giay-bac-9164.html">
                                        <img src="/Uploads/shop2005/images/news/ca-hoi-nuong-giay-bac.jpg" alt="C&#225; Hồi nướng giấy bạc" title="C&#225; Hồi nướng giấy bạc">
                                    </a>
                                </div>
                                <div class="article_content clearfix">
                                    <div class="title">
                                        <h4><a href="/tin-tuc/ca-hoi-nuong-giay-bac-9164.html" title="C&#225; Hồi nướng giấy bạc">C&#225; Hồi nướng giấy bạc</a></h4>
                                    </div>
                                    <div class="article_meta">
                                        <div class="article_comment">
                                            <i class="fa fa-comments-o" aria-hidden="true"></i> 0 bình luận
                                        </div>
                                        <div class="article_created">
                                            <i class="fa fa-calendar" aria-hidden="true"></i> <time datetime="16/06/2017">16/06/2017</time>
                                        </div>
                                    </div>
                                    <div class="des">
                                        <p>Cá hồi không chỉ dùng ăn gỏi. Chúng ta còn có thể biến tấu phong phú hơn...          </p>

                                    </div>
                                    <a class="readmore" href="/tin-tuc/ca-hoi-nuong-giay-bac-9164.html">Đọc tiếp <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
                                </div>
                            </div>
                            <div class="article_item">
                                <div class="article_img">
                                    <a href="/tin-tuc/cach-che-bien-mon-ngon-tu-kho-ca-dua-9163.html">
                                        <img src="/Uploads/shop2005/images/news/cach-che-bien-mon-ngon-tu-kho-ca-dua.jpg" alt="C&#225;ch chế biến m&#243;n ngon từ kh&#244; c&#225; dứa" title="C&#225;ch chế biến m&#243;n ngon từ kh&#244; c&#225; dứa">
                                    </a>
                                </div>
                                <div class="article_content clearfix">
                                    <div class="title">
                                        <h4><a href="/tin-tuc/cach-che-bien-mon-ngon-tu-kho-ca-dua-9163.html" title="C&#225;ch chế biến m&#243;n ngon từ kh&#244; c&#225; dứa">C&#225;ch chế biến m&#243;n ngon từ kh&#244; c&#225; dứa</a></h4>
                                    </div>
                                    <div class="article_meta">
                                        <div class="article_comment">
                                            <i class="fa fa-comments-o" aria-hidden="true"></i> 0 bình luận
                                        </div>
                                        <div class="article_created">
                                            <i class="fa fa-calendar" aria-hidden="true"></i> <time datetime="16/06/2017">16/06/2017</time>
                                        </div>
                                    </div>
                                    <div class="des">
                                        <p>Cá Dứa một nắng đã được tẩm gia vị, do đó chỉ cần chiên giòn là có...</p>

                                    </div>
                                    <a class="readmore" href="/tin-tuc/cach-che-bien-mon-ngon-tu-kho-ca-dua-9163.html">Đọc tiếp <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
                                </div>
                            </div>
                            <div class="article_item">
                                <div class="article_img">
                                    <a href="/tin-tuc/cach-lam-muc-tam-bot-chien-gion-thom-ngon-9162.html">
                                        <img src="/Uploads/shop2005/images/news/cach-lam-muc-tam-bot-chien-gion-thom-ngon.jpg" alt="C&#225;ch l&#224;m mực tẩm bột chi&#234;n gi&#242;n thơm ngon" title="C&#225;ch l&#224;m mực tẩm bột chi&#234;n gi&#242;n thơm ngon">
                                    </a>
                                </div>
                                <div class="article_content clearfix">
                                    <div class="title">
                                        <h4><a href="/tin-tuc/cach-lam-muc-tam-bot-chien-gion-thom-ngon-9162.html" title="C&#225;ch l&#224;m mực tẩm bột chi&#234;n gi&#242;n thơm ngon">C&#225;ch l&#224;m mực tẩm bột chi&#234;n gi&#242;n thơm ngon</a></h4>
                                    </div>
                                    <div class="article_meta">
                                        <div class="article_comment">
                                            <i class="fa fa-comments-o" aria-hidden="true"></i> 0 bình luận
                                        </div>
                                        <div class="article_created">
                                            <i class="fa fa-calendar" aria-hidden="true"></i> <time datetime="16/06/2017">16/06/2017</time>
                                        </div>
                                    </div>
                                    <div class="des">
                                        <p>Có rất nhiều món ăn được chế biến từ những nguyên liệu khá phổ biến và thưởng...                              </p>

                                    </div>
                                    <a class="readmore" href="/tin-tuc/cach-lam-muc-tam-bot-chien-gion-thom-ngon-9162.html">Đọc tiếp <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
                                </div>
                            </div>
                            <div class="article_item">
                                <div class="article_img">
                                    <a href="/tin-tuc/muc-om-nuoc-dua-hat-sen-9161.html">
                                        <img src="/Uploads/shop2005/images/news/muc-om-nuoc-dua-hat-sen.jpg" alt="Mực om nước dừa hạt sen" title="Mực om nước dừa hạt sen">
                                    </a>
                                </div>
                                <div class="article_content clearfix">
                                    <div class="title">
                                        <h4><a href="/tin-tuc/muc-om-nuoc-dua-hat-sen-9161.html" title="Mực om nước dừa hạt sen">Mực om nước dừa hạt sen</a></h4>
                                    </div>
                                    <div class="article_meta">
                                        <div class="article_comment">
                                            <i class="fa fa-comments-o" aria-hidden="true"></i> 0 bình luận
                                        </div>
                                        <div class="article_created">
                                            <i class="fa fa-calendar" aria-hidden="true"></i> <time datetime="16/06/2017">16/06/2017</time>
                                        </div>
                                    </div>
                                    <div class="des">
                                        <p> 500 g mực ống tươi làm sạch và để nguyên con 150 g hạt sen 100 g giò sống 150 ml nước dừa Gia...                             </p>

                                    </div>
                                    <a class="readmore" href="/tin-tuc/muc-om-nuoc-dua-hat-sen-9161.html">Đọc tiếp <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End blog sidebar -->
                </div>
                <div class="col-md-9">

                    <div class="product_home">
                        <div class="product_home_image">
                            <a href="/san-pham/tom-33806">
                                <img src="/Uploads/shop2005/images/slide/image-product-home-1.jpg" alt="T&#244;m">
                                <div class="figcaption"></div>
                            </a>
                        </div>
                        <div class="clearfix">
                            <div class="section-heading">
                                <h2 title="T&#244;m">
                                    <span>T&#244;m</span>
                                </h2>
                            </div>
                        </div>
                        <div class="clearfix">
                            <div class="product-list">
                                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 product-wrapper zoomIn wow">
                                    <div class="product-block product-resize">
                                        <div class="product-image image-resize">
                                            <div class="sold-out">Hot</div>
                                            <a href="/san-pham/coi-so-diep.html">
                                                <img class="first-img" src="/Uploads/shop2005/images/product/coi-so-diep-1_master.jpg" alt="Cồi s&#242; điệp">
                                            </a>
                                            <div class="product-actions hidden-xs">
                                                <div class="btn-add-to-cart" onclick="AddToCard(229199,1)">
                                                    <a href="javascript:void(0);"><i class="fa fa-shopping-bag" aria-hidden="true"></i></a>
                                                </div>
                                                <div class="btn_quickview">
                                                    <a class="quickview" href="/san-pham/ coi-so-diep.html"><i class="fa fa-eye"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-info text-center m-t-xxs-20">
                                            <h3 class="pro-name">
                                                <a href="/san-pham/coi-so-diep.html" title="Cồi s&#242; điệp">Cồi s&#242; điệp</a>
                                            </h3>
                                            <div class="pro-prices">
                                                <span class="pro-price">160.000&nbsp;₫</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 product-wrapper zoomIn wow">
                                    <div class="product-block product-resize">
                                        <div class="product-image image-resize">
                                            <div class="sold-out">Hot</div>
                                            <a href="/san-pham/hau-sua.html">
                                                <img class="first-img" src="/Uploads/shop2005/images/product/hau-sua-1_master.jpg" alt="H&#224;u sữa">
                                            </a>
                                            <div class="product-actions hidden-xs">
                                                <div class="btn-add-to-cart" onclick="AddToCard(229200,1)">
                                                    <a href="javascript:void(0);"><i class="fa fa-shopping-bag" aria-hidden="true"></i></a>
                                                </div>
                                                <div class="btn_quickview">
                                                    <a class="quickview" href="/san-pham/ hau-sua.html"><i class="fa fa-eye"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-info text-center m-t-xxs-20">
                                            <h3 class="pro-name">
                                                <a href="/san-pham/hau-sua.html" title="H&#224;u sữa">H&#224;u sữa</a>
                                            </h3>
                                            <div class="pro-prices">
                                                <span class="pro-price">120.000&nbsp;₫</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 product-wrapper zoomIn wow">
                                    <div class="product-block product-resize">
                                        <div class="product-image image-resize">
                                            <div class="sold-out">Hot</div>
                                            <a href="/san-pham/ngao-2-coi.html">
                                                <img class="first-img" src="/Uploads/shop2005/images/product/ngao-2-coi-1_master.jpg" alt="Ngao 2 cồi">
                                            </a>
                                            <div class="product-actions hidden-xs">
                                                <div class="btn-add-to-cart" onclick="AddToCard(229201,1)">
                                                    <a href="javascript:void(0);"><i class="fa fa-shopping-bag" aria-hidden="true"></i></a>
                                                </div>
                                                <div class="btn_quickview">
                                                    <a class="quickview" href="/san-pham/ ngao-2-coi.html"><i class="fa fa-eye"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-info text-center m-t-xxs-20">
                                            <h3 class="pro-name">
                                                <a href="/san-pham/ngao-2-coi.html" title="Ngao 2 cồi">Ngao 2 cồi</a>
                                            </h3>
                                            <div class="pro-prices">
                                                <span class="pro-price">190.000&nbsp;₫</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 product-wrapper zoomIn wow">
                                    <div class="product-block product-resize">
                                        <div class="product-image image-resize">
                                            <div class="sold-out">Hot</div>
                                            <a href="/san-pham/oc-mong-tay.html">
                                                <img class="first-img" src="/Uploads/shop2005/images/product/oc-mong-tay-1_master.jpg" alt="Ốc m&#243;ng tay">
                                            </a>
                                            <div class="product-actions hidden-xs">
                                                <div class="btn-add-to-cart" onclick="AddToCard(229202,1)">
                                                    <a href="javascript:void(0);"><i class="fa fa-shopping-bag" aria-hidden="true"></i></a>
                                                </div>
                                                <div class="btn_quickview">
                                                    <a class="quickview" href="/san-pham/ oc-mong-tay.html"><i class="fa fa-eye"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-info text-center m-t-xxs-20">
                                            <h3 class="pro-name">
                                                <a href="/san-pham/oc-mong-tay.html" title="Ốc m&#243;ng tay">Ốc m&#243;ng tay</a>
                                            </h3>
                                            <div class="pro-prices">
                                                <span class="pro-price">370.000&nbsp;₫</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 product-wrapper zoomIn wow">
                                    <div class="product-block product-resize">
                                        <div class="product-image image-resize">
                                            <div class="product-sale">
                                                <span class="sale-lb">-33%</span>
                                            </div>
                                            <a href="/san-pham/so-diep.html">
                                                <img class="first-img" src="/Uploads/shop2005/images/product/so-diep-1_master.jpg" alt="S&#242; điệp">
                                            </a>
                                            <div class="product-actions hidden-xs">
                                                <div class="btn-add-to-cart" onclick="AddToCard(229203,1)">
                                                    <a href="javascript:void(0);"><i class="fa fa-shopping-bag" aria-hidden="true"></i></a>
                                                </div>
                                                <div class="btn_quickview">
                                                    <a class="quickview" href="/san-pham/ so-diep.html"><i class="fa fa-eye"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-info text-center m-t-xxs-20">
                                            <h3 class="pro-name">
                                                <a href="/san-pham/so-diep.html" title="S&#242; điệp">S&#242; điệp</a>
                                            </h3>
                                            <div class="pro-prices">
                                                <span class="pro-price">100.000&nbsp;₫</span>
                                                <del class="pro-compare-price">150.000&nbsp;₫</del>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 product-wrapper zoomIn wow">
                                    <div class="product-block product-resize">
                                        <div class="product-image image-resize">
                                            <div class="sold-out">Hot</div>
                                            <a href="/san-pham/so-mai.html">
                                                <img class="first-img" src="/Uploads/shop2005/images/product/so-mai-1_master.jpg" alt="S&#242; Mai">
                                            </a>
                                            <div class="product-actions hidden-xs">
                                                <div class="btn-add-to-cart" onclick="AddToCard(229204,1)">
                                                    <a href="javascript:void(0);"><i class="fa fa-shopping-bag" aria-hidden="true"></i></a>
                                                </div>
                                                <div class="btn_quickview">
                                                    <a class="quickview" href="/san-pham/ so-mai.html"><i class="fa fa-eye"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-info text-center m-t-xxs-20">
                                            <h3 class="pro-name">
                                                <a href="/san-pham/so-mai.html" title="S&#242; Mai">S&#242; Mai</a>
                                            </h3>
                                            <div class="pro-prices">
                                                <span class="pro-price">290.000&nbsp;₫</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 product-wrapper zoomIn wow">
                                    <div class="product-block product-resize">
                                        <div class="product-image image-resize">
                                            <div class="sold-out">Hot</div>
                                            <a href="/san-pham/tom-cang-xanh.html">
                                                <img class="first-img" src="/Uploads/shop2005/images/product/tom_cang_xanh_01_master.jpg" alt="T&#244;m C&#224;ng Xanh">
                                            </a>
                                            <div class="product-actions hidden-xs">
                                                <div class="btn-add-to-cart" onclick="AddToCard(229205,1)">
                                                    <a href="javascript:void(0);"><i class="fa fa-shopping-bag" aria-hidden="true"></i></a>
                                                </div>
                                                <div class="btn_quickview">
                                                    <a class="quickview" href="/san-pham/ tom-cang-xanh.html"><i class="fa fa-eye"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-info text-center m-t-xxs-20">
                                            <h3 class="pro-name">
                                                <a href="/san-pham/tom-cang-xanh.html" title="T&#244;m C&#224;ng Xanh">T&#244;m C&#224;ng Xanh</a>
                                            </h3>
                                            <div class="pro-prices">
                                                <span class="pro-price">340.000&nbsp;₫</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 product-wrapper zoomIn wow">
                                    <div class="product-block product-resize">
                                        <div class="product-image image-resize">
                                            <div class="sold-out">Hot</div>
                                            <a href="/san-pham/tom-hum-baby.html">
                                                <img class="first-img" src="/Uploads/shop2005/images/product/tom_hum_baby_01_master.jpg" alt="T&#244;m h&#249;m baby">
                                            </a>
                                            <div class="product-actions hidden-xs">
                                                <div class="btn-add-to-cart" onclick="AddToCard(229206,1)">
                                                    <a href="javascript:void(0);"><i class="fa fa-shopping-bag" aria-hidden="true"></i></a>
                                                </div>
                                                <div class="btn_quickview">
                                                    <a class="quickview" href="/san-pham/ tom-hum-baby.html"><i class="fa fa-eye"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-info text-center m-t-xxs-20">
                                            <h3 class="pro-name">
                                                <a href="/san-pham/tom-hum-baby.html" title="T&#244;m h&#249;m baby">T&#244;m h&#249;m baby</a>
                                            </h3>
                                            <div class="pro-prices">
                                                <span class="pro-price">1.000.000&nbsp;₫</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 product-wrapper zoomIn wow">
                                    <div class="product-block product-resize">
                                        <div class="product-image image-resize">
                                            <div class="product-sale">
                                                <span class="sale-lb">-39%</span>
                                            </div>
                                            <a href="/san-pham/tom-su-bien.html">
                                                <img class="first-img" src="/Uploads/shop2005/images/product/tom_su_bien_new_1_master.jpg" alt="T&#244;m s&#250; biển">
                                            </a>
                                            <div class="product-actions hidden-xs">
                                                <div class="btn-add-to-cart" onclick="AddToCard(229207,1)">
                                                    <a href="javascript:void(0);"><i class="fa fa-shopping-bag" aria-hidden="true"></i></a>
                                                </div>
                                                <div class="btn_quickview">
                                                    <a class="quickview" href="/san-pham/ tom-su-bien.html"><i class="fa fa-eye"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-info text-center m-t-xxs-20">
                                            <h3 class="pro-name">
                                                <a href="/san-pham/tom-su-bien.html" title="T&#244;m s&#250; biển">T&#244;m s&#250; biển</a>
                                            </h3>
                                            <div class="pro-prices">
                                                <span class="pro-price">1.150.000&nbsp;₫</span>
                                                <del class="pro-compare-price">1.880.000&nbsp;₫</del>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 product-wrapper zoomIn wow">
                                    <div class="product-block product-resize">
                                        <div class="product-image image-resize">
                                            <div class="sold-out">Hot</div>
                                            <a href="/san-pham/tom-hum-canada.html">
                                                <img class="first-img" src="/Uploads/shop2005/images/product/tom_hum_canada_new_1_master.jpg" alt="T&#244;m h&#249;m Canada">
                                            </a>
                                            <div class="product-actions hidden-xs">
                                                <div class="btn-add-to-cart" onclick="AddToCard(229208,1)">
                                                    <a href="javascript:void(0);"><i class="fa fa-shopping-bag" aria-hidden="true"></i></a>
                                                </div>
                                                <div class="btn_quickview">
                                                    <a class="quickview" href="/san-pham/ tom-hum-canada.html"><i class="fa fa-eye"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-info text-center m-t-xxs-20">
                                            <h3 class="pro-name">
                                                <a href="/san-pham/tom-hum-canada.html" title="T&#244;m h&#249;m Canada">T&#244;m h&#249;m Canada</a>
                                            </h3>
                                            <div class="pro-prices">
                                                <span class="pro-price">1.140.000&nbsp;₫</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 product-wrapper zoomIn wow">
                                    <div class="product-block product-resize">
                                        <div class="product-image image-resize">
                                            <div class="sold-out">Hot</div>
                                            <a href="/san-pham/tom-mu-ni-song.html">
                                                <img class="first-img" src="/Uploads/shop2005/images/product/tom_mu_ni_new_1_master.jpg" alt="T&#244;m mũ ni sống">
                                            </a>
                                            <div class="product-actions hidden-xs">
                                                <div class="btn-add-to-cart" onclick="AddToCard(229209,1)">
                                                    <a href="javascript:void(0);"><i class="fa fa-shopping-bag" aria-hidden="true"></i></a>
                                                </div>
                                                <div class="btn_quickview">
                                                    <a class="quickview" href="/san-pham/ tom-mu-ni-song.html"><i class="fa fa-eye"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-info text-center m-t-xxs-20">
                                            <h3 class="pro-name">
                                                <a href="/san-pham/tom-mu-ni-song.html" title="T&#244;m mũ ni sống">T&#244;m mũ ni sống</a>
                                            </h3>
                                            <div class="pro-prices">
                                                <span class="pro-price">1.100.000&nbsp;₫</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 product-wrapper zoomIn wow">
                                    <div class="product-block product-resize">
                                        <div class="product-image image-resize">
                                            <div class="product-sale">
                                                <span class="sale-lb">-33%</span>
                                            </div>
                                            <a href="/san-pham/tom-hum-tre.html">
                                                <img class="first-img" src="/Uploads/shop2005/images/product/tom_hum_tre_01_master.jpg" alt="T&#244;m h&#249;m tre">
                                            </a>
                                            <div class="product-actions hidden-xs">
                                                <div class="btn-add-to-cart" onclick="AddToCard(229211,1)">
                                                    <a href="javascript:void(0);"><i class="fa fa-shopping-bag" aria-hidden="true"></i></a>
                                                </div>
                                                <div class="btn_quickview">
                                                    <a class="quickview" href="/san-pham/ tom-hum-tre.html"><i class="fa fa-eye"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-info text-center m-t-xxs-20">
                                            <h3 class="pro-name">
                                                <a href="/san-pham/tom-hum-tre.html" title="T&#244;m h&#249;m tre">T&#244;m h&#249;m tre</a>
                                            </h3>
                                            <div class="pro-prices">
                                                <span class="pro-price">1.000.000&nbsp;₫</span>
                                                <del class="pro-compare-price">1.500.000&nbsp;₫</del>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="show_more">
                            Mời bạn <a href="/san-pham/tom-33806">Xem thêm các sản phẩm T&#244;m</a> khác
                        </div>
                    </div>
                    <div class="product_home">
                        <div class="product_home_image">
                            <a href="/san-pham/cua-nghe-33809">
                                <img src="/Uploads/shop2005/images/slide/image-product-home-3.jpg" alt="Cua nghẹ">
                                <div class="figcaption"></div>
                            </a>
                        </div>
                        <div class="clearfix">
                            <div class="section-heading">
                                <h2 title="Cua nghẹ">
                                    <span>Cua nghẹ</span>
                                </h2>
                            </div>
                        </div>
                        <div class="clearfix">
                            <div class="product-list">
                                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 product-wrapper zoomIn wow">
                                    <div class="product-block product-resize">
                                        <div class="product-image image-resize">
                                            <div class="sold-out">Hot</div>
                                            <a href="/san-pham/oc-gai.html">
                                                <img class="first-img" src="/Uploads/shop2005/images/product/oc-gai-1_master.jpg" alt="Ốc Gai">
                                            </a>
                                            <div class="product-actions hidden-xs">
                                                <div class="btn-add-to-cart" onclick="AddToCard(229212,1)">
                                                    <a href="javascript:void(0);"><i class="fa fa-shopping-bag" aria-hidden="true"></i></a>
                                                </div>
                                                <div class="btn_quickview">
                                                    <a class="quickview" href="/san-pham/ oc-gai.html"><i class="fa fa-eye"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-info text-center m-t-xxs-20">
                                            <h3 class="pro-name">
                                                <a href="/san-pham/oc-gai.html" title="Ốc Gai">Ốc Gai</a>
                                            </h3>
                                            <div class="pro-prices">
                                                <span class="pro-price">140.000&nbsp;₫</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="show_more">
                            Mời bạn <a href="/san-pham/cua-nghe-33809">Xem thêm các sản phẩm Cua nghẹ</a> khác
                        </div>
                    </div>
                    <div class="product_home">
                        <div class="product_home_image">
                            <a href="/san-pham/sua-33810">
                                <img src="/Uploads/shop2005/images/slide/image-product-home-2.jpg" alt="Sứa">
                                <div class="figcaption"></div>
                            </a>
                        </div>
                        <div class="clearfix">
                            <div class="section-heading">
                                <h2 title="Sứa">
                                    <span>Sứa</span>
                                </h2>
                            </div>
                        </div>
                        <div class="clearfix">
                            <div class="product-list">
                                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 product-wrapper zoomIn wow">
                                    <div class="product-block product-resize">
                                        <div class="product-image image-resize">
                                            <div class="product-sale">
                                                <span class="sale-lb">-38%</span>
                                            </div>
                                            <a href="/san-pham/oc-giac.html">
                                                <img class="first-img" src="/Uploads/shop2005/images/product/oc-giac-1_master.jpg" alt="Ốc gi&#225;c">
                                            </a>
                                            <div class="product-actions hidden-xs">
                                                <div class="btn-add-to-cart" onclick="AddToCard(229213,1)">
                                                    <a href="javascript:void(0);"><i class="fa fa-shopping-bag" aria-hidden="true"></i></a>
                                                </div>
                                                <div class="btn_quickview">
                                                    <a class="quickview" href="/san-pham/ oc-giac.html"><i class="fa fa-eye"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-info text-center m-t-xxs-20">
                                            <h3 class="pro-name">
                                                <a href="/san-pham/oc-giac.html" title="Ốc gi&#225;c">Ốc gi&#225;c</a>
                                            </h3>
                                            <div class="pro-prices">
                                                <span class="pro-price">200.000&nbsp;₫</span>
                                                <del class="pro-compare-price">320.000&nbsp;₫</del>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 product-wrapper zoomIn wow">
                                    <div class="product-block product-resize">
                                        <div class="product-image image-resize">
                                            <div class="sold-out">Hot</div>
                                            <a href="/san-pham/oc-huong.html">
                                                <img class="first-img" src="/Uploads/shop2005/images/product/oc-huong-1_master.jpg" alt="Ốc Hương">
                                            </a>
                                            <div class="product-actions hidden-xs">
                                                <div class="btn-add-to-cart" onclick="AddToCard(229214,1)">
                                                    <a href="javascript:void(0);"><i class="fa fa-shopping-bag" aria-hidden="true"></i></a>
                                                </div>
                                                <div class="btn_quickview">
                                                    <a class="quickview" href="/san-pham/ oc-huong.html"><i class="fa fa-eye"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-info text-center m-t-xxs-20">
                                            <h3 class="pro-name">
                                                <a href="/san-pham/oc-huong.html" title="Ốc Hương">Ốc Hương</a>
                                            </h3>
                                            <div class="pro-prices">
                                                <span class="pro-price">850.000&nbsp;₫</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 product-wrapper zoomIn wow">
                                    <div class="product-block product-resize">
                                        <div class="product-image image-resize">
                                            <div class="product-sale">
                                                <span class="sale-lb">-29%</span>
                                            </div>
                                            <a href="/san-pham/tom-hum-bong.html">
                                                <img class="first-img" src="/Uploads/shop2005/images/product/tom_hum_bong_01_master.jpg" alt="T&#244;m h&#249;m b&#244;ng">
                                            </a>
                                            <div class="product-actions hidden-xs">
                                                <div class="btn-add-to-cart" onclick="AddToCard(229215,1)">
                                                    <a href="javascript:void(0);"><i class="fa fa-shopping-bag" aria-hidden="true"></i></a>
                                                </div>
                                                <div class="btn_quickview">
                                                    <a class="quickview" href="/san-pham/ tom-hum-bong.html"><i class="fa fa-eye"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-info text-center m-t-xxs-20">
                                            <h3 class="pro-name">
                                                <a href="/san-pham/tom-hum-bong.html" title="T&#244;m h&#249;m b&#244;ng">T&#244;m h&#249;m b&#244;ng</a>
                                            </h3>
                                            <div class="pro-prices">
                                                <span class="pro-price">2.400.000&nbsp;₫</span>
                                                <del class="pro-compare-price">3.360.000&nbsp;₫</del>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="show_more">
                            Mời bạn <a href="/san-pham/sua-33810">Xem thêm các sản phẩm Sứa</a> khác
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="partner">
        <div class="container">
            <div class="row">
                <div class="col-md-12">

                    <!--Blog-->
                    <section id="blog_index" class="container m-b-20">
                        <div class="row">
                            <div class="col-md-12 col-xs-12">
                                <div class="section-heading">
                                    <h2 title="Tin tức nổi bật">
                                        <span>Tin tức nổi bật</span>
                                    </h2>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div id="blog_index_list" class="owl-carousel">
                                <div class="article_item">
                                    <div class="article_img">
                                        <a href="/tin-tuc/canh-rong-bien-thit-bo-9165.html">
                                            <img src="/Uploads/shop2005/images/news/canh-rong-bien-thit-bo.jpg" alt="Canh Rong Biển Thịt B&#242;" title="Canh Rong Biển Thịt B&#242;">
                                        </a>
                                    </div>
                                    <div class="article_content clearfix">
                                        <div class="title">
                                            <h4><a href="/tin-tuc/canh-rong-bien-thit-bo-9165.html" title="Canh Rong Biển Thịt B&#242;">Canh Rong Biển Thịt B&#242;</a></h4>
                                        </div>
                                        <div class="article_meta">
                                            <div class="article_comment">
                                                <i class="fa fa-comments-o" aria-hidden="true"></i> 0 bình luận
                                            </div>
                                            <div class="article_created">
                                                <i class="fa fa-calendar" aria-hidden="true"></i> <time datetime="16/06/2017">16/06/2017</time>
                                            </div>
                                        </div>
                                        <div class="des">
                                            <p> Bước 1: Cho tất cả rong biển vào ngâm trong nước. Sau khoảng 15 phút, vớt ra...                        </p>

                                        </div>
                                        <a class="readmore" href="/tin-tuc/canh-rong-bien-thit-bo-9165.html">Đọc tiếp <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
                                    </div>
                                </div>
                                <div class="article_item">
                                    <div class="article_img">
                                        <a href="/tin-tuc/ca-hoi-nuong-giay-bac-9164.html">
                                            <img src="/Uploads/shop2005/images/news/ca-hoi-nuong-giay-bac.jpg" alt="C&#225; Hồi nướng giấy bạc" title="C&#225; Hồi nướng giấy bạc">
                                        </a>
                                    </div>
                                    <div class="article_content clearfix">
                                        <div class="title">
                                            <h4><a href="/tin-tuc/ca-hoi-nuong-giay-bac-9164.html" title="C&#225; Hồi nướng giấy bạc">C&#225; Hồi nướng giấy bạc</a></h4>
                                        </div>
                                        <div class="article_meta">
                                            <div class="article_comment">
                                                <i class="fa fa-comments-o" aria-hidden="true"></i> 0 bình luận
                                            </div>
                                            <div class="article_created">
                                                <i class="fa fa-calendar" aria-hidden="true"></i> <time datetime="16/06/2017">16/06/2017</time>
                                            </div>
                                        </div>
                                        <div class="des">
                                            <p>Cá hồi không chỉ dùng ăn gỏi. Chúng ta còn có thể biến tấu phong phú hơn...          </p>

                                        </div>
                                        <a class="readmore" href="/tin-tuc/ca-hoi-nuong-giay-bac-9164.html">Đọc tiếp <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
                                    </div>
                                </div>
                                <div class="article_item">
                                    <div class="article_img">
                                        <a href="/tin-tuc/cach-che-bien-mon-ngon-tu-kho-ca-dua-9163.html">
                                            <img src="/Uploads/shop2005/images/news/cach-che-bien-mon-ngon-tu-kho-ca-dua.jpg" alt="C&#225;ch chế biến m&#243;n ngon từ kh&#244; c&#225; dứa" title="C&#225;ch chế biến m&#243;n ngon từ kh&#244; c&#225; dứa">
                                        </a>
                                    </div>
                                    <div class="article_content clearfix">
                                        <div class="title">
                                            <h4><a href="/tin-tuc/cach-che-bien-mon-ngon-tu-kho-ca-dua-9163.html" title="C&#225;ch chế biến m&#243;n ngon từ kh&#244; c&#225; dứa">C&#225;ch chế biến m&#243;n ngon từ kh&#244; c&#225; dứa</a></h4>
                                        </div>
                                        <div class="article_meta">
                                            <div class="article_comment">
                                                <i class="fa fa-comments-o" aria-hidden="true"></i> 0 bình luận
                                            </div>
                                            <div class="article_created">
                                                <i class="fa fa-calendar" aria-hidden="true"></i> <time datetime="16/06/2017">16/06/2017</time>
                                            </div>
                                        </div>
                                        <div class="des">
                                            <p>Cá Dứa một nắng đã được tẩm gia vị, do đó chỉ cần chiên giòn là có...</p>

                                        </div>
                                        <a class="readmore" href="/tin-tuc/cach-che-bien-mon-ngon-tu-kho-ca-dua-9163.html">Đọc tiếp <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
                                    </div>
                                </div>
                                <div class="article_item">
                                    <div class="article_img">
                                        <a href="/tin-tuc/cach-lam-muc-tam-bot-chien-gion-thom-ngon-9162.html">
                                            <img src="/Uploads/shop2005/images/news/cach-lam-muc-tam-bot-chien-gion-thom-ngon.jpg" alt="C&#225;ch l&#224;m mực tẩm bột chi&#234;n gi&#242;n thơm ngon" title="C&#225;ch l&#224;m mực tẩm bột chi&#234;n gi&#242;n thơm ngon">
                                        </a>
                                    </div>
                                    <div class="article_content clearfix">
                                        <div class="title">
                                            <h4><a href="/tin-tuc/cach-lam-muc-tam-bot-chien-gion-thom-ngon-9162.html" title="C&#225;ch l&#224;m mực tẩm bột chi&#234;n gi&#242;n thơm ngon">C&#225;ch l&#224;m mực tẩm bột chi&#234;n gi&#242;n thơm ngon</a></h4>
                                        </div>
                                        <div class="article_meta">
                                            <div class="article_comment">
                                                <i class="fa fa-comments-o" aria-hidden="true"></i> 0 bình luận
                                            </div>
                                            <div class="article_created">
                                                <i class="fa fa-calendar" aria-hidden="true"></i> <time datetime="16/06/2017">16/06/2017</time>
                                            </div>
                                        </div>
                                        <div class="des">
                                            <p>Có rất nhiều món ăn được chế biến từ những nguyên liệu khá phổ biến và thưởng...                              </p>

                                        </div>
                                        <a class="readmore" href="/tin-tuc/cach-lam-muc-tam-bot-chien-gion-thom-ngon-9162.html">Đọc tiếp <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
                                    </div>
                                </div>
                                <div class="article_item">
                                    <div class="article_img">
                                        <a href="/tin-tuc/muc-om-nuoc-dua-hat-sen-9161.html">
                                            <img src="/Uploads/shop2005/images/news/muc-om-nuoc-dua-hat-sen.jpg" alt="Mực om nước dừa hạt sen" title="Mực om nước dừa hạt sen">
                                        </a>
                                    </div>
                                    <div class="article_content clearfix">
                                        <div class="title">
                                            <h4><a href="/tin-tuc/muc-om-nuoc-dua-hat-sen-9161.html" title="Mực om nước dừa hạt sen">Mực om nước dừa hạt sen</a></h4>
                                        </div>
                                        <div class="article_meta">
                                            <div class="article_comment">
                                                <i class="fa fa-comments-o" aria-hidden="true"></i> 0 bình luận
                                            </div>
                                            <div class="article_created">
                                                <i class="fa fa-calendar" aria-hidden="true"></i> <time datetime="16/06/2017">16/06/2017</time>
                                            </div>
                                        </div>
                                        <div class="des">
                                            <p> 500 g mực ống tươi làm sạch và để nguyên con 150 g hạt sen 100 g giò sống 150 ml nước dừa Gia...                             </p>

                                        </div>
                                        <a class="readmore" href="/tin-tuc/muc-om-nuoc-dua-hat-sen-9161.html">Đọc tiếp <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
                                    </div>
                                </div>
                                <div class="article_item">
                                    <div class="article_img">
                                        <a href="/tin-tuc/tom-hap-bia-9160.html">
                                            <img src="/Uploads/shop2005/images/news/tom-hap-bia.jpg" alt="T&#244;m hấp bia" title="T&#244;m hấp bia">
                                        </a>
                                    </div>
                                    <div class="article_content clearfix">
                                        <div class="title">
                                            <h4><a href="/tin-tuc/tom-hap-bia-9160.html" title="T&#244;m hấp bia">T&#244;m hấp bia</a></h4>
                                        </div>
                                        <div class="article_meta">
                                            <div class="article_comment">
                                                <i class="fa fa-comments-o" aria-hidden="true"></i> 0 bình luận
                                            </div>
                                            <div class="article_created">
                                                <i class="fa fa-calendar" aria-hidden="true"></i> <time datetime="16/06/2017">16/06/2017</time>
                                            </div>
                                        </div>
                                        <div class="des">
                                            <p>Nguyên liệu làm món tôm hấp bia : – Tôm sú: 1kg . Chon tôm không – Bia: 1 lon– Sả:                                            </p>

                                        </div>
                                        <a class="readmore" href="/tin-tuc/tom-hap-bia-9160.html">Đọc tiếp <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
                                    </div>
                                </div>
                                <div class="article_item">
                                    <div class="article_img">
                                        <a href="/tin-tuc/cach-lam-lau-kim-chi-hai-san-9159.html">
                                            <img src="/Uploads/shop2005/images/news/cach-lam-lau-kim-chi-hai-san.jpg" alt="C&#225;ch l&#224;m lẩu kim chi hải sản" title="C&#225;ch l&#224;m lẩu kim chi hải sản">
                                        </a>
                                    </div>
                                    <div class="article_content clearfix">
                                        <div class="title">
                                            <h4><a href="/tin-tuc/cach-lam-lau-kim-chi-hai-san-9159.html" title="C&#225;ch l&#224;m lẩu kim chi hải sản">C&#225;ch l&#224;m lẩu kim chi hải sản</a></h4>
                                        </div>
                                        <div class="article_meta">
                                            <div class="article_comment">
                                                <i class="fa fa-comments-o" aria-hidden="true"></i> 0 bình luận
                                            </div>
                                            <div class="article_created">
                                                <i class="fa fa-calendar" aria-hidden="true"></i> <time datetime="16/06/2017">16/06/2017</time>
                                            </div>
                                        </div>
                                        <div class="des">
                                            <p>Lẩu kimchi chua chua cay cay lại thêm vị ngọt của hải sản, cực kỳ tuyệt vời luôn nhé!                                </p>

                                        </div>
                                        <a class="readmore" href="/tin-tuc/cach-lam-lau-kim-chi-hai-san-9159.html">Đọc tiếp <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
                                    </div>
                                </div>
                                <div class="article_item">
                                    <div class="article_img">
                                        <a href="/tin-tuc/muc-chien-xu-sot-wasabi-an-mot-mieng-la-me-man-ngay-9158.html">
                                            <img src="/Uploads/shop2005/images/news/muc-chien-xu-sot-wasabi-an-mot-mieng-la-me-man-ngay.jpg" alt="Mực chi&#234;n x&#249; sốt wasabi ăn một miếng l&#224; m&#234; mẩn ngay" title="Mực chi&#234;n x&#249; sốt wasabi ăn một miếng l&#224; m&#234; mẩn ngay">
                                        </a>
                                    </div>
                                    <div class="article_content clearfix">
                                        <div class="title">
                                            <h4><a href="/tin-tuc/muc-chien-xu-sot-wasabi-an-mot-mieng-la-me-man-ngay-9158.html" title="Mực chi&#234;n x&#249; sốt wasabi ăn một miếng l&#224; m&#234; mẩn ngay">Mực chi&#234;n x&#249; sốt wasabi ăn một miếng l&#224; m&#234; mẩn ngay</a></h4>
                                        </div>
                                        <div class="article_meta">
                                            <div class="article_comment">
                                                <i class="fa fa-comments-o" aria-hidden="true"></i> 0 bình luận
                                            </div>
                                            <div class="article_created">
                                                <i class="fa fa-calendar" aria-hidden="true"></i> <time datetime="16/06/2017">16/06/2017</time>
                                            </div>
                                        </div>
                                        <div class="des">
                                            <p>Mực chiên xù thì chẳng ai lạ lẫm gì nữa rồi, nhưng mực chiên xóc với sốt...                                             </p>

                                        </div>
                                        <a class="readmore" href="/tin-tuc/muc-chien-xu-sot-wasabi-an-mot-mieng-la-me-man-ngay-9158.html">Đọc tiếp <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <!--EndBlog-->
                </div>
            </div>
        </div>
    </div>


    <div class="footer">

        <script src="/app/services/moduleServices.js"></script>
        <script src="/app/controllers/moduleController.js"></script>
        <footer class="footer-content">
            <div class="footer_top">
                <div class="container">
                    <div class="footer_top_wrap">
                        <div class="row">
                            <div class="col-md-3 col-sm-6 col-xs-12">
                                <!-- footer col 1 -->
                                <div class="footer_block">
                                    <h4 class="footer_block_title">
                                        Về ch&#250;ng t&#244;i
                                    </h4>
                                    <div class="block_content">
                                        <ul class="list_group">
                                            <li class="item">
                                                <a href="/gioi-thieu.html">
                                                    Giới thiệu
                                                </a>
                                            </li>
                                            <li class="item">
                                                <a href="/content/giao-hang-doi-tra.html">
                                                    Giao h&#224;ng - Đổi trả
                                                </a>
                                            </li>
                                            <li class="item">
                                                <a href="/content/chinh-sach-bao-mat.html">
                                                    Ch&#237;nh s&#225;ch bảo mật
                                                </a>
                                            </li>
                                            <li class="item">
                                                <a href="/lien-he.html">
                                                    Li&#234;n hệ
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- End footer col 1 -->
                            </div>
                            <div class="col-md-3 col-sm-6 col-xs-12">
                                <!-- footer col 1 -->
                                <div class="footer_block">
                                    <h4 class="footer_block_title">
                                        Trợ gi&#250;p
                                    </h4>
                                    <div class="block_content">
                                        <ul class="list_group">
                                            <li class="item">
                                                <a href="/content/huong-dan-mua-hang.html">
                                                    Hướng dẫn mua h&#224;ng
                                                </a>
                                            </li>
                                            <li class="item">
                                                <a href="/content/huong-dan-thanh-toan.html">
                                                    Hướng dẫn thanh to&#225;n
                                                </a>
                                            </li>
                                            <li class="item">
                                                <a href="/content/tai-khoan-giao-dich.html">
                                                    T&#224;i khoản giao dịch
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- End footer col 1 -->
                            </div>
                            <div class="col-md-3 col-sm-6 col-xs-12">
                                <!-- footer col 3 -->
                                <div class="footer_block">
                                    <h4 class="footer_block_title">
                                        Đăng ký nhận bản tin
                                    </h4>
                                    <div class="block_content" ng-controller="moduleController" ng-init="initController()">
                                        <div class="des_newsletter_form">
                                            Đăng Ký Thành Viên Để Nhận Bản Tin Mỗi Ngày:
                                        </div>
                                        <form id="newsletter_form" ng-submit="registerNewsletter()" class="m-b-20 contact-form">
                                            <div class="newsletter_wrap">
                                                <input ng-model="newsletter.Email" required="" id="contact_email" autocomplete="off" type="email">
                                                <label>Email của bạn </label>
                                                <button class="btn-newsletter" type="submit">
                                                    <span><i class="fa fa-paper-plane-o"></i></span>
                                                </button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <!-- End footer col 3 -->
                            </div>
                            <div class="col-md-3 col-sm-6 col-xs-12">
                                <!-- footer col 4 -->
                                <div class="footer_block">
                                    <h4 class="footer_block_title">
                                        Theo dõi trên Fanpage
                                    </h4>
                                    <div class="block_content">
                                        <div class="fb-page" data-small-header="true" data-href="https://www.facebook.com/runtime.vn" data-tabs="message" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"></div>
                                    </div>
                                </div>
                                <!-- End footer col 4 -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer_bottom">
                <div class="container">
                    <div class="footer_bottom_wrap">
                        <div class="row">
                            <div class="col-lg-7">
                                <div class="footer_address">
                                    <p><span>long</span></p>
                                    <p><span>Địa chỉ: 12lele</span></p>
                                    <p><span>Số điện thoại: 0333924120</span></p>
                                    <p><span>Số di động: 0333924120</span></p>
                                    <p><span>Email: long1122334400@gmail.com</span></p>
                                </div>
                            </div>
                            <div class="col-lg-5 text-right text-center-xs">
                                <div class="copy_right">
                                    <p>
                                        &copy; 2017. Bản quyền thuộc về <a rel="nofollow" href="http://www.runtime.vn"></a>. Powered by <a href="http://www.runtime.vn">RUNTIME.VN</a>
                                    </p>
                                </div>
                                <div class="social_footer">
                                    <ul>
                                        <li><a><span><i class="fa fa-facebook"></i></span></a></li>
                                        <li><a><span><i class="fa fa-twitter"></i></span></a></li>
                                        <li><a><span><i class="fa fa-google-plus"></i></span></a></li>
                                        <li><a><span><i class="fa fa-youtube"></i></span></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!--Template--
        <footer class="footer-content" ng-controller="moduleController" ng-init="initFooterController('Shop')">
            <div class="footer_top">
                <div class="container">
                    <div class="footer_top_wrap">
                        <div class="row">
                            <div class="col-md-3 col-sm-6 col-xs-12" ng-repeat="item in menus|filter: { ParentId: null }|limitTo:2">
                                <div class="footer_block">
                                    <h4 class="footer_block_title">
                                        <span>{{item.Name}}</span>
                                    </h4>
                                    <div class="block_content">
                                        <ul class="list_group" ng-if="(menus|filter: { ParentId: item.Id }).length>0">
                                            <li ng-repeat="it in menus|filter: { ParentId: item.Id }">
                                                <a href="/{{it.PageCode}}.html" ng-if="it.LinkType==LinkTypeConst.Page">
                                                    {{it.Name}}
                                                </a>
                                                <a href="/{{it.PageOptionCode}}/{{it.PageContentCode}}.html" ng-if="it.LinkType==LinkTypeConst.PageContent">
                                                    {{it.Name}}
                                                </a>
                                                <a href="/san-pham/{{it.ProductGroupCode}}" ng-if="it.LinkType==LinkTypeConst.GroupProduct">
                                                    {{it.Name}}
                                                </a>
                                                <a href="/tin-tuc/{{it.NewsGroupCode}}" ng-if="it.LinkType==LinkTypeConst.GroupNews">
                                                    {{it.Name}}
                                                </a>
                                                <a href="/du-an/{{it.ProjectGroupCode}}" ng-if="it.LinkType==LinkTypeConst.GroupProject">
                                                    {{it.Name}}
                                                </a>
                                                <a href="/dich-vu/{{it.ServiceGroupCode}}" ng-if="it.LinkType==LinkTypeConst.GroupService">
                                                    {{it.Name}}
                                                </a>
                                                <a href="/san-giao-dich/{{it.ExchangeGroupCode}}" ng-if="it.LinkType==LinkTypeConst.GroupExchange">
                                                    {{it.Name}}
                                                </a>
                                                <a href="{{it.Url}}" ng-if="it.LinkType==LinkTypeConst.Url">
                                                    {{it.Name}}
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-6 col-xs-12">
                                <div class="footer_block">
                                    <h4 class="footer_block_title">
                                        Đăng ký nhận bản tin
                                    </h4>
                                    <div class="block_content">
                                        <div class="des_newsletter_form">
                                            Đăng Ký Thành Viên Để Nhận Bản Tin Mỗi Ngày:
                                        </div>
                                        <form id="newsletter_form" ng-submit="registerNewsletter()" class="m-b-20 contact-form">
                                            <div class="newsletter_wrap">
                                                <input ng-model="newsletter.Email" required="" id="contact_email" autocomplete="off" type="email">
                                                <label>Email của bạn </label>
                                                <button class="btn-newsletter" type="submit">
                                                    <span><i class="fa fa-paper-plane-o"></i></span>
                                                </button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-6 col-xs-12">
                                <div class="footer_block">
                                    <h4 class="footer_block_title">
                                        Theo dõi trên Fanpage
                                    </h4>
                                    <div class="block_content">
                                        <div class="fb-page" data-small-header="true" data-href="{{shop.Fanpage}}" data-tabs="message" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer_bottom">
                <div class="container">
                    <div class="footer_bottom_wrap">
                        <div class="row">
                            <div class="col-lg-7">
                                <div class="footer_address">
                                    <p><span>{{shop.Name}}</span></p>
                                    <p><span>Địa chỉ: {{shop.Address}}</span></p>
                                    <p><span>Số điện thoại: {{shop.Phone}}</span></p>
                                    <p><span>Số di động: {{shop.Hotline}}</span></p>
                                    <p><span>Email: {{shop.Email}}</span></p>
                                </div>
                            </div>
                            <div class="col-lg-5 text-right text-center-xs">
                                <div class="copy_right">
                                    <p>
                                        &copy; 2017. Bản quyền thuộc về <a rel="nofollow" href="{{shop.Website}}">{{shop.Name}}</a>. Powered by <a href="http://www.runtime.vn">RUNTIME.VN</a>
                                    </p>
                                </div>
                                <div class="social_footer">
                                    <ul>
                                        <li><a href="{{shop.Facebook}}"><span><i class="fa fa-facebook"></i></span></a></li>
                                        <li><a href="{{shop.Twitter}}"><span><i class="fa fa-twitter"></i></span></a></li>
                                        <li><a href="{{shop.Google}}"><span><i class="fa fa-google-plus"></i></span></a></li>
                                        <li><a href="{{shop.Youtube}}"><span><i class="fa fa-youtube"></i></span></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        --End-->
    </div>

</div>


<div style="display: none;" id="loading-mask">
    <div id="loading_mask_loader" class="loader">
        <img alt="Loading..." src="/Images/ajax-loader-main.gif" />
        <div>
            Please wait...
        </div>
    </div>
</div>
<a href="javascript:void(0);" class="back-to-top"><span>Top</span></a>


</body>
</html>
<script type="text/javascript">
    $(".header-content").css({ "background": '' });
    $("html").addClass('');
</script>

