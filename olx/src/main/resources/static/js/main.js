/* main.js */

$(function() {
    // toTopBtn
	$('#toTopBtn').on('click', function() {
        $('html, body').animate({scrollTop:0}, 300, 'linear');
    });
});