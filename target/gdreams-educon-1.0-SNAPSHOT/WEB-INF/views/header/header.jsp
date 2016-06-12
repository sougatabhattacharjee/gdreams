<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link rel="stylesheet" type="text/css" media="screen" href="layout/styles/layout.css"/>
    <script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
    <script type="text/javascript" src="layout/scripts/jquery.backtotop.js"></script>
    <script type="text/javascript" src="layout/scripts/jquery.mobilemenu.js"></script>
    <script type="text/javascript" src="layout/scripts/jquery.flexslider-min.js"></script>


</head>
<body id="top">
<div class="wrapper row1">
    <header id="header" class="clear">
        <div id="logo" class="fl_left">
            <h1><a href="/"><img class="radius-10" src="header/image/GermanDreams.png"

                                 alt="German Dreams"></a></h1>


        </div>
        <div class="fl_right">
            <ul class="inline">
                <li><i class="fa fa-phone"></i>
                    ${contactPhone}
                </li>
                <li><i class="fa fa-envelope-o"></i>
                    <a href="mailto:${contactEmail}?Subject=Hello%20again" target="_top">${contactEmail}</a>
                </li>
            </ul>
        </div>
    </header>
</div>
<!-- ################################################################################################ -->
<div class="wrapper row2">
    <nav id="mainav" class="clear">
        <!-- ################################################################################################ -->
        <ul class="clear">

            <c:if test="${flag eq 'index' || flag eq null || flag eq ''}">
                <li class="active"><a href="/">Home</a></li>
            </c:if>
            <c:if test="${flag != 'index'}">
                <li class=""><a href="/">Home</a></li>
            </c:if>


            <li><a class="drop" href="error">What we do</a>
                <ul>
                    <li><a href="error">Services</a></li>
                </ul>
            </li>

            <c:if test="${flag eq 'about'}">
            <li class="active"><a class="drop" href="/aboutus">About Us</a>
                </c:if>
                <c:if test="${flag != 'about'}">
            <li><a class="drop" href="/aboutus">About Us</a>
                </c:if>

                <%--<li><a class="drop" href="/aboutus">About Us</a>--%>
                <ul>
                    <c:if test="${flag eq 'team' || flag eq null}">
                        <li class="active"><a href="/team">Team</a></li>
                    </c:if>
                    <c:if test="${flag != 'team'}">
                        <li><a href="/team">Team</a></li>
                    </c:if>

                </ul>
            </li>

            <%--<li><a class="drop" href="#">Dropdown</a>--%>

            <%--<ul>--%>
            <%--<li><a href="#">Level 2</a></li>--%>

            <%--<li><a class="drop" href="#">Level 2 + Drop</a>--%>

            <%--<ul>--%>
            <%--<li><a href="#">Level 3</a></li>--%>

            <%--<li><a href="#">Level 3</a></li>--%>

            <%--</ul>--%>

            <%--</li>--%>

            <%--</ul>--%>

            <%--</li>--%>

            <c:if test="${flag eq 'contact'}">
                <li class="active"><a href="/contact">Contact</a></li>
            </c:if>
            <c:if test="${flag != 'contact'}">
                <li><a href="/contact">Contact</a></li>
            </c:if>

            <li><a href="/unsubscribe/1">Client</a></li>

        </ul>
    </nav>
</div>
<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
</body>
</html>
