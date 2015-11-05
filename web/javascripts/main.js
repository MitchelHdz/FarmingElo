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
        $('#nav').addClass('blur-filter');
    }
    else if(isVisible){
        $('#header').removeClass('blur-filter');
        $('#main').removeClass('blur-filter');
        $('#footer').removeClass('blur-filter');
        $('#nav').removeClass('blur-filter');
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
        $('#nav').addClass('blur-filter');
    }
    else if(isVisible && isVisibleLogin){
        $('#header').removeClass('blur-filter');
        $('#main').removeClass('blur-filter');
        $('#footer').removeClass('blur-filter');
        $('#nav').removeClass('blur-filter');
    }
};
$(function() {
    $('.srch-button').click(function(){
        var $wrapper = $('.srch-wrapper'), 
        isOpen = $wrapper.hasClass('open');
        $wrapper.toggleClass('open')
                .find('.srch-input')[isOpen ? 'blur' : 'focus']();
    });
    
});
$(function(){
    $('#profile-picture').hover(function() {
        $('#profile-picture').css({' background':
                    'linear-gradient(rgba( 33, 33, 33, 0.50), rgba(33, 33, 33, 0.50)), url(../images/profile1.jpg) no-repeat;'});
        $('#change-picture').toggle();
    }, function() {
        $('#profile-picture').css({'background': 'url(../images/profile1.jpg) no-repeat;'});
        $('#change-picture').toggle();
    }
            );
});
$(document).ready(function spin(){
    $("#config").mouseover(function(event){
        $("#config").addClass("fa-spin");
    });
    $("#config").mouseout(function(event){
        $("#config").removeClass("fa-spin");
    });
});
$(document).ready(function(){
    $('.modal-trigger').leanModal();
});

$(document).ready(function(){
  Dropzone.options.simg = {
    maxFilesize: 1,
    addRemoveLinks: true,
    dictResponseError: 'Servidor no Configurado',
    acceptedFiles: ".png,.jpg,.gif,.bmp,.jpeg",
    init:function(){
      var self = this;
      // config
      self.options.addRemoveLinks = true;
      self.options.dictRemoveFile = "Delete";
      //New file added
      self.on("addedfile", function (file) {
        console.log('new file added ', file);
      });
      // Send file starts
      self.on("sending", function (file) {
        console.log('upload started', file);
        $('.meter').show();
      });
      
      // File upload Progress
      self.on("totaluploadprogress", function (progress) {
        console.log("progress ", progress);
        $('.roller').width(progress + '%');
      });

      self.on("queuecomplete", function (progress) {
        $('.meter').delay(999).slideUp(999);
      });
      
      // On removing file
      self.on("removedfile", function (file) {
        console.log(file);
      });
    }
  };
});
