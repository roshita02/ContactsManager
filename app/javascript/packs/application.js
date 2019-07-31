// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
//require('jquery')
//require('jquery_ujs')

//= require jquery
//= require jquery_ujs
//= require_tree .
// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
$(document).on('turbolinks:load', function() {
    //$(".form-group").find("#deleter:first").remove();
    //$(".form-group").find("#deleteradd:first").remove();
    $('form').on('click', '.remove_record', function(event) {
      $(this).prev('input[type=hidden]').val('1');
      $(this).closest('div').hide();
      return event.preventDefault();    
    });
  
    $('form').on('click', '.add_fields', function(event) {
      var regexp, time;
      time = new Date().getTime();
      regexp = new RegExp($(this).data('id'), 'g');
      $('.fields').append($(this).data('fields').replace(regexp, time));
      return event.preventDefault();
    });

    $('form').on('click', '.remove_record2', function(event) {
        $(this).prev('input[type=hidden]').val('1');
        $(this).closest('div').hide();
        
        return event.preventDefault();    
      });

      $('form').on('click', '.add_fields1', function(event) {
        var regexp, time;
        time = new Date().getTime();
        regexp = new RegExp($(this).data('id'), 'g');
        $('.fields2').append($(this).data('fields').replace(regexp, time));
        return event.preventDefault();
      });  

      $('.alert-dismissible').fadeOut(6000);
  });
  