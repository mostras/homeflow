// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
import { initMapbox } from '../plugins/init_mapbox';

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


//= require rails-ujs
//= require ./cable.js


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

import { initFileInput } from './init_file_input';


document.addEventListener('turbolinks:load', () => {
  initMapbox();
  initFileInput();
  // Call your functions here, e.g:
  // initSelect2();
});

let list = document.querySelectorAll("#first-list > li");



window.addEventListener('load', (event) => {
    for (let i = 2; i < list.length; i++) {
    let item = list[i];
    item.classList.add("visible-task");
  };
});

let button = document.querySelector('#button-show')

button.addEventListener('click', (e) => {
  let first_li = document.querySelector('#first-list li.visible-task');
  first_li.classList.remove('visible-task')

  let second_li = document.querySelector('#first-list li.visible-task');
  second_li.classList.remove('visible-task')
  second_li.scrollIntoView();
});













