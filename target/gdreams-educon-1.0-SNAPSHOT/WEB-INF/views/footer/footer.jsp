<html lang="en">
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link rel="stylesheet" type="text/css" media="screen" href="layout/styles/layout.css"/>
    <link rel="stylesheet" type="text/css" media="screen" href="footer/styles/style.css"/>
    <link rel="stylesheet" type="text/css" media="screen" href="contact/styles/hyperlink.css"/>

    <script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
    <script type="text/javascript" src="layout/scripts/jquery.backtotop.js"></script>
    <script type="text/javascript" src="layout/scripts/jquery.mobilemenu.js"></script>
    <script type="text/javascript" src="layout/scripts/jquery.flexslider-min.js"></script>

    <%--<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">--%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script>
        $(function () {

            $("form[name='save']").on('submit', function (e) {

                e.preventDefault();
                var emailValue = document.getElementById('email').value;

                $.ajax({
                    type: 'post',
                    url: '/subscription/save',
                    cache: false, // Force requested pages not to be cached by the browser
                    processData: false, // Avoid making query string instead of JSON
                    data: $("form[name='save']").serialize(),
                    success: function () {
                        $('#myModal').find('.edit-content').html(emailValue + " is successfully Subcribed");

                        $('#myModal .edit-content').each(function () {
                            var me = $(this)
                                    , t = me.text().split(' ');
                            me.html('<span style="color: #222222; font-size: 16px; font-style: italic;">' + t.shift() + '</span> ' + t.join(' ')
                                    + '&nbsp;<img src="footer/image/right.png"/>');
                        });
                        $('#myModal .del-content').hide();

                        $('#myModal').modal('toggle');
                    },
                    error: function (e) {
                        $('#myModal').find('.edit-content').html(emailValue + " is already Subcribed");

                        $('#myModal .edit-content').each(function () {
                            var me = $(this)
                                    , t = me.text().split(' ');
                            me.html('<span style="color: #222222; font-size: 16px; font-style: italic;">' + t.shift() + '</span> ' + t.join(' ')
                                    + '&nbsp;<img src="footer/image/wrong.png"/>');
                        });

                        $('#myModal .del-content').show();
                        $('#myModal').modal('toggle');
                    }
                });

            });

        });

        $(function () {

            $("form[name='delete']").on('submit', function (e) {

                e.preventDefault();
                var emailValue = document.getElementById('emailToDelete').value;

                $.ajax({
                    type: 'post',
                    url: '/subscription/delete',
                    cache: false, // Force requested pages not to be cached by the browser
                    processData: false, // Avoid making query string instead of JSON
                    data: $("form[name='delete']").serialize(),
                    success: function () {
                        $('#myModal').find('.edit-content').html(emailValue + ", check your email address ");

                        $('#myModal .edit-content').each(function () {
                            var me = $(this)
                                    , t = me.text().split(' ');
                            me.html('<span style="color: #222222; font-size: 16px; font-style: italic;">' + t.shift() + '</span> ' + t.join(' ')
                                    + '&nbsp;<img src="footer/image/right.png"/>');
                        });
                        $('#myModal .del-content').hide();
                    },
                    error: function (e) {
                        $('#myModal').find('.edit-content').html(emailValue + " is wrong or not Subscribed");

                        $('#myModal .edit-content').each(function () {
                            var me = $(this)
                                    , t = me.text().split(' ');
                            me.html('<span style="color: #222222; font-size: 16px; font-style: italic;">' + t.shift() + '</span> ' + t.join(' ')
                                    + '&nbsp;<img src="footer/image/wrong.png"/>');
                        });
                        $('#myModal .del-content').show();
                    }
                });

            });

        });
    </script>

</head>

<body>

<div class="wrapper row4">
    <footer id="footer" class="clear">
        <!-- ################################################################################################ -->
        <div class="one_quarter first">
            <h6 class="title">Company Details</h6>
            <address class="btmspace-15">
                German Dreams<br>
                ZinzendorfStr 7<br>
                Berlin<br>
                10555
            </address>
            <ul class="nospace">
                <li class="btmspace-10"><span class="fa fa-phone"></span> ${contactPhone}</li>
                <li><span class="fa fa-envelope-o"></span> <a id="emailId"
                                                              href="mailto:${contactEmail}?Subject=Hello%20again"
                                                              target="_top">${contactEmail}</a></li>
            </ul>
        </div>
        <div class="one_quarter">
            <h6 class="title">Quick Links</h6>
            <%--<ul class="nospace linklist">--%>
            <%--<li><a href="#">Home Page</a></li>--%>
            <%--<li><a href="#">Blog</a></li>--%>
            <%--<li><a href="#">Gallery</a></li>--%>
            <%--<li><a href="#">Portfolio</a></li>--%>
            <%--<li><a href="#">Contact Us</a></li>--%>
            <%--</ul>--%>
            <ul class="nospace linklist">
                <li><a href="/">Home Page</a></li>
                <li><a href="/aboutus">About Us</a></li>
                <li><a href="/team">Team</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="/contact">Contact Us</a></li>
            </ul>
        </div>
        <div class="one_quarter">
            <h6 class="title">From The Blog</h6>
            <article>
                <h2 class="nospace"><a href="#">Lorem ipsum dolor</a></h2>
                <time class="smallfont" datetime="2045-04-06">Friday, 6<sup>th</sup> April 2045</time>
                <p>Vestibulumaccumsan egestibulum eu justo convallis augue estas aenean elit intesque sed.</p>
            </article>
        </div>
        <div class="one_quarter">
            <h6 class="title">Keep In Touch</h6>
            <form class="btmspace-30" name="save">
                <fieldset>
                    <legend>Newsletter:</legend>
                    <input type="hidden" id="enable" name="enable" value="true"/>
                    <input class="btmspace-15" type="email" name="email" id="email" required="required"
                           placeholder="Email">
                    <button type="submit" value="submit">Submit</button>
                </fieldset>
            </form>

            <!-- Subscription/newsletter Modal -->
            <div class="modal fade" id="myModal" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title ">Subscription Information</h4>
                        </div>
                        <div class="modal-body edit-content">
                        </div>
                        <div class="modal-body del-content" hidden="hidden">
                            <form name="delete">
                                Do you want to UnSubscribe?
                                <input type="hidden" id="enable" name="enable" value="false"/>
                                <input type="email" name="emailToDelete" id="emailToDelete" required="required"
                                       placeholder="Enter your Email to UnSubscribe" style="width:350px;">
                                <br/>
                                <button type="submit" value="submit">Submit</button>
                                <div class="modal-body delete-content">
                                </div>
                            </form>
                        </div>

                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                    </div>

                </div>
            </div>


            <%--<ul class="faico clear">--%>
            <%--<li><a class="faicon-facebook" href="#"><i class="fa fa-facebook"></i></a></li>--%>
            <%--<li><a class="faicon-twitter" href="#"><i class="fa fa-twitter"></i></a></li>--%>
            <%--<li><a class="faicon-linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>--%>
            <%--<li><a class="faicon-google-plus" href="#"><i class="fa fa-google-plus"></i></a></li>--%>
            <%--<li><a class="faicon-instagram" href="#"><i class="fa fa-instagram"></i></a></li>--%>
            <%--<li><a class="faicon-tumblr" href="#"><i class="fa fa-tumblr"></i></a></li>--%>
            <%--</ul>--%>
            <ul class="social-icons icon-circle icon-zoom list-unstyled list-inline">
                <li><a href="${contactFacebook}"><i class="fa fa-facebook"></i></a></li>
                <li><a href="${contactGoogleplus}"><i class="fa fa-google-plus"></i></a></li>
                <li><a href="${contactTwitter}"><i class="fa fa-twitter"></i></a></li>
                <li><a href="${contactLinkedin}"><i class="fa fa-linkedin"></i></a></li>
            </ul>

        </div>
        <!-- ################################################################################################ -->
    </footer>
</div>


<!-- ################################################################################################ -->
<div class="wrapper row5">
    <div id="copyright" class="clear">
        <!-- ################################################################################################ -->
        <p class="fl_left">Copyright &copy;

            <span id="copyrightyr">
        <script>document.getElementById('copyrightyr').appendChild(document.createTextNode(new Date().getFullYear()))</script>
    </span>

            - All Rights Reserved - <a href="/">German Dreams</a></p>

    </div>
</div>

<!-- ################################################################################################ -->
<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
<!-- ################################################################################################ -->

</body>
</html>
