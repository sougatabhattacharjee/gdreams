<html lang="en">
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link rel="stylesheet" type="text/css" media="screen" href="error/styles/layout.css"/>
    <link rel="stylesheet" type="text/css" media="screen" href="layout/styles/contact/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" media="screen" href="layout/styles/contact/style.css"/>
    <link rel="stylesheet" type="text/css" media="screen" href="layout/styles/contact/ekko-lightbox.min.css"/>

    <script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
    <script type="text/javascript" src="layout/scripts/jquery.backtotop.js"></script>
    <script type="text/javascript" src="layout/scripts/jquery.mobilemenu.js"></script>
    <script type="text/javascript" src="layout/scripts/jquery.flexslider-min.js"></script>
    <script>
        $(function () {
            $("#includedFooter").load("/footer/loadFooter");
        });
    </script>
    <script>
        $(function () {
            $("#includedHeader").load("/header/loadHeader");
        });
    </script>



</head>
<body id="top">

<div id="includedHeader"></div>

<div class="wrap">
    <div class="logo">
        <img src="error/image/404.png" alt="Page Not Found!!"/>
        <p><a href="@routes.HomeController.index()">Go back to Home</a></p>
    </div>
</div>


<div id="includedFooter"></div>
<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
</body>
</html>
