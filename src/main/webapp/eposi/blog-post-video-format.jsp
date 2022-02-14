<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Eposi - Multipurpose eCommerce Bootstrap5 Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="icon" href="assets/img/favicon.ico">

    <!--=============================================
    =            CSS  files       =
    =============================================-->
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Karla:ital,wght@0,400;0,700;1,400;1,700&family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
        rel="stylesheet">


    <!-- Vendor CSS -->
    <link href="assets/css/vendors.css" rel="stylesheet">
    <!-- Main CSS -->
    <link href="assets/css/style.css" rel="stylesheet">


</head>

<body>
    <!--====================  header area ====================-->
    <div class="header-area header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <!--=======  header wrapper  =======-->
                    <div class="header-wrapper d-none d-lg-flex">
                        <!-- logo -->
                        <div class="logo">
                            <a href="index.html">
                                <img width="93" height="25" src="assets/img/logo.webp" class="img-fluid" alt="">
                            </a>
                        </div>
                        <!-- menu wrapper -->
                        <div class="navigation-menu-wrapper">
                            <nav>
                                <ul>
                                    <li class="menu-item-has-children"><a href="#">祭祖商城</a>
                                        <ul class="sub-menu">
                                            <li><a href="shop-list-left-sidebar.jsp">商品總攬</a></li>
                                            <li><a href="cart.jsp">購物車</a></li>
                                        </ul>
                                    </li>

                                    <li class="menu-item-has-children"><a href="#">預約服務</a>
                                        <ul class="sub-menu">
                                            <li><a href="blog-post-video-format.jsp">法會直播</a></li>
                                            <li><a href="blog-post-audio-format.jsp">預約祭祀</a></li>
                                            <li><a href="menu-item-has-children">線上祭祀</a></li>
                                        </ul>
                                    </li>

                                    <li class="menu-item-has-children"><a href="#">客服中心</a>
                                        <ul class="sub-menu">
                                            <li><a href="contact.jsp">聯絡我們</a></li>
                                            <li><a href="about.jsp">關於我們</a></li>
                                        </ul>
                                    </li>

                                    <li><a href="faq.jsp">常見問題</a></li>
                                </ul>
                            </nav>
                        </div>
                        <!-- header icon -->
                        <div class="header-icon-wrapper">
                            <ul class="icon-list">
                                <li>
                                    <div class="header-cart-icon">
                                        <a href="#" id="minicart-trigger">
                                            <i class="ion-bag"></i>
                                            <span class="counter">3</span>
                                        </a>
                                        <!-- mini cart  -->
                                        <div class="mini-cart" id="mini-cart">
                                            <div class="cart-items-wrapper ps-scroll">
                                                <div class="single-cart-item">
                                                    <a href="javascript:void(0)" class="remove-icon"><i
                                                            class="ion-android-close"></i></a>
                                                    <div class="image">
                                                        <a href="single-product.jsp">
                                                            <img width="80" height="106"
                                                                src="assets/img/products/product-1-80x106.webp"
                                                                class="img-fluid" alt="">
                                                        </a>
                                                    </div>
                                                    <div class="content">
                                                        <p class="product-title"><a href="single-product.jsp">Cillum
                                                                dolore furniture</a></p>
                                                        <p class="count"><span>1 x </span> $402</p>
                                                    </div>
                                                </div>
                                                <div class="single-cart-item">
                                                    <a href="javascript:void(0)" class="remove-icon"><i
                                                            class="ion-android-close"></i></a>
                                                    <div class="image">
                                                        <a href="single-product.jsp">
                                                            <img width="80" height="106"
                                                                src="assets/img/products/product-2-80x106.webp"
                                                                class="img-fluid" alt="">
                                                        </a>
                                                    </div>
                                                    <div class="content">
                                                        <p class="product-title"><a href="single-product.jsp">Lorem
                                                                ipsum furniture</a></p>
                                                        <p class="count"><span>1 x </span> $500</p>
                                                    </div>
                                                </div>
                                                <div class="single-cart-item">
                                                    <a href="javascript:void(0)" class="remove-icon"><i
                                                            class="ion-android-close"></i></a>
                                                    <div class="image">
                                                        <a href="single-product.jsp">
                                                            <img width="80" height="106"
                                                                src="assets/img/products/product-3-80x106.webp"
                                                                class="img-fluid" alt="">
                                                        </a>
                                                    </div>
                                                    <div class="content">
                                                        <p class="product-title"><a href="single-product.jsp">Cillum
                                                                dolore tool</a></p>
                                                        <p class="count"><span>1 x </span> $607</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="cart-calculation">
                                                <table class="table">
                                                    <tbody>
                                                        <tr>
                                                            <td class="text-start">Sub-Total :</td>
                                                            <td class="text-end">$220.00</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="text-start">Eco Tax (-2.00) :</td>
                                                            <td class="text-end">$6.00</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="text-start">VAT (20%) :</td>
                                                            <td class="text-end">$44.00</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="text-start">Total :</td>
                                                            <td class="text-end">$270.00</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="cart-buttons">
                                                <a href="cart.jsp">VIEW CART</a>
                                                <a href="checkout.jsp">CHECKOUT</a>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="header-settings-icon">
                                        <a href="javascript:void(0)" class="header-settings-trigger"
                                            id="header-settings-trigger">
                                            <div class="setting-button">
                                                <span></span>
                                                <span></span>
                                                <span></span>
                                            </div>
                                        </a>

                                        <!-- settings menu -->
                                        <div class="settings-menu-wrapper" id="settings-menu-wrapper">
                                            <div class="single-settings-block">
                                                <h4 class="title">一般用戶 </h4>
                                                <ul>
                                                    <li><a href="login-register.jsp">註冊</a></li>
                                                    <li><a href="login-register.jsp">登入</a></li>
                                                </ul>
                                            </div>
                                            <div class="single-settings-block">
                                                <h4 class="title">廠商專區 </h4>
                                                <ul>
                                                    <li><a href="login-register.jsp">註冊</a></li>
                                                    <li><a href="login-register.jsp">登入</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!--=======  End of header wrapper  =======-->

                    <!--=======  mobile navigation area  =======-->

                    <div class="header-mobile-navigation d-block d-lg-none">
                        <div class="row align-items-center">
                            <div class="col-6 col-md-6">
                                <div class="header-logo">
                                    <a href="index.html">
                                        <img width="93" height="25" src="assets/img/logo.webp" class="img-fluid" alt="">
                                    </a>
                                </div>
                            </div>
                            <div class="col-6 col-md-6">
                                <div class="mobile-navigation text-end">
                                    <div class="header-icon-wrapper">
                                        <ul class="icon-list justify-content-end">
                                            <li>
                                                <div class="header-cart-icon">
                                                    <a href="cart.jsp">
                                                        <i class="ion-bag"></i>
                                                        <span class="counter">3</span>
                                                    </a>
                                                </div>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0)" class="mobile-menu-icon"
                                                    id="mobile-menu-trigger"><i class="fa fa-bars"></i></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!--=======  End of mobile navigation area  =======-->

                </div>
            </div>
        </div>
    </div>
    <!--====================  End of header area  ====================-->

    <!--====================  breadcrumb area ====================-->
    <div class="breadcrumb-area section-space--half">
        <div class="container wide">
            <div class="row">
                <div class="col-lg-12">
                    <!--=======  breadcrumb wrpapper  =======-->
                    <div class="breadcrumb-wrapper breadcrumb-bg">
                        <!--=======  breadcrumb content  =======-->
                        <div class="breadcrumb-content">
                            <h2 class="breadcrumb-content__title">Blog Post</h2>
                            <ul class="breadcrumb-content__page-map">
                                <li><a href="index.html">Home</a></li>
                                <li class="active">Blog Post</li>
                            </ul>
                        </div>
                        <!--=======  End of breadcrumb content  =======-->
                    </div>
                    <!--=======  End of breadcrumb wrpapper  =======-->
                </div>
            </div>
        </div>
    </div>
    <!--====================  End of breadcrumb area  ====================-->
    <!--====================  page content area ====================-->
    <div class="page-content-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <!--=======  page wrapper  =======-->
                    <div class="page-wrapper">
                        <div class="page-content-wrapper">
                            <div class="row">
                                <div class="col-lg-3 order-2 order-lg-1">
                                    <!--=======  page sidebar wrapper =======-->
                                    <div class="page-sidebar-wrapper">
                                        <!--=======  single sidebar widget  =======-->
                                        <div class="single-sidebar-widget">

                                            <h4 class="single-sidebar-widget__title">Categories</h4>
                                            <ul class="single-sidebar-widget__category-list">
                                                <li class="has-children"><a href="#" class="active">Accessories <span
                                                            class="counter">15</span></a>
                                                    <ul>
                                                        <li><a href="#">Brushes <span class="counter">3</span></a></li>
                                                        <li><a href="#">Mascara <span class="counter">5</span></a></li>
                                                        <li><a href="#">Eye Shadow <span class="counter">1</span></a>
                                                        </li>
                                                        <li><a href="#">Eye Brushes <span class="counter">7</span></a>
                                                        </li>
                                                    </ul>
                                                </li>
                                                <li><a href="#">Car Seats <span class="counter">7</span></a></li>
                                                <li><a href="#">Chair <span class="counter">11</span></a></li>
                                                <li><a href="#">Engine Parts <span class="counter">17</span></a></li>
                                                <li><a href="#">Sofas <span class="counter">13</span></a></li>

                                            </ul>
                                        </div>
                                        <!--=======  End of single sidebar widget  =======-->

                                        <!--=======  single sidebar widget  =======-->
                                        <div class="single-sidebar-widget">

                                            <h4 class="single-sidebar-widget__title">Recent Posts</h4>

                                            <!--=======  block container  =======-->

                                            <div class="block-container">

                                                <!--=======  single block  =======-->

                                                <div class="single-block d-flex">
                                                    <div class="image">
                                                        <a href="blog-post-image-format.jsp">
                                                            <img width="370" height="235"
                                                                src="assets/img/blog/slider/1-370x235.webp"
                                                                class="img-fluid" alt="">
                                                        </a>
                                                    </div>
                                                    <div class="content">
                                                        <p><a href="blog-post-image-format.jsp">The biggest lie in
                                                                furniture</a> <span>APRIL 24, 2019</span></p>
                                                    </div>
                                                </div>

                                                <!--=======  End of single block  =======-->

                                                <!--=======  single block  =======-->

                                                <div class="single-block d-flex">
                                                    <div class="image">
                                                        <a href="blog-post-image-gallery.jsp">
                                                            <img width="370" height="235"
                                                                src="assets/img/blog/slider/2-370x235.webp"
                                                                class="img-fluid" alt="">
                                                        </a>
                                                    </div>
                                                    <div class="content">
                                                        <p><a href="blog-post-image-gallery.jsp">How to improve
                                                                furniture quality</a> <span>APRIL 24, 2019</span></p>
                                                    </div>
                                                </div>

                                                <!--=======  End of single block  =======-->

                                                <!--=======  single block  =======-->

                                                <div class="single-block d-flex">
                                                    <div class="image">
                                                        <a href="blog-post-audio-format.jsp">
                                                            <img width="370" height="235"
                                                                src="assets/img/blog/slider/3-370x235.webp"
                                                                class="img-fluid" alt="">
                                                        </a>
                                                    </div>
                                                    <div class="content">
                                                        <p><a href="blog-post-audio-format.jsp">101 ideas for
                                                                furniture</a> <span>APRIL 24, 2019</span></p>
                                                    </div>
                                                </div>

                                                <!--=======  End of single block  =======-->

                                                <!--=======  single block  =======-->

                                                <div class="single-block d-flex">
                                                    <div class="image">
                                                        <a href="blog-post-video-format.jsp">
                                                            <img width="370" height="235"
                                                                src="assets/img/blog/slider/4-370x235.webp"
                                                                class="img-fluid" alt="">
                                                        </a>
                                                    </div>
                                                    <div class="content">
                                                        <p><a href="blog-post-video-format.jsp">No more mistakes with
                                                                furniture</a> <span>APRIL 24, 2019</span></p>
                                                    </div>
                                                </div>

                                                <!--=======  End of single block  =======-->

                                            </div>

                                            <!--=======  End of block container  =======-->
                                        </div>
                                        <!--=======  End of single sidebar widget  =======-->

                                        <!--=======  single sidebar widget  =======-->
                                        <div class="single-sidebar-widget">

                                            <h4 class="single-sidebar-widget__title">Recent Comments</h4>

                                            <!--=======  block container  =======-->

                                            <div class="block-container">

                                                <!--=======  single block  =======-->

                                                <div class="single-block comment-block d-flex">
                                                    <div class="image">
                                                        <a href="blog-post-image-format.jsp">
                                                            <img width="40" height="40"
                                                                src="assets/img/blog/comment-icon.webp"
                                                                class="img-fluid" alt="">
                                                        </a>
                                                    </div>
                                                    <div class="content">
                                                        <p><span>Admin Says</span> <a
                                                                href="blog-post-image-format.jsp">The biggest lie in
                                                                plant</a></p>
                                                    </div>
                                                </div>

                                                <!--=======  End of single block  =======-->

                                                <!--=======  single block  =======-->

                                                <div class="single-block comment-block d-flex">
                                                    <div class="image">
                                                        <a href="blog-post-image-gallery.jsp">
                                                            <img width="40" height="40"
                                                                src="assets/img/blog/comment-icon.webp"
                                                                class="img-fluid" alt="">
                                                        </a>
                                                    </div>
                                                    <div class="content">
                                                        <p><span>Admin Says</span><a
                                                                href="blog-post-image-gallery.jsp">How to improve plant
                                                                quality</a></p>
                                                    </div>
                                                </div>

                                                <!--=======  End of single block  =======-->

                                                <!--=======  single block  =======-->

                                                <div class="single-block comment-block d-flex">
                                                    <div class="image">
                                                        <a href="blog-post-audio-format.jsp">
                                                            <img width="40" height="40"
                                                                src="assets/img/blog/comment-icon.webp"
                                                                class="img-fluid" alt="">
                                                        </a>
                                                    </div>
                                                    <div class="content">
                                                        <p><span>Admin Says</span><a
                                                                href="blog-post-audio-format.jsp">101 ideas for
                                                                plant</a></p>
                                                    </div>
                                                </div>

                                                <!--=======  End of single block  =======-->

                                                <!--=======  single block  =======-->

                                                <div class="single-block comment-block d-flex">
                                                    <div class="image">
                                                        <a href="blog-post-video-format.jsp">
                                                            <img width="40" height="40"
                                                                src="assets/img/blog/comment-icon.webp"
                                                                class="img-fluid" alt="">
                                                        </a>
                                                    </div>
                                                    <div class="content">
                                                        <p><span>Admin Says</span><a
                                                                href="blog-post-video-format.jsp">No more mistakes with
                                                                plant</a> </p>
                                                    </div>
                                                </div>

                                                <!--=======  End of single block  =======-->

                                            </div>

                                            <!--=======  End of block container  =======-->
                                        </div>
                                        <!--=======  End of single sidebar widget  =======-->



                                        <!--=======  single sidebar widget  =======-->
                                        <div class="single-sidebar-widget">
                                            <h4 class="single-sidebar-widget__title">Popular Tags</h4>
                                            <ul class="single-sidebar-widget__tag-list">
                                                <li><a href="#">Car Seats</a></li>
                                                <li><a href="#">Chair</a></li>
                                                <li><a href="#">Engine Parts</a></li>
                                                <li><a href="#">Sofas</a></li>
                                                <li><a href="#">Sofas</a></li>
                                                <li><a href="#">Decor</a></li>
                                                <li><a href="#">Furniture</a></li>
                                                <li><a href="#">Chair</a></li>

                                            </ul>
                                        </div>
                                        <!--=======  End of single sidebar widget  =======-->
                                    </div>
                                    <!--=======  End of page sidebar wrapper  =======-->
                                </div>
                                <div class="col-lg-9 order-1 order-lg-2">
                                    <!--=======  blog page content  =======-->
                                    <div class="blog-page-content">
                                        <!--=======  blog post container  =======-->

                                        <div class="blog-single-post-container">

                                            <!--=======  post title  =======-->


                                            <h3 class="post-title">The biggest lie in furniture</h3>

                                            <!--=======  End of post title  =======-->


                                            <!--=======  Post meta  =======-->
                                            <div class="post-meta">
                                                <p><span><i class="fa fa-user-circle"></i> Posted By: </span> <a
                                                        href="#">admin</a> <span class="separator">|</span> <span><i
                                                            class="fa fa-calendar"></i> Posted On: <a href="#">24
                                                            August, 2019</a></span></p>
                                            </div>

                                            <!--=======  End of Post meta  =======-->

                                            <!--=======  Post media  =======-->

                                            <div class="single-blog-post-media">
                                                <div class="video">
                                                    <iframe width="560" height="315"
                                                        src="https://www.youtube.com/embed/tvPnrfQCiCo"
                                                        allow="autoplay; encrypted-media" allowfullscreen></iframe>
                                                </div>
                                            </div>

                                            <!--=======  End of Post media  =======-->

                                            <!--=======  Post content  =======-->

                                            <div class="post-content">
                                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sed, ipsum
                                                    deleniti repellendus nam deserunt vitae ullam amet quos! Nesciunt,
                                                    quo. Lorem, ipsum dolor. Lorem ipsum dolor sit amet consectetur
                                                    adipisicing elit. Quod, vitae numquam! Vitae alias ullam
                                                    voluptatibus asperiores fugit ea soluta consectetur adipisci enim,
                                                    impedit odit quisquam, ut, numquam voluptatem quas cum!</p>

                                                <blockquote>
                                                    <p>ipsum deleniti repellendus nam deserunt vitae ullam amet quos!
                                                        Nesciunt, quo. Lorem, ipsum dolor. Lorem ipsum dolor sit amet
                                                        consectetur adipisicing elit. Quod, vitae numquam! VitaeLorem
                                                        ipsum dolor sit amet consectetur adipisicing elit. Sed, ipsum
                                                        deleniti repellendus nam deserunt vitae ullam amet quos!
                                                        Nesciunt, quo. Lorem, ipsum dolor.</p>
                                                </blockquote>

                                                <p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Quod, vitae
                                                    numquam! Vitae alias ullam voluptatibus asperiores fugit ea soluta
                                                    consectetur adipisci enim, impedit odit quisquam, u Lorem ipsum
                                                    dolor sit amet consectetur adipisicing elit. Sed, ipsum deleniti
                                                    repellendus nam deserunt vitae ullam amet quos! Nesciunt, quo.
                                                    Lorem, ipsum dolor. Lorem ipsum dolor sit amet consectetur
                                                    adipisicing elit. Quod, vitae numquam! Vitae alias ullam
                                                    voluptatibus asperiores fugit ea soluta consectetur adipisci enim,
                                                    impedit odit quisquam, ut, numquam voluptatem quas cum!</p>

                                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sed, ipsum
                                                    deleniti repellendus nam deserunt vitae ullam amet quos! Nesciunt,
                                                    quo. Lorem, ipsum dolor. Lorem ipsum dolor sit amet consectetur
                                                    adipisicing elit. Quod, vitae numquam! Vitae alias ullam
                                                    voluptatibus asperiores fugit ea soluta consectetur adipisci enim,
                                                    impedit odit quisquam, ut, numquam voluptatem quas cum! repellendus
                                                    nam deserunt vitae ullam amet quos! Nesciunt, quo. Lorem, ipsum
                                                    dolor. Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                                    Quod, vitae numquam! Vitae alias ullam voluptatibus asperiores fugit
                                                    ea soluta consectetur adipisci enim, impedit odit quisquam, ut,
                                                    numquam voluptatem quas cum!</p>
                                            </div>

                                            <!--=======  End of Post content  =======-->

                                            <!--=======  Tags area  =======-->

                                            <div class="tag-area">
                                                <span>Tags: </span>
                                                <ul>
                                                    <li><a href="#">Image</a>,</li>
                                                    <li><a href="#">furniture</a></li>
                                                </ul>
                                            </div>

                                            <!--=======  End of Tags area  =======-->


                                            <!--=======  Share post area  =======-->

                                            <div class="social-share-buttons">
                                                <h3>share this post</h3>
                                                <ul>
                                                    <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a>
                                                    </li>
                                                    <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a>
                                                    </li>
                                                    <li><a class="google-plus" href="#"><i
                                                                class="fa fa-google-plus"></i></a></li>
                                                    <li><a class="pinterest" href="#"><i
                                                                class="fa fa-pinterest"></i></a></li>
                                                </ul>
                                            </div>

                                            <!--=====  End of Share post area  ======-->

                                            <!--=======  related post  =======-->

                                            <div class="related-post-container">
                                                <div class="row">
                                                    <div class="col-lg-12">
                                                        <h3 class="related-post-title">RELATED POSTS</h3>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-lg-4 col-md-4">
                                                        <!--=======  single related post  =======-->

                                                        <div class="single-related-post">
                                                            <div class="image">
                                                                <a href="blog-post-image-format.jsp">
                                                                    <img width="370" height="235"
                                                                        src="assets/img/blog/slider/1-370x235.webp"
                                                                        class="img-fluid" alt="">
                                                                </a>
                                                            </div>
                                                            <div class="content">
                                                                <h3 class="related-post-title">
                                                                    <a href="blog-post-image-format.jsp">The biggest
                                                                        lie in furniture</a>
                                                                    <span>April 24, 2019</span>
                                                                </h3>
                                                            </div>
                                                        </div>

                                                        <!--=======  End of single related post  =======-->
                                                    </div>
                                                    <div class="col-lg-4 col-md-4">
                                                        <!--=======  single related post  =======-->

                                                        <div class="single-related-post">
                                                            <div class="image">
                                                                <a href="blog-post-image-gallery.jsp">
                                                                    <img width="370" height="235"
                                                                        src="assets/img/blog/slider/2-370x235.webp"
                                                                        class="img-fluid" alt="">
                                                                </a>
                                                            </div>
                                                            <div class="content">
                                                                <h3 class="related-post-title">
                                                                    <a href="blog-post-image-gallery.jsp">How to
                                                                        improve furniture</a>
                                                                    <span>April 24, 2019</span>
                                                                </h3>
                                                            </div>
                                                        </div>

                                                        <!--=======  End of single related post  =======-->
                                                    </div>
                                                    <div class="col-lg-4 col-md-4">
                                                        <!--=======  single related post  =======-->

                                                        <div class="single-related-post">
                                                            <div class="image">
                                                                <a href="blog-post-audio-format.jsp">
                                                                    <img width="370" height="235"
                                                                        src="assets/img/blog/slider/3-370x235.webp"
                                                                        class="img-fluid" alt="">
                                                                </a>
                                                            </div>
                                                            <div class="content">
                                                                <h3 class="related-post-title">
                                                                    <a href="blog-post-audio-format.jsp">101 ideas for
                                                                        furniture</a>
                                                                    <span>April 24, 2019</span>
                                                                </h3>
                                                            </div>
                                                        </div>

                                                        <!--=======  End of single related post  =======-->
                                                    </div>
                                                </div>
                                            </div>

                                            <!--=======  End of related post  =======-->

                                        </div>

                                        <!--=======  End of blog post container  =======-->

                                        <!--=============================================
                        =            Comment section         =
                        =============================================-->

                                        <div class="comment-section">
                                            <h3 class="comment-counter">4 COMMENTS</h3>

                                            <!--=======  comment container  =======-->

                                            <div class="comment-container">
                                                <!--=======  single comment  =======-->

                                                <div class="single-comment">
                                                    <span class="reply-btn"><a href="#">Reply</a></span>

                                                    <div class="image">
                                                        <img width="40" height="40"
                                                            src="assets/img/blog/comment-icon.webp" alt="">
                                                    </div>
                                                    <div class="content">
                                                        <h3 class="user">admin <span class="comment-time">April 28, 2019
                                                                at 3:09 am</span></h3>
                                                        <p class="comment-text">Lorem ipsum dolor sit amet consectetur
                                                            adipisicing elit. Sint quia rem dolorem et rerum est
                                                            laudantium eum dolores omnis perspiciatis.</p>
                                                    </div>

                                                </div>

                                                <!--=======  End of single comment  =======-->

                                                <!--=======  single reply comment  =======-->

                                                <div class="single-comment reply-comment">
                                                    <span class="reply-btn"><a href="#">Reply</a></span>

                                                    <div class="image">
                                                        <img width="40" height="40"
                                                            src="assets/img/blog/comment-icon.webp" alt="">
                                                    </div>
                                                    <div class="content">
                                                        <h3 class="user">admin <span class="comment-time">April 28, 2019
                                                                at 3:09 am</span></h3>
                                                        <p class="comment-text">Lorem ipsum dolor sit amet consectetur
                                                            adipisicing elit. Sint quia rem dolorem et rerum est
                                                            laudantium eum dolores omnis perspiciatis.</p>
                                                    </div>

                                                </div>

                                                <!--=======  End of single reply comment  =======-->

                                                <!--=======  single comment  =======-->

                                                <div class="single-comment">
                                                    <span class="reply-btn"><a href="#">Reply</a></span>

                                                    <div class="image">
                                                        <img width="40" height="40"
                                                            src="assets/img/blog/comment-icon.webp" alt="">
                                                    </div>
                                                    <div class="content">
                                                        <h3 class="user">admin <span class="comment-time">April 28, 2019
                                                                at 3:09 am</span></h3>
                                                        <p class="comment-text">Lorem ipsum dolor sit amet consectetur
                                                            adipisicing elit. Sint quia rem dolorem et rerum est
                                                            laudantium eum dolores omnis perspiciatis.</p>
                                                    </div>

                                                </div>

                                                <!--=======  End of single comment  =======-->



                                            </div>

                                            <!--=======  End of comment container  =======-->

                                            <!--=======  comment form container  =======-->

                                            <div class="comment-form-container">
                                                <h3 class="comment-form-title">LEAVE A REPLY</h3>
                                                <p>Your email address will not be published. Required fields are marked
                                                    *</p>

                                                <!--=======  comment form  =======-->

                                                <div class="comment-form">
                                                    <form action="#">
                                                        <div class="row">
                                                            <div class="col-lg-12">
                                                                <div class="form-group">
                                                                    <label>Comment</label>
                                                                    <textarea name="commentMessage"
                                                                        id="commentMessage"></textarea>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-4">
                                                                <div class="form-group">
                                                                    <label>Name <span class="required">*</span></label>
                                                                    <input type="text" name="commenterName">
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-4">
                                                                <div class="form-group">
                                                                    <label>Email <span class="required">*</span></label>
                                                                    <input type="text" name="commenterEmail">
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-4">
                                                                <div class="form-group">
                                                                    <label>Website</label>
                                                                    <input type="text" name="commenterWebsite">
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-12 mt-3">
                                                                <button type="submit" class="comment-btn"
                                                                    name="submit">post comment</button>
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>

                                                <!--=======  End of comment form  =======-->
                                            </div>

                                            <!--=======  End of comment form container  =======-->

                                        </div>


                                        <!--=====  End of Comment section  ======-->
                                    </div>
                                    <!--=======  End of blog page content  =======-->
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--=======  End of page wrapper  =======-->
                </div>
            </div>
        </div>
    </div>
    <!--====================  End of page content area  ====================-->
    <!--====================  newsletter area ====================-->
    <div class="newsletter-area section-space--inner">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 offset-lg-2">
                    <div class="newsletter-wrapper">
                        <p class="small-text">Special Ofers For Subscribers</p>
                        <h3 class="title">Ten Percent Member Discount</h3>
                        <p class="short-desc">Subscribe to our newsletters now and stay up to date with new collections,
                            the latest lookbooks and exclusive offers.</p>

                        <div class="newsletter-form">
                            <form id="mc-form" class="mc-form">
                                <input type="email" placeholder="Enter Your Email Address Here..." required>
                                <button type="submit" value="submit">SUBSCRIBE</button>
                            </form>

                        </div>
                        <!-- mailchimp-alerts Start -->
                        <div class="mailchimp-alerts">
                            <div class="mailchimp-submitting"></div><!-- mailchimp-submitting end -->
                            <div class="mailchimp-success"></div><!-- mailchimp-success end -->
                            <div class="mailchimp-error"></div><!-- mailchimp-error end -->
                        </div>
                        <!-- mailchimp-alerts end -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--====================  End of newsletter area  ====================-->
    <!--====================  footer area ====================-->
    <div class="footer-area">
        <div class="footer-copyright">
            <div class="container wide">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="footer-copyright-wrapper footer-copyright-wrapper--default-footer">
                            <div class="container">
                                <div class="row align-items-center no-gutters">
                                    <div class="col-lg-2 col-md-2">
                                        <div class="footer-logo">
                                            <a href="#"><img width="93" height="25" src="assets/img/logo.webp"
                                                    class="img-fluid" alt=""></a>
                                        </div>
                                    </div>

                                    <div class="col-lg-7 col-md-5">

                                        <div class="copyright-text">

                                            Copyright &copy; 2021 <a href="#">Eposi</a>. All Rights Reserved.
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-5">
                                        <div class="copyright-social-wrapper">
                                            <ul class="copyright-social">
                                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                                <li><a href="#"><i class="fa fa-youtube"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--====================  End of footer area  ====================-->
    <!--=======  offcanvas mobile menu  =======-->

    <div class="offcanvas-mobile-menu" id="offcanvas-mobile-menu">
        <a href="javascript:void(0)" class="offcanvas-menu-close" id="offcanvas-menu-close-trigger">
            <i class="ion-android-close"></i>
        </a>

        <div class="offcanvas-wrapper">

            <div class="offcanvas-inner-content">
                <nav class="offcanvas-navigation">
                    <ul>
                        <li class="menu-item-has-children"><a href="index.html">祭祖商城</a>
                            <ul class="sub-menu">
                                <li><a href="shop-list-left-sidebar.jsp">商品總攬</a></li>
                                <li><a href="cart.jsp">購物車</a></li>
                            </ul>
                        </li>

                        <li class="menu-item-has-children"><a href="#">預約服務</a>
                            <ul class="sub-menu">
                                <li><a href="blog-post-video-format.jsp">法會直播</a></li>
                                <li><a href="blog-post-audio-format.jsp">預約祭祀</a></li>
                                <li><a href="menu-item-has-children">線上祭祀</a></li>
                            </ul>
                        </li>

                        <li class="menu-item-has-children"><a href="#">客服中心</a>
                            <ul class="sub-menu">
                                <li><a href="contact.jsp">聯絡我們</a></li>
                                <li><a href="about.jsp">關於我們</a></li>
                            </ul>
                        </li>

                        <li><a href="faq.jsp">常見問題</a></li>
                    </ul>
                </nav>

                <div class="offcanvas-settings">
                    <nav class="offcanvas-navigation">
                        <ul>
                            <li class="menu-item-has-children"><a href="#">會員登入 </a>
                                <ul class="sub-menu">
                                    <li><a href="login-register.jsp">註冊</a></li>
                                    <li><a href="login-register.jsp">登入</a></li>
                                </ul>
                            </li>
                            <li class="menu-item-has-children"><a href="#">廠商登入 </a>
                                <ul class="sub-menu">
                                    <li><a href="login-register.jsp">註冊</a></li>
                                    <li><a href="login-register.jsp">登入</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </div>

                <div class="offcanvas-widget-area">
                    <!--Off Canvas Widget Social Start-->
                    <div class="off-canvas-widget-social">
                        <a href="#" title="Facebook"><i class="fa fa-facebook"></i></a>
                        <a href="#" title="Twitter"><i class="fa fa-twitter"></i></a>
                        <a href="#" title="LinkedIn"><i class="fa fa-linkedin"></i></a>
                        <a href="#" title="Youtube"><i class="fa fa-youtube-play"></i></a>
                        <a href="#" title="Vimeo"><i class="fa fa-vimeo-square"></i></a>
                    </div>
                    <!--Off Canvas Widget Social End-->
                </div>
            </div>
        </div>

    </div>

    <!--=======  End of offcanvas mobile menu  =======-->
    <!--====================  search overlay ====================-->

    <div class="search-overlay" id="search-overlay">
        <a href="javascript:void(0)" class="close-search-overlay" id="close-search-overlay">
            <i class="ion-ios-close-empty"></i>
        </a>

        <!--=======  search form  =======-->

        <div class="search-form">
            <form action="#">
                <input type="search" placeholder="Search entire store here ...">
                <button type="submit"><i class="ion-android-search"></i></button>
            </form>
        </div>

        <!--=======  End of search form  =======-->
    </div>

    <!--====================  End of search overlay  ====================-->
    <!-- scroll to top  -->
    <div id="scroll-top">
        <span>線上客服</span><i class="ion-chevron-right"></i><i class="ion-chevron-right"></i>
    </div>
    <!-- end of scroll to top -->
    <!--=============================================
    =            JS files        =
    =============================================-->

    <!-- Vendor JS -->
    <script src="assets/js/vendors.js"></script>

    <!-- Active JS -->
    <script src="assets/js/active.js"></script>

    <!--=====  End of JS files ======-->

</body>

</html>