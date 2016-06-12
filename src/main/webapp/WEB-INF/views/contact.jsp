<html lang="en">
<head>
    <title>Contact</title>
    <link rel="icon" href="header/image/GermanDreams.png" type="image/x-icon"/>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link rel="stylesheet" type="text/css" media="screen" href="contact/styles/layout.css"/>
    <link rel="stylesheet" type="text/css" media="screen" href="contact/styles/hyperlink.css"/>
    <link rel="stylesheet" type="text/css" media="screen" href="contact/styles/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" media="screen" href="contact/styles/style.css"/>
    <link rel="stylesheet" type="text/css" media="screen" href="contact/styles/ekko-lightbox.min.css"/>

    <script type="text/javascript" src="contact/js/jquery.min.js"></script>
    <script type="text/javascript" src="contact/js/jquery.backtotop.js"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


    <script>
        $(function () {
            $("#includedFooter").load("/footer/loadFooter");
        });
    </script>
    <script>
        $(function () {
            $("#includedHeader").load("/header/loadHeader/contact");
        });
    </script>

    <script type="text/javascript">
        function robotcheck() {
            var a = Math.ceil(Math.random() * 10);
            var b = Math.ceil(Math.random() * 10);
            document.getElementById('a').appendChild(document.createTextNode(a))
            document.getElementById('b').appendChild(document.createTextNode(b))
        }

        function ValidBotBoot() {
            var d = document.getElementById('robot').value;
            var c = parseInt(document.getElementById('a').innerText) + parseInt(document.getElementById('b').innerText);

            if (d == c) {
                return true;
            }
            else {
                return false;
            }
        }

    </script>

    <script src="http://code.jquery.com/jquery-1.5.js"></script>
    <script>
        function countChar(val) {
            var len = val.value.length;
            if (len >= 500) {
                val.value = val.value.substring(0, 500);
            } else {
                $('#charNum').text(500 - len);
            }
        }
        ;
    </script>
    <style>
        .bottom-one {
            margin-bottom: 1mm;
        }
    </style>


    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script>
        $(function () {

            $("form[name='contactCheck']").on('submit', function (e) {

                if (!ValidBotBoot()) {
                    $('#robotError').show();
                    return false;
                }

                $('#robotError').hide();
                e.preventDefault();
                var emailValue = document.getElementById('email').value;
                var name = document.getElementById('name').value;

                $.ajax({
                    type: 'post',
                    url: '/contactus/save',
                    cache: false, // Force requested pages not to be cached by the browser
                    processData: false, // Avoid making query string instead of JSON
                    data: $("form[name='contactCheck']").serialize(),
                    success: function () {
                        $('#myModal').find('.edit-content').html(name + ", We will contact you soon");

                        $('#myModal .edit-content').each(function () {
                            var me = $(this)
                                    , t = me.text().split(',');
                            me.html('<span style="color: #222222; font-size: 16px; font-style: italic;">' + t.shift() +  ',' + '</span> ' + t.join(' ')
                                    + '&nbsp;<img src="footer/image/right.png"/>');
                        });

                        $('#myModal').modal('toggle');
                    },
                    error: function (e) {

                    }
                });


            });

        });

    </script>


</head>
<body id="top" onload="robotcheck()">

<div id="includedHeader"></div>

<div class="wrapper row3">
    <main class="container clear">
        <h2 class="sectiontitle">Thank you for contacting us</h2>
        <p class="bottom-one">
            We are here to answer any questions you may have. We'll respond as soon as we can.<br/>
            If any problem, our e-mail address is
            <i><a ID="emailId" href="mailto:${contactEmail}?Subject=Hello%20again" target="_top">${contactEmail}</a></i>
        </p>
        <ul class="nospace group">
            <form id="contactCheck" name="contactCheck">

                <li class="three_quarter first">
                    <div class="col-md-6" style="width: 48%;">
                        <fieldset class="form-group">
                            <label for="name">Your Name</label>
                            <input type="text" required="required" class="form-control" name="name" id="name"
                                   placeholder="Write a full name">
                        </fieldset>

                        <fieldset class="form-group">
                            <label for="email">Your Email</label>
                            <input type="email" required="required" class="form-control" name="email" id="email"
                                   placeholder="Enter your email">

                        </fieldset>

                        <fieldset class="form-group">
                            <label for="phone">Your Phone</label>
                            <input type="text" required="required" class="form-control" name="phone" id="phone"
                                   placeholder="Enter your phone">

                        </fieldset>

                        <fieldset class="form-group">
                            <label for="robot">
                                <span id="a" style="color: black;"></span>
                                +
                                <span id="b" style="color: black;"></span>
                                = ?
                            </label>

                            <input type="number" required="required" class="form-control" name="robot" id="robot"
                                   placeholder="Enter your answer" maxlength="2">
                            <span id="robotError" name="robotError" style="color: red; font-size: small; display: none;">Please check your answer!</span>

                        </fieldset>

                        <fieldset class="form-group">
                            <button type="submit" class="btn btn-success btn-lg" value="Submit">Submit</button>
                            <button type="reset" class="btn btn-success btn-lg">Clear</button>
                        </fieldset>
                    </div>
                    <div class="col-md-6" style="width: 52%;">

                        <fieldset class="form-group">
                            <label for="subject">Subject</label>
                            <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject">
                        </fieldset>

                        <fieldset class="form-group">
                            <label for="message">Your Message</label>
                        <textarea class="form-control" required="required" name="message" id="message" rows="5"
                                  placeholder="Write a message" onkeyup="countChar(this)"></textarea>
                            <div id="charNum"></div>
                        </fieldset>
                    </div>
                </li>

            </form>

            <!-- Subscription/newsletter Modal -->
            <div class="modal fade" id="myModal" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title ">Thank you for contacting us!</h4>
                        </div>
                        <div class="modal-body edit-content">
                        </div>

                        <div class="modal-footer">
                            <button type="button" class="btn btn-success btn-lg" data-dismiss="modal">Close</button>
                        </div>
                    </div>

                </div>
            </div>

            <li class="one_quarter">
                <article>
                    <h6 class="heading"><a href="#">Email</a></h6>
                    <p><a ID="emailId" href="mailto:${contactEmail}?Subject=Hello%20again"
                          target="_top">${contactEmail}</a></p>
                    <h6 class="heading"><a href="#">Phone</a></h6>
                    <p>${contactPhone}</p>
                    <h6 class="heading"><a href="#">Skype</a></h6>
                    <p>${contactSkype}</p>
                    <h6 class="heading"><a href="#">Hangout</a></h6>
                    <p>${contactHangout}</p>


                </article>
            </li>
        </ul>
        <div class="clear"></div>
    </main>
</div>


<div id="includedFooter"></div>
<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
</body>
</html>
