
var close_popup = document.getElementById('btn-popup'); // Assumes element with id='button'

function closePopup() {
    console.log('test');
    var div = document.getElementById('popup-login');
    var background = document.getElementById('header') 
    if (div.style.visibility !== 'hidden') {
        div.style.visibility = 'hidden';
        background.className= 'header';
    }
    else {
        div.style.visibility = 'visible';
        background.className= 'header blur-filter';
    }
};
function closePopup() {
    console.log('test');
    var div = document.getElementById('popup-login');
    var background = document.getElementById('header') 
    if (div.style.visibility !== 'hidden') {
        div.style.visibility = 'hidden';
        background.className= 'header';
    }
    else {
        div.style.visibility = 'visible';
        background.className= 'header blur-filter';
    }
};