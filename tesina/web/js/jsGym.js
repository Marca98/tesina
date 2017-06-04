$( document ).ready( function(){
  $( '#loginWindow' ).animate({ 'width': '100%' }, 500)
    .delay(30)
    .animate({ 'height': '670px' },600);
  $( '.page-header, .input-group, .btn' )
    .delay(850)
    .animate({ 'opacity': '100' }, 7000);
});

/*snackbar*/

function myFunction() {
    var x = document.getElementById("snackbar")
    x.className = "show";
    setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
}

function td() {
    var tdHtml = $(this).html();
    var editableText = $("<textarea />");
    editableText.val(tdHtml);
    $(this).replaceWith(editableText);
    editableText.focus();
    // setup the blur event for this new textarea
    editableText.blur(editableTextBlurred);
}

function editableTextBlurred() {
    var html = $(this).val();
    var viewableText = $("<td>");
    viewableText.html(html);
    $(this).replaceWith(viewableText);
    // setup the click event for this new td
    viewableText.click(tdClicked);
}

$(document).ready(function() {
    $("td").click(tdClicked);
});


