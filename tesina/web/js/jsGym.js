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