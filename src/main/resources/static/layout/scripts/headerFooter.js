/**
 * Created by Sougata on 4/24/2016.
 */
$(function () {
    $("#includedFooter").load("@routes.HeaderController.footer()");
});
$(function () {
    $("#includedHeader").load("@routes.HeaderController.header()");
});
