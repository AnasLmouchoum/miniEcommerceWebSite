<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html class="loading" lang="en" data-textdirection="ltr">
<!-- BEGIN: Head-->
<c:set var="ErrorRegister" scope="session" value="${failedRegister}"/>
<c:set var="noMatchingMDP" scope="session" value="${registerNoMDP}"/>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description"
          content="Vuexy admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
    <meta name="keywords"
          content="admin template, Vuexy admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
    <title>Register</title>
    <link rel="apple-touch-icon" href="app-assets/images/ico/apple-icon-120.png">
    <link rel="shortcut icon" type="image/x-icon" href="app-assets/images/ico/favicon.ico">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600" rel="stylesheet">

    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/vendors.min.css">
    <!-- END: Vendor CSS-->

    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="app-assets/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="app-assets/css/bootstrap-extended.css">
    <link rel="stylesheet" type="text/css" href="app-assets/css/colors.css">
    <link rel="stylesheet" type="text/css" href="app-assets/css/components.css">
    <link rel="stylesheet" type="text/css" href="app-assets/css/themes/dark-layout.css">
    <link rel="stylesheet" type="text/css" href="app-assets/css/themes/semi-dark-layout.css">

    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="app-assets/css/core/menu/menu-types/vertical-menu.css">
    <link rel="stylesheet" type="text/css" href="app-assets/css/core/colors/palette-gradient.css">
    <link rel="stylesheet" type="text/css" href="app-assets/css/pages/authentication.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <!-- END: Custom CSS-->

</head>
<!-- END: Head-->


<!-- BEGIN: Body-->

<body class="vertical-layout vertical-menu-modern 1-column  navbar-floating footer-static bg-full-screen-image  blank-page blank-page"
      data-open="click" data-menu="vertical-menu-modern" data-col="1-column">
<!-- BEGIN: Content-->
<div class="app-content content">
    <div class="content-overlay"></div>
    <div class="header-navbar-shadow"></div>
    <div class="content-wrapper">
        <div class="content-header row">
        </div>
        <div class="content-body">
            <section class="row flexbox-container">
                <div class="col-xl-8 col-10 d-flex justify-content-center">
                    <div class="card bg-authentication rounded-0 mb-0">
                        <div class="row m-0">
                            <div class="col-lg-6 d-lg-block d-none text-center align-self-center pl-0 pr-3 py-0">
                                <img src="app-assets/images/pages/register.jpg" alt="branding logo">
                            </div>
                            <div class="col-lg-6 col-12 p-0">
                                <div class="card rounded-0 mb-0 p-2">
                                    <div class="card-header pt-50 pb-1">
                                        <div class="card-title">
                                            <h4 class="mb-0">Create Account</h4>
                                        </div>
                                    </div>
                                    <c:if test="${ErrorRegister!=null}">
                                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                            <p class="mb-0">
                                                    ${ErrorRegister}
                                            </p>
                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                <span aria-hidden="true"><i class="feather icon-x-circle"></i></span>
                                            </button>
                                        </div>
                                        <c:remove var="ErrorRegister"/>
                                    </c:if>

                                    <c:if test="${noMatchingMDP!=null}">
                                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                            <p class="mb-0">
                                                    ${noMatchingMDP}
                                            </p>
                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                <span aria-hidden="true"><i class="feather icon-x-circle"></i></span>
                                            </button>
                                        </div>
                                        <c:remove var="noMatchingMDP"/>
                                    </c:if>
                                    <p class="px-2">Fill the below form to create a new account.</p>
                                    <div class="card-content">
                                        <div class="card-body pt-0">
                                            <form action="index" method="post">
                                                <input type="hidden" name="type" value="register">
                                                <div class="form-label-group">
                                                    <input type="text" id="InputFname" name="fname" class="form-control"
                                                           placeholder="First Name" required>
                                                    <label for="InputFname">First Name</label>
                                                </div>
                                                <div class="form-label-group">
                                                    <input type="text" id="InputLname" name="lname" class="form-control"
                                                           placeholder="Last Name" required>
                                                    <label for="InputLname">Last Name</label>
                                                </div>
                                                <div class="form-label-group">
                                                    <input type="email" id="inputEmail" name="email"
                                                           class="form-control" placeholder="Email" required>
                                                    <label for="inputEmail">Email</label>
                                                </div>
                                                <div class="form-label-group">
                                                    <input type="text" id="inputNum" class="form-control" name="num"
                                                           placeholder="Phone number" required>
                                                    <label for="inputNum">Phone</label>
                                                </div>
                                                <div class="form-label-group">
                                                    <input type="password" id="inputPassword" name="password"
                                                           class="form-control" placeholder="Password" required>
                                                    <label for="inputPassword">Password</label>
                                                </div>
                                                <div class="form-label-group">
                                                    <input type="password" id="inputConfPassword" name="cpassword"
                                                           class="form-control" placeholder="Confirm Password" required>
                                                    <label for="inputConfPassword">Confirm Password</label>
                                                </div>

                                                <a href="${pageContext.request.contextPath}/index?page=login"
                                                   class="btn btn-outline-primary float-left btn-inline mb-50">Login</a>
                                                <button type="submit"
                                                        class="btn btn-primary float-right btn-inline mb-50">Register
                                                </button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

        </div>
    </div>
</div>
<!-- END: Content-->


<!-- BEGIN: Vendor JS-->
<script src="app-assets/vendors/js/vendors.min.js"></script>
<!-- BEGIN Vendor JS-->

<!-- BEGIN: Page Vendor JS-->
<!-- END: Page Vendor JS-->

<!-- BEGIN: Theme JS-->
<script src="app-assets/js/core/app-menu.js"></script>
<script src="app-assets/js/core/app.js"></script>
<script src="app-assets/js/scripts/components.js"></script>
<!-- END: Theme JS-->

<!-- BEGIN: Page JS-->
<!-- END: Page JS-->

</body>
<!-- END: Body-->

</html>
