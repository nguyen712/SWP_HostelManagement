<%-- 
    Document   : pages-user1-profile
    Created on : Jun 1, 2022, 12:23:24 PM
    Author     : buikh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en" class="semi-dark">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- loader-->
        <link href="assets/css/pace.min.css" rel="stylesheet" />
        <script src="assets/js/pace.min.js"></script>

        <!--plugins-->
        <link href="assets/plugins/perfect-scrollbar/css/perfect-scrollbar.css" rel="stylesheet" />
        <link href="assets/plugins/simplebar/css/simplebar.css" rel="stylesheet" />
        <link href="assets/plugins/metismenu/css/metisMenu.min.css" rel="stylesheet" />

        <!-- CSS Files -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/css/bootstrap-extended.css" rel="stylesheet">
        <link href="assets/css/style.css" rel="stylesheet">
        <link href="assets/css/icons.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">

        <!--Theme Styles-->
        <link href="assets/css/dark-theme.css" rel="stylesheet" />
        <link href="assets/css/semi-dark.css" rel="stylesheet" />
        <link href="assets/css/header-colors.css" rel="stylesheet" />

        <title>Dashkote - Bootstrap5 Admin Template</title>
    </head>
    <body>


        <!--start wrapper-->
        <div class="wrapper">
            <c:set var="User" value="${sessionScope.USER}"/>
            <!--start sidebar -->
            <aside class="sidebar-wrapper" data-simplebar="true">
                <div class="sidebar-header">
                    <font color="yellow">
                    <div>
                        <h6>Welcome ${USER.name} (STAFF)</h6>
                    </div></font>
                    <div class="toggle-icon ms-auto"><ion-icon name="menu-sharp"></ion-icon>
                    </div>
                </div>
                <!--navigation-->
                <ul class="metismenu" id="menu">
                    <li>
                        <a href="javascript:;" class="has-arrow">
                            <div class="parent-icon">
                                <ion-icon name="home-sharp"></ion-icon>
                            </div>
                            <div class="menu-title">Management</div>
                        </a>
                        <ul>
                            <li> <a href="staff.jsp">
                                    <ion-icon name="ellipse-outline"></ion-icon>Staff Management
                                </a>
                            </li>
                            <li>
                                <a href="customer.jsp">
                                    <ion-icon name="ellipse-outline"></ion-icon>Customer Management
                                </a>
                            </li>
                            <li>
                                <a href="managementRoom.jsp">
                                    <ion-icon name="ellipse-outline"></ion-icon>Room Management
                                </a>
                            </li>
                            <li>
                                <a href="MainController?btn=ViewBooking">
                                    <ion-icon name="ellipse-outline"></ion-icon>Booking Management
                                </a>
                            </li>
                            <li>
                                <a href="regulationManagement.jsp">
                                    <ion-icon name="ellipse-outline"></ion-icon>Regulation Management
                                </a>
                            </li>
                            <li>
                                <a href="viewfeedback.jsp">
                                    <ion-icon name="ellipse-outline"></ion-icon>Feedback Management
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="pages-staff-profile.jsp">
                            <div class="parent-icon"><ion-icon name="person-circle-sharp"></ion-icon>
                            </div>
                            <div class="menu-title">Staff Profile</div>
                        </a>
                    </li>
                    <li>
                        <a href="pages-edit-staff-profile.jsp">
                            <div class="parent-icon"><ion-icon name="create-sharp"></ion-icon>
                            </div>
                            <div class="menu-title">Edit Profile</div>
                        </a>
                    </li>

                </ul>
                <!--end navigation-->
            </aside>
            <!--end sidebar -->

            <!--start top header-->
            <header class="top-header">
                <nav class="navbar navbar-expand gap-3">
                    <div class="mobile-menu-button"><ion-icon name="menu-sharp"></ion-icon></div>
                    <form class="searchbar">
                        <div class="position-absolute top-50 translate-middle-y search-icon ms-3"><ion-icon name="search-sharp"></ion-icon></div>
                        <input class="form-control" type="text" placeholder="Search for anything">
                        <div class="position-absolute top-50 translate-middle-y search-close-icon"><ion-icon name="close-sharp"></ion-icon></div>
                    </form>
                    <div class="top-navbar-right ms-auto">

                        <ul class="navbar-nav align-items-center">
                            <li class="nav-item mobile-search-button">
                                <a class="nav-link" href="javascript:;">
                                    <div class="">
                                        <ion-icon name="search-sharp"></ion-icon>
                                    </div>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link dark-mode-icon" href="javascript:;">
                                    <div class="mode-icon">
                                        <ion-icon name="moon-sharp"></ion-icon> 
                                    </div>
                                </a>
                            </li>
                            <li class="nav-item dropdown dropdown-large dropdown-apps">
                                <a class="nav-link dropdown-toggle dropdown-toggle-nocaret" href="javascript:;" data-bs-toggle="dropdown">
                                    <div class="">
                                        <ion-icon name="apps-sharp"></ion-icon>
                                    </div>
                                </a>
                            </li>

                            <c:if test="${not empty User}">
                                <li class="nav-item dropdown dropdown-user-setting">
                                    <a class="nav-link dropdown-toggle dropdown-toggle-nocaret" href="javascript:;" data-bs-toggle="dropdown">
                                        <div class="user-setting">
                                            <img src="images/${User.img}" class="user-img" alt="">
                                        </div>
                                    </a>
                                </c:if>
                            <li>
                                <a class="dropdown-item" href="MainController?btn=Logout">
                                    <div class="d-flex align-items-center">
                                        <div class=""><ion-icon name="log-out-outline"></ion-icon></div>
                                        <div class="ms-3"><span name="btn">Logout</span></div>
                                    </div>
                                </a>
                            </li>
                        </ul>
                        </li>

                        </ul>

                    </div>
                </nav>
            </header>
            <!--end top header-->


            <!-- start page content wrapper-->
            <div class="page-content-wrapper">
                <!-- start page content-->
                <div class="page-content">

                    <!--start breadcrumb-->
                    <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
                        <div class="breadcrumb-title pe-3">Pages</div>
                        <div class="ps-3">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb mb-0 p-0 align-items-center">
                                    <li class="breadcrumb-item"><a href="javascript:;"><ion-icon name="home-outline"></ion-icon></a>
                                    </li>
                                    <li class="breadcrumb-item active" aria-current="page">User Profile</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                    <!--end breadcrumb-->

                    <div class="row">
                        <c:if test="${not empty User}">
                            <div class="col-12 col-lg-8 col-xl-9">
                                <div class="card overflow-hidden radius-10">
                                    <div class="profile-cover bg-dark position-relative mb-4">
                                        <div class="user-profile-avatar shadow position-absolute top-50 start-0 translate-middle-x">
                                            <img src="${User.img}" class="user-img" alt="">
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <div class="mt-5 d-flex align-items-start justify-content-between">
                                            <div class="">
                                                <h3 class="mb-2">${User.name}</h3>
                                                <p>${User.address}</p>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="mb-2">About Me</h4>
                                        <p class="">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.</p>
                                        <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.</p>
                                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters</p>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                        <div class="col-12 col-lg-4 col-xl-3">
                            <div class="card radius-10">
                                <div class="card-body">
                                    <h5 class="mb-3">Location</h5>
                                    <p class="mb-0"><ion-icon name="compass-sharp" class="me-2"></ion-icon>${User.address}</p>
                                </div>
                            </div>

                            <div class="card radius-10">
                                <div class="card-body">
                                    <h5 class="mb-3">Connect</h5>
                                    <p class=""><ion-icon name="globe-sharp" class="me-2"></ion-icon>${User.email}</p>
                                    <p class=""><ion-icon name="logo-facebook" class="me-2"></ion-icon>Facebook</p>
                                    <p class=""><ion-icon name="logo-twitter" class="me-2"></ion-icon>Twitter</p>
                                    <p class="mb-0"><ion-icon name="logo-linkedin" class="me-2"></ion-icon>LinkedIn</p>
                                </div>
                            </div>



                        </div>
                    </div><!--end row-->





                </div>
                <!-- end page content-->
            </div>



            <!--Start Back To Top Button-->
            <a href="javaScript:;" class="back-to-top"><ion-icon name="arrow-up-outline"></ion-icon></a>
            <!--End Back To Top Button-->

            <!--start switcher-->
            <div class="switcher-body">
                <button class="btn btn-primary btn-switcher shadow-sm" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling" aria-controls="offcanvasScrolling"><ion-icon name="color-palette-sharp" class="me-0"></ion-icon></button>
                <div class="offcanvas offcanvas-end shadow border-start-0 p-2" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1" id="offcanvasScrolling">
                    <div class="offcanvas-header border-bottom">
                        <h5 class="offcanvas-title" id="offcanvasScrollingLabel">Theme Customizer</h5>
                        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas"></button>
                    </div>
                    <div class="offcanvas-body">
                        <h6 class="mb-0">Theme Variation</h6>
                        <hr>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="inlineRadioOptions" id="LightTheme" value="option1">
                            <label class="form-check-label" for="LightTheme">Light</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="inlineRadioOptions" id="DarkTheme" value="option2">
                            <label class="form-check-label" for="DarkTheme">Dark</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="inlineRadioOptions" id="SemiDark" value="option3" checked>
                            <label class="form-check-label" for="SemiDark">Semi Dark</label>
                        </div>
                        <hr/>
                        <h6 class="mb-0">Header Colors</h6>
                        <hr/>
                        <div class="header-colors-indigators">
                            <div class="row row-cols-auto g-3">
                                <div class="col">
                                    <div class="indigator headercolor1" id="headercolor1"></div>
                                </div>
                                <div class="col">
                                    <div class="indigator headercolor2" id="headercolor2"></div>
                                </div>
                                <div class="col">
                                    <div class="indigator headercolor3" id="headercolor3"></div>
                                </div>
                                <div class="col">
                                    <div class="indigator headercolor4" id="headercolor4"></div>
                                </div>
                                <div class="col">
                                    <div class="indigator headercolor5" id="headercolor5"></div>
                                </div>
                                <div class="col">
                                    <div class="indigator headercolor6" id="headercolor6"></div>
                                </div>
                                <div class="col">
                                    <div class="indigator headercolor7" id="headercolor7"></div>
                                </div>
                                <div class="col">
                                    <div class="indigator headercolor8" id="headercolor8"></div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!--end switcher-->


            <!--start overlay-->
            <div class="overlay nav-toggle-icon"></div>
            <!--end overlay-->

        </div>
        <!--end wrapper-->





        <!-- JS Files-->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/plugins/simplebar/js/simplebar.min.js"></script>
        <script src="assets/plugins/metismenu/js/metisMenu.min.js"></script>
        <script src="assets/js/bootstrap.bundle.min.js"></script>
        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <!--plugins-->
        <script src="assets/plugins/perfect-scrollbar/js/perfect-scrollbar.js"></script>

        <!-- Main JS-->
        <script src="assets/js/main.js"></script>


    </body>
</html>
