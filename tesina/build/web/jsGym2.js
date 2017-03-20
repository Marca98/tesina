$( document ).ready( function(){
  $( '#loginWindow' ).animate({ 'width': '100%' }, 500)
    .delay(30)
    .animate({ 'height': '300px' }, 500);
  $( '.page-header, .input-group, .btn' )
    .delay(850)
    .animate({ 'opacity': '100' }, 7000);
});

