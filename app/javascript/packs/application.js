require("@rails/ujs").start()
require("@rails/activestorage").start()
require("turbolinks").start()
require("channels")
//= require jquery3
//= require jquery_ujs
window.$ = $ // Caio recmommended to put this here because with js.erb files, libraries won't load.  So in the user's browser (window), it will load $, which is jquery.  The above requires are not necessary here because jquery is loaded with webpack.  This is a workaround, not ideal, but works for Caio all the time...

import "bootstrap";
import "cocoon";

// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
