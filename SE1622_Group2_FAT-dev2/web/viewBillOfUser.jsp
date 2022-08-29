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

        <title>History Bill</title>
    </head>
    <body>


        <!--start wrapper-->
        <div class="wrapper">
            <!--start sidebar -->
            <c:set var="User" value="${sessionScope.USER}"/>
            <!--start sidebar -->
            <aside class="sidebar-wrapper" data-simplebar="true">
                <div class="sidebar-header">
                    <font color="green">
                    <div>
                        <h6>Welcome ${USER.name} (USER)</h6>
                    </div></font>
                    <div class="toggle-icon ms-auto">
                        <ion-icon name="menu-sharp"></ion-icon>
                    </div>
                </div>
                <!--navigation-->

                <ul class="metismenu" id="menu">
                    <li class="menu-label">Pages</li>
                    <li>
                        <a href="pages-user1-profile.jsp">
                            <div class="parent-icon">
                                <ion-icon name="person-circle-sharp"></ion-icon>
                            </div>
                            <div class="menu-title">User Profile</div>
                        </a>
                    </li>
                    <c:if test="${not empty User}">
                        <li>
                            <a href="pages-edit-profile.jsp">
                                <div class="parent-icon">
                                    <ion-icon name="create-sharp"></ion-icon>
                                </div>
                                <div class="menu-title">Edit Profile</div>
                            </a>
                        </li>
                    </c:if>
                    <li>

                        <a href="MainController?txtSearchValue=&btn=Search+room+for+customer">
                            <div class="parent-icon">
                                <ion-icon name="home-outline"></ion-icon>
                            </div>
                            <div class="menu-title">View Room</div>
                        </a>

                    </li>

                    <li>

                        <a href="MainController?txtUser=${USER.id}&btn=View+Owned+Room">
                            <div class="parent-icon">
                                <ion-icon name="planet-outline"></ion-icon>
                            </div>
                            <div class="menu-title">Owned Room</div>
                        </a>
                    </li>
                    <li>

                        <a href="RegulationDisplayController">
                            <div class="parent-icon">
                                <ion-icon name="receipt-sharp"></ion-icon>
                            </div>
                            <div class="menu-title">View Regulation</div>
                        </a>

                    </li>
                    <li>

                        <a href="MainController?txtUsername=${USER.id}&btn=View+Bill+Of+You">
                            <div class="parent-icon">
                                <ion-icon name="newspaper-sharp"></ion-icon>
                            </div>
                            <div class="menu-title">View History Bill</div>
                        </a>

                    </li> 
                    <li>

                        <a href="FeedbackViewController?txtUsername=${USER.id}">
                            <div class="parent-icon">
                                <ion-icon name="document-text-sharp"></ion-icon>
                            </div>
                            <div class="menu-title">View Feedback</div>
                        </a>

                    </li> 
                    <li>
                        <a href="NotificationDisplayForCustomer?txtUsername=${USER.id}">
                            <div class="parent-icon">
                                <ion-icon name="gift-sharp"></ion-icon>
                            </div>
                            <div class="menu-title">View Notification</div>
                        </a>

                    </li> 
                    <li>
                        <a href="feedback.jsp">
                            <i class="fadeIn animated bx bx-comment-detail" style="font-size: 22px; margin-right: 8px;"></i>Send Feedback
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

                            <li class="nav-item dropdown dropdown-large">
                                <a class="nav-link dropdown-toggle dropdown-toggle-nocaret" href="javascript:;" data-bs-toggle="dropdown">
                                    <div class="position-relative">
                                        <span class="notify-badge">8</span>
                                        <ion-icon name="notifications-sharp"></ion-icon>
                                    </div>
                                </a>
                                <div class="dropdown-menu dropdown-menu-end">
                                    <a href="javascript:;">
                                        <div class="msg-header">
                                            <p class="msg-header-title">Notifications</p>
                                            <p class="msg-header-clear ms-auto">Marks all as read</p>
                                        </div>
                                    </a>
                                    <div class="header-notifications-list">
                                        <a class="dropdown-item" href="javascript:;">
                                            <div class="d-flex align-items-center">
                                                <div class="notify text-primary"><ion-icon name="cart-outline"></ion-icon>
                                                </div>
                                                <div class="flex-grow-1">
                                                    <h6 class="msg-name">New Orders <span class="msg-time float-end">2 min
                                                            ago</span></h6>
                                                    <p class="msg-info">You have recived new orders</p>
                                                </div>
                                            </div>
                                        </a>
                                        <a class="dropdown-item" href="javascript:;">
                                            <div class="d-flex align-items-center">
                                                <div class="notify text-danger"><ion-icon name="person-outline"></ion-icon>
                                                </div>
                                                <div class="flex-grow-1">
                                                    <h6 class="msg-name">New Customers<span class="msg-time float-end">14 Sec
                                                            ago</span></h6>
                                                    <p class="msg-info">5 new user registered</p>
                                                </div>
                                            </div>
                                        </a>
                                        <a class="dropdown-item" href="javascript:;">
                                            <div class="d-flex align-items-center">
                                                <div class="notify text-success"><ion-icon name="document-outline"></ion-icon>
                                                </div>
                                                <div class="flex-grow-1">
                                                    <h6 class="msg-name">24 PDF File<span class="msg-time float-end">19 min
                                                            ago</span></h6>
                                                    <p class="msg-info">The pdf files generated</p>
                                                </div>
                                            </div>
                                        </a>

                                        <a class="dropdown-item" href="javascript:;">
                                            <div class="d-flex align-items-center">
                                                <div class="notify text-info"><ion-icon name="checkmark-done-outline"></ion-icon>
                                                </div>
                                                <div class="flex-grow-1">
                                                    <h6 class="msg-name">New Product Approved <span
                                                            class="msg-time float-end">2 hrs ago</span></h6>
                                                    <p class="msg-info">Your new product has approved</p>
                                                </div>
                                            </div>
                                        </a>
                                        <a class="dropdown-item" href="javascript:;">
                                            <div class="d-flex align-items-center">
                                                <div class="notify text-warning"><ion-icon name="send-outline"></ion-icon>
                                                </div>
                                                <div class="flex-grow-1">
                                                    <h6 class="msg-name">Time Response <span class="msg-time float-end">28 min
                                                            ago</span></h6>
                                                    <p class="msg-info">5.1 min avarage time response</p>
                                                </div>
                                            </div>
                                        </a>
                                        <a class="dropdown-item" href="javascript:;">
                                            <div class="d-flex align-items-center">
                                                <div class="notify text-danger"><ion-icon name="chatbox-ellipses-outline"></ion-icon>
                                                </div>
                                                <div class="flex-grow-1">
                                                    <h6 class="msg-name">New Comments <span class="msg-time float-end">4 hrs
                                                            ago</span></h6>
                                                    <p class="msg-info">New customer comments recived</p>
                                                </div>
                                            </div>
                                        </a>
                                        <a class="dropdown-item" href="javascript:;">
                                            <div class="d-flex align-items-center">
                                                <div class="notify text-primary"><ion-icon name="albums-outline"></ion-icon>
                                                </div>
                                                <div class="flex-grow-1">
                                                    <h6 class="msg-name">New 24 authors<span class="msg-time float-end">1 day
                                                            ago</span></h6>
                                                    <p class="msg-info">24 new authors joined last week</p>
                                                </div>
                                            </div>
                                        </a>
                                        <a class="dropdown-item" href="javascript:;">
                                            <div class="d-flex align-items-center">
                                                <div class="notify text-success"><ion-icon name="shield-outline"></ion-icon>
                                                </div>
                                                <div class="flex-grow-1">
                                                    <h6 class="msg-name">Your item is shipped <span class="msg-time float-end">5 hrs
                                                            ago</span></h6>
                                                    <p class="msg-info">Successfully shipped your item</p>
                                                </div>
                                            </div>
                                        </a>
                                        <a class="dropdown-item" href="javascript:;">
                                            <div class="d-flex align-items-center">
                                                <div class="notify text-warning"><ion-icon name="cafe-outline"></ion-icon>
                                                </div>
                                                <div class="flex-grow-1">
                                                    <h6 class="msg-name">Defense Alerts <span class="msg-time float-end">2 weeks
                                                            ago</span></h6>
                                                    <p class="msg-info">45% less alerts last 4 weeks</p>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                    <a href="javascript:;">
                                        <div class="text-center msg-footer">View All Notifications</div>
                                    </a>
                                </div>
                            </li>
                            <li class="nav-item dropdown dropdown-user-setting">
                                <a class="nav-link dropdown-toggle dropdown-toggle-nocaret" href="javascript:;" data-bs-toggle="dropdown">
                                    <div class="user-setting">
                                        <img  src="images/${User.img}" class="user-img" alt="">
                                    </div>
                                </a>
                                <ul class="dropdown-menu dropdown-menu-end">
                                    <li>
                                        <a class="dropdown-item" href="javascript:;">
                                            <div class="d-flex flex-row align-items-center gap-2">
                                                <img src="images/${User.img}" alt="" class="rounded-circle" width="54" height="54">
                                                <div class="">
                                                    <h6 class="mb-0 dropdown-user-name">${User.name}</h6>
                                                    <small class="mb-0 dropdown-user-designation text-secondary">${User.address}</small>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li><hr class="dropdown-divider"></li>
                                    <li>
                                        <a class="dropdown-item" href="pages-user-google-profile.jsp">
                                            <div class="d-flex align-items-center">
                                                <div class=""><ion-icon name="person-outline"></ion-icon></div>
                                                <div class="ms-3"><span>Profile</span></div>
                                            </div>
                                        </a>
                                    </li>
                                    <li><hr class="dropdown-divider"></li>
                                    <li>
                                        <a class="dropdown-item" href="MainController?btn=Logout">
                                            <div class="d-flex align-items-center">
                                                <div class=""><ion-icon name="log-out-outline"></ion-icon></div>
                                                <div class="ms-3"><span>Logout</span></div>
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
                        <div class="breadcrumb-title pe-3">eCommerce</div>
                        <div class="ps-3">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb mb-0 p-0 align-items-center">
                                    <li class="breadcrumb-item"><a href="javascript:;"><ion-icon name="home-outline"></ion-icon></a>
                                    </li>
                                    <li class="breadcrumb-item active" aria-current="page">Review Cart</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                    <!--end breadcrumb-->
                    <form action="MainController" method="GET">
                        <c:set var="User" value="${sessionScope.USER}"/>
                        <h6>Welcome ${USER.name} (USER)</h6>
                        <input type="hidden" name="txtUsername" value="${USER.id}" />
                        <input type="hidden" name="btn" value="View Bill Of You" />


                    </form>
                    <c:if test = "${not empty sessionScope.BILL_USER}">

                        <!--start shop cart-->

                        <section class="shop-page">
                            <div class="shop-container">

                                <div class="card shadow-sm border-0">

                                    <div class="card-body">

                                        <div class="shop-cart">


                                            <form action="MainController" method="POST">
                                                <div class="row">
                                                    <c:forEach var="bill" items="${sessionScope.BILL_USER}" varStatus="counter">

                                                        <div class="col-12 col-xl-4">
                                                            <div class="order-summary">
                                                                <div class="card">
                                                                    <div class="card-body">
                                                                        <div class="card">
                                                                            <div class="card-body">
                                                                                <p class="fs-5">Apply Discount Code</p>
                                                                                <div class="input-group">
                                                                                    <input type="text" class="form-control" placeholder="Enter discount code">
                                                                                    <button class="btn btn-primary btn-ecomm" type="button">Apply</button>
                                                                                </div>
                                                                            </div>
                                                                        </div>

                                                                        <div class="card">
                                                                            <div class="card-body">
                                                                                <p class="fs-5">Bill</p>
                                                                                <div class="my-3 border-top"></div>
                                                                                <div class="mb-3">
                                                                                    <label class="form-label">Bill Name</label></br>
                                                                                    <input type="text" class="form-control" disabled="" value="${bill.billName}">
                                                                                    <input type="hidden" class="form-control" value="${bill.billName}">
                                                                                </div>
                                                                                <div class="mb-3">
                                                                                    <label class="form-label">Detail</label>
                                                                                    <input type="text" class="form-control" disabled="" value="${bill.detail}">
                                                                                    <input type="hidden" class="form-control" value="${bill.detail}">
                                                                                </div>
                                                                                <div class="mb-0">
                                                                                    <label class="form-label">Date</label>
                                                                                    <input type="text" class="form-control" disabled="" value="${bill.date}">
                                                                                    <input type="hidden" class="form-control" value="${bill.date}">
                                                                                </div>
                                                                                <div class="mb-0">
                                                                                    <label class="form-label">Room ID</label>
                                                                                    <input type="text" class="form-control" disabled="" value="${bill.roomId1}">
                                                                                    <input type="hidden" class="form-control" value="${bill.roomId1}">
                                                                                </div>
                                                                                <div class="mb-0">
                                                                                    <label class="form-label">Room Price</label>
                                                                                    <input type="text" class="form-control" disabled="" value="${bill.roomPrice}$">
                                                                                    <input type="hidden" class="form-control" value="${bill.roomPrice}$">
                                                                                </div>
                                                                                <div class="mb-0">
                                                                                    <label class="form-label">Electronic Detail</label>
                                                                                    <input type="text" class="form-control" disabled="" value="${bill.electronicDetail}">
                                                                                    <input type="hidden" class="form-control" value="${bill.electronicDetail}">
                                                                                </div>
                                                                                <div class="mb-0">
                                                                                    <label class="form-label">Electronic Price</label>
                                                                                    <input type="text" class="form-control" disabled="" value="${bill.electronicPrice}$">
                                                                                    <input type="hidden" class="form-control" value="${bill.electronicPrice}$">
                                                                                </div>
                                                                                <div class="mb-0">
                                                                                    <label class="form-label">Water Detail</label>
                                                                                    <input type="text" class="form-control" disabled="" value="${bill.waterDetail}">
                                                                                    <input type="hidden" class="form-control" value="${bill.waterDetail}">
                                                                                </div>
                                                                                <div class="mb-0">
                                                                                    <label class="form-label">Water Price</label>
                                                                                    <input type="text" class="form-control" disabled="" value="${bill.waterPrice}$">
                                                                                    <input type="hidden" class="form-control" value="${bill.waterPrice}$">
                                                                                </div>
                                                                            </div>
                                                                        </div>

                                                                        <div class="card mb-0">
                                                                            <div class="card-body">
                                                                                <p class="mb-2">User Name: <span class="float-end">${bill.username}</span>
                                                                                </p>
                                                                                <div class="my-3 border-top"></div>
                                                                                <h5 class="mb-0">Bill Total:
                                                                                    <c:set var="total" value="${bill.electronicPrice + bill.waterPrice + bill.roomPrice}" />
                                                                                    <span class="float-end">${total}$</span>
                                                                                </h5>
                                                                                <div class="my-4"></div>
                                                                                <div class="d-grid"> <a href="javascript:;" class="btn btn-primary btn-ecomm">Proceed to Checkout</a>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </c:forEach>
                                                </div>   
                                            </form>
                                            <!--end row-->
                                        </div>




                                    </div>

                                </div>

                            </div>
                        </section>
                        <!--end shop cart-->

                    </c:if>

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