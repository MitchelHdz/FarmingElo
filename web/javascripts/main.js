
var close_popup = document.getElementById('btn-popup'); // Assumes element with id='button'

function PopupLogin() {
    var popup_login = document.getElementById('popup-login');
    var popup_register = document.getElementById('popup-register');
    var isVisible = $( "#popup-login" ).is( ":visible" );
    var isHidden = $( "#popup-login" ).is( ":hidden" );
    $('#popup-login').toggle("slow");
        
   if(isHidden){
           $('#header').addClass('blur-filter');
           $('#main').addClass('blur-filter');
           $('#footer').addClass('blur-filter');
       }
   else if(isVisible){
           $('#header').removeClass('blur-filter');
           $('#main').removeClass('blur-filter');
           $('#footer').removeClass('blur-filter');
       }

};
function PopupRegister(){
    var popup_login = document.getElementById('popup-login');
    var popup_register = document.getElementById('popup-register');
    var isVisible = $( "#popup-register" ).is( ":visible" );
    var isHidden = $( "#popup-register" ).is( ":hidden" );
    var isVisibleLogin = $( "#popup-login" ).is( ":visible" );
    $('#popup-register').toggle("slow");
    $('#popup-login').toggle("slow");
    if(isHidden){
            $('#header').addClass('blur-filter');
            $('#main').addClass('blur-filter');
            $('#footer').addClass('blur-filter');
        }
    else if(isVisible && isVisibleLogin){
            $('#header').removeClass('blur-filter');
            $('#main').removeClass('blur-filter');
            $('#footer').removeClass('blur-filter');
        }
};
$(function() {
  $('.srch-button').click(function(){
    var $wrapper = $('.srch-wrapper'), 
        isOpen = $wrapper.hasClass('open');
    $wrapper.toggleClass('open')
      .find('.srch-input')[isOpen ? 'blur' : 'focus']();
  });
  
})