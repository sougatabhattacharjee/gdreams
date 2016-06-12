<html>
<head>
    <title>German Dreams</title>
    <link rel="icon" href="header/image/GermanDreams.png" type="image/x-icon"/>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link rel="stylesheet" type="text/css" media="screen" href="layout/styles/layout.css"/>
    <!-- JAVASCRIPTS -->
    <script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
    <script type="text/javascript" src="layout/scripts/jquery.backtotop.js"></script>
    <script type="text/javascript" src="layout/scripts/jquery.mobilemenu.js"></script>
    <script type="text/javascript" src="layout/scripts/jquery.flexslider-min.js"></script>
    <script>
        $(function () {
            $("#includedHeader").load("/header/loadHeader/index");
        });
    </script>
    <script>
        $(function () {
            $("#includedFooter").load("/footer/loadFooter");
        });
    </script>
    <script>
        $(function () {
            $("#includedClientFeedback").load("/clientfeedback");
        });
    </script>


    <link rel="stylesheet" type="text/css" media="screen" href="aboutus/styles/animate.css"/>
    <link rel="stylesheet" type="text/css" media="screen" href="aboutus/styles/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" media="screen" href="aboutus/styles/font-awesome.css"/>
    <link rel="stylesheet" type="text/css" media="screen" href="aboutus/styles/linecons.css"/>
    <link rel="stylesheet" type="text/css" media="screen" href="aboutus/styles/responsive.css"/>


</head>

<body id="top">
<div id="includedHeader"></div>


<div class="wrapper row3">
    <div id="slider" class="clear">

        <div class="flexslider basicslider">
            <ul class="slides">
                <li><a href="#"><img class="radius-10" src="home/image/01.png" alt=""></a></li>
                <li><a href="#"><img class="radius-10" src="home/image/02.png" alt=""></a></li>
                <li><a href="#"><img class="radius-10" src="home/image/03.png" alt=""></a></li>
            </ul>
        </div>

    </div>
</div>

<div class="wrapper row3">
    <main class="container clear">

        <ul class="nospace group btmspace-80">
            <li class="one_third first">
                <article class="service"><i class="icon fa fa-ambulance"></i>
                    <h6 class="heading"><a href="#">Lorem Ipsum Dolor</a></h6>
                    <p>Aenean semper elementum tellus, ut placerat leo. Quisque vehicula, urna sit amet.</p>
                    <footer><a href="#">Read More &raquo;</a></footer>
                </article>
            </li>
            <li class="one_third">
                <article class="service"><i class="icon fa fa-h-square"></i>
                    <h6 class="heading"><a href="#">Lorem Ipsum Dolor</a></h6>
                    <p>Aenean semper elementum tellus, ut placerat leo. Quisque vehicula, urna sit amet.</p>
                    <footer><a href="#">Read More &raquo;</a></footer>
                </article>
            </li>
            <li class="one_third">
                <article class="service"><i class="icon fa fa-hospital-o"></i>
                    <h6 class="heading"><a href="#">Lorem Ipsum Dolor</a></h6>
                    <p>Aenean semper elementum tellus, ut placerat leo. Quisque vehicula, urna sit amet.</p>
                    <footer><a href="#">Read More &raquo;</a></footer>
                </article>
            </li>
        </ul>

        <h2 class="sectiontitle">Lorem Ipsum Dolor</h2>

        <ul class="nospace group">
            <li class="one_half first">
                <article><img class="imgl radius-10" src="" alt="">
                    <h6 class="heading"><a href="#">Lorem Ipsum Dolor</a></h6>
                    <p>Aenean semper elementum tellus, ut placerat leo. Quisque vehicula, urna sit amet.</p>
                </article>
            </li>
            <li class="one_half">
                <article><img class="imgl radius-10" src="" alt="">
                    <h6 class="heading"><a href="#">Lorem Ipsum Dolor</a></h6>
                    <p>Aenean semper elementum tellus, ut placerat leo. Quisque vehicula, urna sit amet.</p>
                </article>
            </li>
        </ul>

        <!-- / main body -->
        <div class="clear"></div>
    </main>
</div>
<div id="includedClientFeedback"></div>
<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
<div id="includedFooter"></div>

</body>
</html>