// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import * as bootstrap from "bootstrap"
import "trix"
import "@rails/actiontext"
// import "./src/jquery"
import "@nathanvda/cocoon"
import "cocoon"


import jquery from "jquery"
window.jQuery = jquery
window.$ = jquery

// jquery Goes here


$(function(){
  console.log("jquery is running")
  console.log(2+3)
})