// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
import { initMapbox } from '../plugins/init_mapbox';

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")




// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';


document.addEventListener('turbolinks:load', () => {
  initMapbox();
  // Call your functions here, e.g:
  // initSelect2();
});

var downArrow = document.getElementById("btn1");
var upArrow = document.getElementById("btn2");

downArrow.onclick = function () {
    'use strict';
    document.getElementById("first-list").style = "top:-620px";
    document.getElementById("second-list").style = "top:-620px";
    downArrow.style = "display:none";
    upArrow.style = "display:block";
};

upArrow.onclick = function () {
    'use strict';
    document.getElementById("first-list").style = "top:0";
    document.getElementById("second-list").style = "top:80px";
    upArrow.style = "display:none";
    downArrow.style = "display:block";
};

console.log('coucouu')







