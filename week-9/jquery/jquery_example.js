// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){


//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'});

//RELEASE 2:
  //Add code here to select elements of the DOM
var headline = $('h1');
$(headline).css({'font-family': 'Garamond'});
var image = $('img');
$(image).css({'border': '1px solid black'})


$(image).on('mouseover', function(e) {
	e.preventDefault()
	$(this).attr('src', 'http://www.carolinanature.com/butterflies/fieryskipper80866.jpg');
});

$(image).on('mouseleave', function(e) {
	$(this).attr('src', 'dbc_logo.png');
	});

$( ".mascot" ).click(function() {
 $( this ).animate({
   width: [ "toggle", "swing" ],
   height: [ "toggle", "swing" ],
   opacity: "toggle"
 }, 5000, "linear", function() {
   $( this ).after( '<div class="mascot"> <h1>My DBC Mascot</h1> <img src="dbc_log.png"> </div>');
 });
});








}); // end of the document.ready function: do not remove or write DOM manipulation below this.